import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

import 'package:niku/objects/objects.dart';
import 'package:niku/extra/extra.dart';

extension NikuTransform on Widget {
  Niku get niku => Niku(this);
}

const _empty = SizedBox.shrink();

// ignore: must_be_immutable
class Niku extends StatelessWidget {
  Widget widget;
  Key? key;

  Niku([this.widget = const SizedBox.shrink(), this.key]) : super(key: key);

  List<Widget Function(Widget)> _$parent = [];

  Widget? get _latest => _$parent.isNotEmpty ? _$parent.last(_empty) : null;
  void _add(Widget Function(Widget) builder) => _$parent.add(builder);
  void _replace(Widget Function(Widget) builder) =>
      _$parent[_$parent.length - 1] = builder;

  @override
  build(context) {
    Widget composed = widget;

    if (key != null) return SizedBox(key: key ?? widget.key, child: composed);

    return composed;
  }

  // ? Only use in debugging Tempestissimo, will be removed on stable
  // $debugDescribeProperty() {
  //   print("\n");
  //   print("${widget.key ?? key}: ${_$parent.length} properties");
  //   _$parent.forEach((v) {
  //     print(" - ${v(_empty)}");
  //   });
  // }
}

typedef UseNikuCallback<T> = T Function(T);

extension PropertyBuilder on Niku {
  _applyPadding({
    double top = 0,
    double left = 0,
    double bottom = 0,
    double right = 0,
  }) {
    final padding = (_latest as Padding).padding as EdgeInsets;
    final _top = top + padding.top;
    final _left = left + padding.left;
    final _bottom = bottom + padding.bottom;
    final _right = right + padding.right;

    _replace(
      (w) => Padding(
        child: w,
        padding: EdgeInsets.only(
          top: _top,
          left: _left,
          bottom: _bottom,
          right: _right,
        ),
      ),
    );
  }

  // I'm actually surprised that Flutter implemented margin by assigning it to padding.
  set margin(EdgeInsets v) => padding = v;
  set padding(EdgeInsets v) {
    if (_latest is Padding)
      return _applyPadding(
        top: v.top,
        bottom: v.bottom,
        left: v.left,
        right: v.right,
      );

    _add((w) => Padding(padding: v, child: w));
  }

  set nikuMargin(UseNikuCallback<NikuEdgeInsets> cb) => nikuPadding = cb;
  set nikuPadding(UseNikuCallback<NikuEdgeInsets> cb) =>
      padding = cb(NikuEdgeInsets()).value;

  set m(double v) => p = v;
  set p(double v) {
    if (_latest is Padding)
      return _applyPadding(top: v, left: v, bottom: v, right: v);

    _add((w) => Padding(padding: EdgeInsets.all(v), child: w));
  }

  set mx(double v) => px = v;
  set px(double v) {
    if (_latest is Padding) return _applyPadding(left: v, right: v);

    _add(
      (w) => Padding(padding: EdgeInsets.symmetric(horizontal: v), child: w),
    );
  }

  set my(double v) => py = v;
  set py(double v) {
    if (_latest is Padding) return _applyPadding(top: v, bottom: v);

    _add(
      (w) => Padding(padding: EdgeInsets.symmetric(vertical: v), child: w),
    );
  }

  set mt(double v) => pt = v;
  set pt(double v) {
    if (_latest is Padding) return _applyPadding(top: v);

    _add((w) => Padding(padding: EdgeInsets.only(top: v), child: w));
  }

  set mb(double v) => pb = v;
  set pb(double v) {
    if (_latest is Padding) return _applyPadding(bottom: v);

    _add((w) => Padding(padding: EdgeInsets.only(bottom: v), child: w));
  }

  set ml(double v) => pl = v;
  set pl(double v) {
    if (_latest is Padding) return _applyPadding(left: v);

    _add((w) => Padding(padding: EdgeInsets.only(left: v), child: w));
  }

  set mr(double v) => pr = v;
  set pr(double v) {
    if (_latest is Padding) return _applyPadding(right: v);

    _add((w) => Padding(padding: EdgeInsets.only(right: v), child: w));
  }

  set align(AlignmentGeometry v) => _add((w) => Align(alignment: v, child: w));
  void get topLeft =>
      _add((w) => Align(alignment: Alignment.topLeft, child: w));
  void get topCenter =>
      _add((w) => Align(alignment: Alignment.topCenter, child: w));
  void get topRight =>
      _add((w) => Align(alignment: Alignment.topRight, child: w));
  void get centerLeft =>
      _add((w) => Align(alignment: Alignment.centerLeft, child: w));
  void get center => _add((w) => Center(child: w));
  void get centerRight =>
      _add((w) => Align(alignment: Alignment.centerRight, child: w));
  void get bottomLeft =>
      _add((w) => Align(alignment: Alignment.bottomLeft, child: w));
  void get bottomCenter =>
      _add((w) => Align(alignment: Alignment.bottomCenter, child: w));
  void get bottomRight =>
      _add((w) => Align(alignment: Alignment.bottomRight, child: w));

  void get fill => fullSize;
  void get fullSize => _add((w) => SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: w,
      ));

  void get wFull => fullWidth;
  void get w100 => fullWidth;
  void get fullWidth {
    final l = _latest;

    if (l is SizedBox)
      return _replace((w) => SizedBox(
            width: double.infinity,
            height: l.height,
            child: w,
          ));

    _add((w) => SizedBox(width: double.infinity, child: w));
  }

  void get hFull => fullHeight;
  void get h100 => fullHeight;
  void get fullHeight {
    final l = _latest;

    if (l is SizedBox)
      return _replace((w) => SizedBox(
            width: l.width ?? 0,
            height: double.infinity,
            child: w,
          ));

    _add((w) => SizedBox(height: double.infinity, child: w));
  }

  set aspect(double v) => aspectRatio = v;
  set ratio(double v) => aspectRatio = v;
  set aspectRatio(double aspectRatio) =>
      _add((w) => AspectRatio(aspectRatio: aspectRatio, child: w));

  set sizePercent(List<double> v) => fractionSize = [v[0] / 100, v[1] / 100];
  set fractionSize(List<double> v) => _add(
        (w) => FractionallySizedBox(
          widthFactor: v[0],
          heightFactor: v[1],
          child: w,
        ),
      );

  set fractionW(double v) => fractionWidth = v;
  set fw(double v) => fractionWidth = v;
  set wFactor(double v) => fractionWidth = v;
  set widthPercent(double v) => fractionWidth = v / 100;
  set wPercent(double v) => fractionWidth = v / 100;
  set fractionWidth(double v) {
    final l = _latest;

    if (l is FractionallySizedBox)
      return _replace((w) => FractionallySizedBox(
            widthFactor: v,
            heightFactor: l.heightFactor,
            child: w,
          ));

    _add((w) => FractionallySizedBox(widthFactor: v, child: w));
  }

  set fractionH(double v) => fractionHeight = v;
  set hFactor(double v) =>
      _add((w) => FractionallySizedBox(heightFactor: v, child: w));
  set fh(double v) => fractionHeight = v;
  set heightPercent(double v) => fractionHeight = v / 100;
  set hPercent(double v) => fractionHeight = v / 100;
  set fractionHeight(double v) {
    final l = _latest;

    if (l is FractionallySizedBox)
      return _replace((w) => FractionallySizedBox(
            widthFactor: l.widthFactor,
            heightFactor: v,
            child: w,
          ));

    _add((w) => FractionallySizedBox(heightFactor: v, child: w));
  }

  _applyConstraints({
    double? minWidth,
    double? maxWidth,
    double? minHeight,
    double? maxHeight,
  }) {
    final constraints = (_latest as ConstrainedBox).constraints;
    final _maxWidth = maxWidth ?? constraints.maxWidth;
    final _minWidth = minWidth ?? constraints.minWidth;
    final _maxHeight = maxHeight ?? constraints.maxHeight;
    final _minHeight = minHeight ?? constraints.minHeight;

    _replace(
      (w) => ConstrainedBox(
        child: w,
        constraints: BoxConstraints(
          maxWidth: _maxWidth,
          minWidth: _minWidth,
          maxHeight: _maxHeight,
          minHeight: _minHeight,
        ),
      ),
    );
  }

  set constraints(BoxConstraints v) {
    if (!(_latest is ConstrainedBox))
      return _applyConstraints(
        maxWidth: !v.maxWidth.isFinite ? v.maxWidth : null,
        maxHeight: !v.maxWidth.isFinite ? v.maxWidth : null,
        minWidth: v.minWidth != 0 ? v.minWidth : null,
        minHeight: v.minHeight != 0 ? v.minHeight : null,
      );

    _add((w) => ConstrainedBox(constraints: v, child: w));
  }

  set nikuConstraints(UseNikuCallback<NikuBoxConstraints> cb) =>
      constraints = cb(NikuBoxConstraints()).value;

  set max(List<double> v) => maxSize = v;
  set maxSize(List<double> v) {
    if (!(_latest is ConstrainedBox))
      return _applyConstraints(
        maxWidth: v[0],
        maxHeight: v[1],
      );

    _add(
      (w) => ConstrainedBox(
        constraints: BoxConstraints(maxWidth: v[0], maxHeight: v[1]),
        child: w,
      ),
    );
  }

  set min(List<double> v) => minSize = v;
  set minSize(List<double> v) {
    if (_latest is ConstrainedBox)
      return _applyConstraints(
        minWidth: v[0],
        maxWidth: v[1],
      );

    _add(
      (w) => ConstrainedBox(
        constraints: BoxConstraints(maxWidth: v[0], maxHeight: v[1]),
        child: w,
      ),
    );
  }

  set maxW(double v) => maxWidth = v;
  set wMax(double v) => maxWidth = v;
  set maxWidth(double v) {
    if (_latest is ConstrainedBox) return _applyConstraints(maxWidth: v);

    return _add(
      (w) => ConstrainedBox(
        constraints: BoxConstraints(maxWidth: v),
        child: w,
      ),
    );
  }

  set maxH(double v) => maxHeight = v;
  set hMax(double v) => maxHeight = v;
  set maxHeight(double v) {
    if (_latest is ConstrainedBox) return _applyConstraints(maxHeight: v);

    _add(
      (w) => ConstrainedBox(
        constraints: BoxConstraints(maxHeight: v),
        child: w,
      ),
    );
  }

  set minW(double v) => minWidth = v;
  set wMin(double v) => minWidth = v;
  set minWidth(double v) {
    if (_latest is ConstrainedBox) return _applyConstraints(minWidth: v);

    _add((w) => ConstrainedBox(
          constraints: BoxConstraints(minWidth: v),
          child: w,
        ));
  }

  set minH(double v) => minHeight = v;
  set hMin(double v) => minHeight = v;
  set minHeight(double v) {
    if (_latest is ConstrainedBox) return _applyConstraints(minHeight: v);

    _add((w) => ConstrainedBox(
          constraints: BoxConstraints(minHeight: v),
          child: w,
        ));
  }

  set size(List<double> v) =>
      _add((w) => SizedBox(width: v[0], height: v[1], child: w));

  set w(double v) => width = v;
  set width(double v) {
    final l = _latest;

    if (l is SizedBox)
      return _replace((w) => SizedBox(
            width: v,
            height: l.height,
            child: w,
          ));

    _add((w) => SizedBox(width: v, child: w));
  }

  set h(double v) => height = v;
  set height(double v) {
    final l = _latest;

    if (l is SizedBox)
      return _replace((w) => SizedBox(
            width: l.width,
            height: v,
            child: w,
          ));

    _add((w) => SizedBox(height: v, child: w));
  }

  void get fitted => _add((w) => FittedBox(child: w));
  void get expanded => _add((w) => Expanded(child: w));

  set bg(Color v) => _add((w) => ColoredBox(color: v, child: w));
  set backgroundColor(Color v) => _add((w) => ColoredBox(color: v, child: w));

  set opacity(double v) => _add((w) => Opacity(opacity: v, child: w));

  double get rounded => rounded = 999999.0;
  set rounded(double v) => _add(
        (w) => ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(v)),
          child: w,
        ),
      );

  set borderRadius(BorderRadius v) => _add(
        (w) => ClipRRect(
          borderRadius: v,
          child: w,
        ),
      );

  set boxDecoration(BoxDecoration v) =>
      _add((w) => DecoratedBox(decoration: v, child: w));

  set decorated(BoxDecoration v) =>
      _add((w) => DecoratedBox(decoration: v, child: w));

  set hero(String v) => _add((w) => Hero(tag: v, child: w));
  set heroTag(String v) => _add((w) => Hero(tag: v, child: w));

  set ignorePointer(bool v) =>
      _add((w) => IgnorePointer(child: w, ignoring: v));
  set absorbPointer(bool v) =>
      _add((w) => AbsorbPointer(child: w, absorbing: v));

  set tooltip(String v) => _add((w) => Tooltip(message: v, child: w));
  set tip(String v) => _add((w) => Tooltip(message: v, child: w));

  set matrix4(Matrix4 v) => _add((w) => Transform(transform: v, child: w));
  set rotate(double v) => _add((w) => Transform.rotate(angle: v, child: w));
  set scale(double v) => _add((w) => Transform.scale(scale: v, child: w));
  set translate(List<double> v) =>
      _add((w) => Transform.translate(offset: Offset(v[0], v[1]), child: w));
  set translateX(double v) =>
      _add((w) => Transform.translate(offset: Offset(v, 0), child: w));
  set translateY(double v) =>
      _add((w) => Transform.translate(offset: Offset(0, v), child: w));

  void useGesture({
    void Function(TapDownDetails)? tapDown,
    void Function(TapUpDetails)? tapUp,
    VoidCallback? tap,
    VoidCallback? tapCancel,
    VoidCallback? secondaryTap,
    void Function(TapDownDetails)? secondaryTapDown,
    void Function(TapUpDetails)? secondaryTapUp,
    VoidCallback? secondaryTapCancel,
    void Function(TapDownDetails)? tertiaryTapDown,
    void Function(TapUpDetails)? tertiaryTapUp,
    VoidCallback? tertiaryTapCancel,
    void Function(TapDownDetails)? doubleTapDown,
    VoidCallback? doubleTap,
    VoidCallback? doubleTapCancel,
    VoidCallback? longPress,
    void Function(LongPressStartDetails)? longPressStart,
    void Function(LongPressMoveUpdateDetails)? longPressMoveUpdate,
    VoidCallback? longPressUp,
    void Function(LongPressEndDetails)? longPressEnd,
    VoidCallback? secondaryLongPress,
    void Function(LongPressStartDetails)? secondaryLongPressStart,
    void Function(LongPressMoveUpdateDetails)? secondaryLongPressMoveUpdate,
    VoidCallback? secondaryLongPressUp,
    void Function(LongPressEndDetails)? secondaryLongPressEnd,
    void Function(DragDownDetails)? verticalDragDown,
    void Function(DragStartDetails)? verticalDragStart,
    void Function(DragUpdateDetails)? verticalDragUpdate,
    void Function(DragEndDetails)? verticalDragEnd,
    VoidCallback? verticalDragCancel,
    void Function(DragDownDetails)? horizontalDragDown,
    void Function(DragStartDetails)? horizontalDragStart,
    void Function(DragUpdateDetails)? horizontalDragUpdate,
    void Function(DragEndDetails)? horizontalDragEnd,
    VoidCallback? horizontalDragCancel,
    void Function(ForcePressDetails)? forcePressStart,
    void Function(ForcePressDetails)? forcePressPeak,
    void Function(ForcePressDetails)? forcePressUpdate,
    void Function(ForcePressDetails)? forcePressEnd,
    void Function(DragDownDetails)? panDown,
    void Function(DragStartDetails)? panStart,
    void Function(DragUpdateDetails)? panUpdate,
    void Function(DragEndDetails)? panEnd,
    VoidCallback? panCancel,
    void Function(ScaleStartDetails)? scaleStart,
    void Function(ScaleUpdateDetails)? scaleUpdate,
    void Function(ScaleEndDetails)? scaleEnd,
  }) =>
      _add((w) => GestureDetector(
            onTapDown: tapDown,
            onTapUp: tapUp,
            onTap: tap,
            onTapCancel: tapCancel,
            onSecondaryTap: secondaryTap,
            onSecondaryTapDown: secondaryTapDown,
            onSecondaryTapUp: secondaryTapUp,
            onSecondaryTapCancel: secondaryTapCancel,
            onTertiaryTapDown: tertiaryTapDown,
            onTertiaryTapUp: tertiaryTapUp,
            onTertiaryTapCancel: tertiaryTapCancel,
            onDoubleTapDown: doubleTapDown,
            onDoubleTap: doubleTap,
            onDoubleTapCancel: doubleTapCancel,
            onLongPress: longPress,
            onLongPressStart: longPressStart,
            onLongPressMoveUpdate: longPressMoveUpdate,
            onLongPressUp: longPressUp,
            onLongPressEnd: longPressEnd,
            onSecondaryLongPress: secondaryLongPress,
            onSecondaryLongPressStart: secondaryLongPressStart,
            onSecondaryLongPressMoveUpdate: secondaryLongPressMoveUpdate,
            onSecondaryLongPressUp: secondaryLongPressUp,
            onSecondaryLongPressEnd: secondaryLongPressEnd,
            onVerticalDragDown: verticalDragDown,
            onVerticalDragStart: verticalDragStart,
            onVerticalDragUpdate: verticalDragUpdate,
            onVerticalDragEnd: verticalDragEnd,
            onVerticalDragCancel: verticalDragCancel,
            onHorizontalDragDown: horizontalDragDown,
            onHorizontalDragStart: horizontalDragStart,
            onHorizontalDragUpdate: horizontalDragUpdate,
            onHorizontalDragEnd: horizontalDragEnd,
            onHorizontalDragCancel: horizontalDragCancel,
            onForcePressStart: forcePressStart,
            onForcePressPeak: forcePressPeak,
            onForcePressUpdate: forcePressUpdate,
            onForcePressEnd: forcePressEnd,
            onPanDown: panDown,
            onPanStart: panStart,
            onPanUpdate: panUpdate,
            onPanEnd: panEnd,
            onPanCancel: panCancel,
            onScaleStart: scaleStart,
            onScaleUpdate: scaleUpdate,
            onScaleEnd: scaleEnd,
            child: w,
          ));

  set border(Border v) {
    final double? rounded = 0;

    _add(
      (w) => DecoratedBox(
          decoration: BoxDecoration(
            border: v,
            borderRadius: rounded != null
                ? BorderRadius.all(
                    Radius.circular(rounded),
                  )
                : null,
          ),
          child: w),
    );
  }

  useBorder({
    Color? color,
    double? width,
    BorderStyle? style,
  }) {
    final double? rounded = 0;

    _add((w) => DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(
              color: color ?? Colors.transparent,
              width: width ?? 0,
              style: style ?? BorderStyle.solid,
            ),
            borderRadius: rounded != null
                ? BorderRadius.all(
                    Radius.circular(rounded),
                  )
                : null,
          ),
          child: w,
        ));
  }

  useRoundedBorder({
    double? rounded,
    Color? color,
    double? width,
    BorderStyle? style,
  }) =>
      _add((w) => DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(rounded ?? 99999)),
              border: Border.all(
                color: color ?? Colors.transparent,
                width: width ?? 0,
                style: style ?? BorderStyle.solid,
              ),
            ),
            child: w,
          ));

  set backdropFilter(ImageFilter v) =>
      _add((w) => BackdropFilter(filter: v, child: w));

  set bgBlur(double v) => _add((w) =>
      BackdropFilter(filter: ImageFilter.blur(sigmaX: v, sigmaY: v), child: w));

  Clip get rect {
    _add((w) => ClipRect(child: w));

    return Clip.hardEdge;
  }

  set rect(Clip clip) => _add(
        (w) => ClipRect(
          child: w,
          clipBehavior: clip,
        ),
      );

  Clip get oval {
    _add((w) => ClipOval(child: w));

    return Clip.hardEdge;
  }

  set oval(Clip clip) => _add(
        (w) => ClipRect(
          child: w,
          clipBehavior: clip,
        ),
      );

  _applyPositioned({
    double? top,
    double? left,
    double? bottom,
    double? right,
  }) {
    final position = _latest as Positioned;
    final _top = top ?? position.top;
    final _left = left ?? position.left;
    final _bottom = bottom ?? position.bottom;
    final _right = right ?? position.right;

    _replace(
      (w) => Positioned(
        child: w,
        top: _top,
        left: _left,
        bottom: _bottom,
        right: _right,
      ),
    );
  }

  set top(double v) {
    if (_latest is Positioned)
      _applyPositioned(top: v);
    else
      _add((w) => Positioned(top: v, child: w));
  }

  set left(double v) {
    if (_latest is Positioned)
      _applyPositioned(left: v);
    else
      _add((w) => Positioned(left: v, child: w));
  }

  set bottom(double v) {
    if (_latest is Positioned)
      _applyPositioned(bottom: v);
    else
      _add((w) => Positioned(bottom: v, child: w));
  }

  set right(double v) {
    if (_latest is Positioned)
      _applyPositioned(right: v);
    else
      _add((w) => Positioned(right: v, child: w));
  }

  set flex(int v) => _add((w) => Flexible(flex: v, child: w));
  int get flex {
    _add((w) => Flexible(child: w));

    return 1;
  }

  set shadow(BoxShadow v) {
    final double? rounded = 0;

    _add(
      (w) => DecoratedBox(
        child: w,
        decoration: BoxDecoration(
          boxShadow: [v],
          borderRadius: rounded != null
              ? BorderRadius.all(
                  Radius.circular(rounded),
                )
              : null,
        ),
      ),
    );
  }

  void useShadow({
    Color color = const Color(0xFF000000),
    Offset offset = Offset.zero,
    double blurRadius = 0.0,
    double spreadRadius = 0.0,
    BlurStyle blurStyle = BlurStyle.normal,
  }) =>
      _add(
        (w) => DecoratedBox(
          child: w,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: color,
                offset: offset,
                blurRadius: blurRadius,
                spreadRadius: spreadRadius,
                blurStyle: blurStyle,
              ),
            ],
          ),
        ),
      );

  set shadows(List<BoxShadow> v) {
    final double? rounded = 0;

    _add(
      (w) => DecoratedBox(
        child: w,
        decoration: BoxDecoration(
          boxShadow: v,
          borderRadius: rounded != null
              ? BorderRadius.all(
                  Radius.circular(rounded),
                )
              : null,
        ),
      ),
    );
  }

  void useRoundShadow({
    required double rounded,
    required List<BoxShadow> shadows,
  }) =>
      _add(
        (w) => DecoratedBox(
          child: w,
          decoration: BoxDecoration(
            boxShadow: shadows,
            borderRadius: BorderRadius.circular(rounded),
          ),
        ),
      );

  void useAnimationBuilder({
    required Widget Function(BuildContext context, Widget child) builder,
    required AnimationController animation,
  }) =>
      _add(
        (w) => AnimatedBuilder(
          animation: animation,
          builder: (context, child) => builder(context, w),
          child: w,
        ),
      );

  set formKey(Key v) => _add((w) => Form(key: v, child: w));
  void useForm({
    Key? key,
    AutovalidateMode? autovalidateMode,
    Future<bool> Function()? onWillPop,
    void Function()? onChanged,
  }) =>
      _add(
        (w) => Form(
          key: key,
          child: w,
          autovalidateMode: autovalidateMode,
          onWillPop: onWillPop,
          onChanged: onChanged,
        ),
      );

  void get scrollbar => _add((w) => Scrollbar(child: w));

  void useScrollbar({
    ScrollController? controller,
    bool? isAlwaysShown,
    bool? showTrackOnHover,
    double? hoverThickness,
    double? thickness,
    Radius? radius,
    ScrollNotificationPredicate? notificationPredicate,
  }) =>
      _add((w) => Scrollbar(
            child: w,
            controller: controller,
            isAlwaysShown: isAlwaysShown,
            hoverThickness: hoverThickness,
            thickness: thickness,
            radius: radius,
            notificationPredicate: notificationPredicate,
          ));

  void get scrollable => _add((w) => SingleChildScrollView(child: w));

  void useScrollView({
    ScrollController? controller,
    Axis scrollDirection = Axis.vertical,
    bool? primary,
    bool reverse = false,
    ScrollPhysics? scrollPhysics,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    String? restorationId,
  }) =>
      _add((w) => SingleChildScrollView(
            child: w,
            controller: controller,
            scrollDirection: scrollDirection,
            primary: primary,
            reverse: reverse,
            physics: scrollPhysics,
            dragStartBehavior: dragStartBehavior,
            restorationId: restorationId,
          ));

  set theme(ThemeData v) => _add((w) => Theme(data: v, child: w));

  set visible(bool visibility) => _add((w) => Visibility(
        visible: visibility,
        child: w,
      ));

  get hidden => _add((w) => Visibility(child: w, visible: false));

  void useChild(Widget Function(Niku child) builder) =>
      _add((w) => builder(w.niku));

  void get safeArea => _add((w) => SafeArea(child: w));

  void get safeAreaX =>
      _add((w) => SafeArea(child: w, top: false, bottom: false));
  void get safeAreaY =>
      _add((w) => SafeArea(child: w, left: false, right: false));

  void get safeAreaTop =>
      _add((w) => SafeArea(child: w, bottom: false, left: false, right: false));
  void get safeAreaBottom =>
      _add((w) => SafeArea(child: w, top: false, left: false, right: false));
  void get safeAreaLeft =>
      _add((w) => SafeArea(child: w, right: false, top: false, bottom: false));
  void get safeAreaRight =>
      _add((w) => SafeArea(child: w, left: false, top: false, bottom: false));

  void get safe => _add((w) => SafeArea(child: w));

  void get safeX => _add((w) => SafeArea(child: w, top: false, bottom: false));
  void get safeY => _add((w) => SafeArea(child: w, left: false, right: false));

  void get safeTop =>
      _add((w) => SafeArea(child: w, bottom: false, left: false, right: false));
  void get safeBottom =>
      _add((w) => SafeArea(child: w, top: false, left: false, right: false));
  void get safeLeft =>
      _add((w) => SafeArea(child: w, right: false, top: false, bottom: false));
  void get safeRight =>
      _add((w) => SafeArea(child: w, left: false, top: false, bottom: false));

  set gradient(Gradient v) => _add(
      (w) => DecoratedBox(decoration: BoxDecoration(gradient: v), child: w));

  set quarterTurns(int turns) => _add((w) => RotatedBox(
        quarterTurns: turns,
        child: w,
      ));

  set elevation(double elevation) => _add((w) => Material(
        elevation: elevation,
        child: w,
      ));

  set splash(Color color) {
    final highlightColor = Colors.transparent;

    _add(
      (w) => InkWell(
        highlightColor: highlightColor,
        splashColor: color,
        child: w,
        onTap: () {},
      ),
    );
  }

  Color get highlight {
    final splashColor = Colors.transparent;

    _add(
      (w) => InkWell(
        child: w,
        splashColor: splashColor,
        onTap: () {},
      ),
    );

    return Colors.transparent;
  }

  set highlight(Color color) {
    final splashColor = Colors.transparent;

    _add(
      (w) => InkWell(
        highlightColor: Colors.transparent,
        splashColor: splashColor,
        child: w,
        onTap: () {},
      ),
    );
  }

  set useSplash(Color color) {
    _add(
      (w) => InkWell(
        splashColor: color,
        child: w,
        onTap: () {},
      ),
    );
  }

  void get sliverToBox => _add((w) => SliverToBoxAdapter(child: w));

  set on(List<dynamic> dependencies) =>
      useChild((child) => NikuOn(() => child, dependencies));

  List<dynamic> get on {
    useChild((child) => NikuOn(() => child, []));

    return [];
  }

  void get freezed => useChild((child) => NikuOn(() => child, []));

  void useQuery(Function(Niku child, MediaQueryData constraints) builder) {
    useChild(
      (child) => Builder(
        builder: (context) => builder(
          child.build(context).niku,
          MediaQuery.of(context),
        ),
      ),
    );
  }

  void useSize(Function(Niku child, Size constraints) builder) {
    useChild(
      (child) => LayoutBuilder(
        builder: (context, constraints) => builder(
          child.build(context).niku,
          Size(constraints.maxWidth, constraints.maxHeight),
        ),
      ),
    );
  }

  /// ```dart
  /// void useScreen({
  ///   // > 568px
  ///   Widget Function(Niku)? base,
  ///   // 568 - 640px
  ///   Widget Function(Niku)? xs,
  ///   // 640 - 768px
  ///   Widget Function(Niku)? sm,
  ///   // 768 - 920px
  ///   Widget Function(Niku)? md,
  ///   // 920 - 1024px
  ///   Widget Function(Niku)? lg,
  ///   // > 1024px
  ///   Widget Function(Niku)? xl,
  /// })
  /// ```
  void useScreen({
    // > 568px
    Widget Function(Niku)? base,
    // 568 - 640px
    Widget Function(Niku)? xs,
    // 640 - 768px
    Widget Function(Niku)? sm,
    // 768 - 920px
    Widget Function(Niku)? md,
    // 920 - 1024px
    Widget Function(Niku)? lg,
    // > 1024px
    Widget Function(Niku)? xl,
  }) =>
      _add(
        (w) => NikuScreen(
          base: base,
          xs: xs,
          sm: sm,
          md: md,
          lg: lg,
          xl: xl,
          child: w,
        ),
      );

  void useDarkMode(Widget Function(Niku, bool) builder) {
    useChild(
      (child) => Builder(
        builder: (context) => builder(
          child.build(context).niku,
          Theme.of(context).brightness == Brightness.dark,
        ),
      ),
    );
  }

  void useThemeSelector({
    required Widget Function(Niku) light,
    required Widget Function(Niku) dark,
  }) {
    useChild(
      (child) => Builder(
        builder: (context) => Theme.of(context).brightness == Brightness.dark
            ? dark(child.build(context).niku)
            : light(
                child.build(context).niku,
              ),
      ),
    );
  }

  void usePlatform({
    required Widget Function(Niku) base,
    required Widget Function(Niku) android,
    required Widget Function(Niku) iOS,
    required Widget Function(Niku) fuchsia,
    required Widget Function(Niku) linux,
    required Widget Function(Niku) macOS,
    required Widget Function(Niku) windows,
    required Widget Function(Niku) web,
  }) {
    useChild(
      (child) => Builder(
        builder: (context) {
          final c = child.build(context).niku;

          if (kIsWeb) return web(c);

          switch (Theme.of(context).platform) {
            case TargetPlatform.android:
              return android(c);
            case TargetPlatform.iOS:
              return iOS(c);
            case TargetPlatform.fuchsia:
              return fuchsia(c);
            case TargetPlatform.linux:
              return linux(c);
            case TargetPlatform.macOS:
              return macOS(c);
            case TargetPlatform.windows:
              return windows(c);
            default:
              return base(c);
          }
        },
      ),
    );
  }

  void useAnimated<T>({
    Key? key,
    required Widget Function(Niku niku, T value) builder,
    required T value,
    Duration duration = const Duration(milliseconds: 200),
    Curve curve = Curves.linear,
  }) {
    _add(
      (w) => NikuAnimated<T>(
        builder: builder,
        value: value,
        duration: duration,
        curve: curve,
        child: w,
      ),
    );
  }

  void useTransition<T>({
    Key? key,
    required T value,
    required Widget Function(Niku niku, T value) builder,
    Duration duration = const Duration(milliseconds: 200),
    Curve curve = Curves.linear,
  }) {
    _add(
      (w) => NikuAnimated<T>(
        builder: builder,
        value: value,
        duration: duration,
        curve: curve,
        child: w,
      ),
    );
  }

  void useTransitions({
    Key? key,
    required List dependencies,
    required Widget Function(Niku niku, List dependencies) builder,
    Duration duration = const Duration(milliseconds: 200),
    Curve curve = Curves.linear,
  }) {
    _add(
      (w) => NikuAnimateds(
        builder: builder,
        dependencies: dependencies,
        duration: duration,
        curve: curve,
        child: w,
      ),
    );
  }
}
