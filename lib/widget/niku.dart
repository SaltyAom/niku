// ignore_for_file: must_be_immutable
import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

import 'package:niku/objects/objects.dart';
import 'package:niku/extra/extra.dart';

extension NikuTransform on Widget {
  Niku get niku => Niku(this);
}

// ? Tempest Engine
class Niku extends StatelessWidget {
  Widget widget;
  Key? key;

  Niku([this.widget = const SizedBox.shrink(), this.key]) : super(key: key);

  List<Widget Function(Widget)> $parent = [];
  // List<Widget Function(Widget)> _memo = [];
  List<void Function()> _lazyExecutor = [];

  $merge(Niku others) => useChild((w) => others..widget = w);

  @override
  build(context) {
    Widget composed = widget;

    final total = _lazyExecutor.length;
    for (int i = 0; i <= total; i++) {
      _lazyExecutor[i]();
      composed = $parent[i](composed);
    }

    if (key != null) return SizedBox(key: key ?? widget.key, child: composed);

    return composed;
  }
}

typedef UseNikuCallback<T> = T Function(T);

extension PropertyBuilder on Niku {
  Widget? get _latest =>
      $parent.isNotEmpty ? $parent.last(SizedBox.shrink()) : null;
  int get _lastIndex => $parent.length - 1;
  void _add(Widget Function(Widget) builder) => $parent.add(builder);
  void _replace(Widget Function(Widget) builder) =>
      $parent[_lastIndex] = builder;
  bool get $isEmpty => $parent.length == 0;

  void $lazy(void Function() builder) => _lazyExecutor.add(builder);

  // ? Only use in debugging Tempestissimo, will be removed on stable
  $debugDescribeProperty() {
    $parent.forEach((v) {
      print(" - ${v(SizedBox.shrink())}");
    });
  }

  void _applyPadding(
    EdgeInsetsGeometry latest, {
    double top = 0,
    double left = 0,
    double bottom = 0,
    double right = 0,
  }) {
    _replace((w) {
      final padding = latest as EdgeInsets;
      final _top = top + padding.top;
      final _left = left + padding.left;
      final _bottom = bottom + padding.bottom;
      final _right = right + padding.right;

      return Padding(
        child: w,
        padding: EdgeInsets.only(
          top: _top,
          left: _left,
          bottom: _bottom,
          right: _right,
        ),
      );
    });
  }

  // I'm actually surprised that Flutter implemented margin by assigning it to padding.
  set margin(EdgeInsets v) => padding = v;
  set padding(EdgeInsets v) {
    $lazy(() {
      final l = _latest;

      if (l is Padding)
        return _applyPadding(
          l.padding,
          top: v.top,
          bottom: v.bottom,
          left: v.left,
          right: v.right,
        );

      _add((w) => Padding(padding: v, child: w));
    });
  }

  set nikuMargin(UseNikuCallback<NikuEdgeInsets> cb) =>
      $lazy(() => nikuPadding = cb);
  set nikuPadding(UseNikuCallback<NikuEdgeInsets> cb) =>
      $lazy(() => padding = cb(NikuEdgeInsets()).value);

  set m(double v) => p = v;
  set p(double v) {
    $lazy(() {
      final l = _latest;

      if (l is Padding)
        _applyPadding(l.padding, top: v, left: v, bottom: v, right: v);

      _add((w) => Padding(padding: EdgeInsets.all(v), child: w));
    });
  }

  set mx(double v) => px = v;
  set px(double v) {
    $lazy(() {
      final l = _latest;

      if (l is Padding) return _applyPadding(l.padding, left: v, right: v);

      _add(
        (w) => Padding(padding: EdgeInsets.symmetric(horizontal: v), child: w),
      );
    });
  }

  set my(double v) => py = v;
  set py(double v) {
    $lazy(() {
      final l = _latest;

      if (l is Padding) return _applyPadding(l.padding, top: v, bottom: v);

      _add(
        (w) => Padding(padding: EdgeInsets.symmetric(vertical: v), child: w),
      );
    });
  }

  set mt(double v) => pt = v;
  set pt(double v) {
    $lazy(() {
      final l = _latest;

      if (l is Padding) return _applyPadding(l.padding, top: v);

      _add((w) => Padding(padding: EdgeInsets.only(top: v), child: w));
    });
  }

  set mb(double v) => pb = v;
  set pb(double v) {
    $lazy(() {
      final l = _latest;

      if (l is Padding) return _applyPadding(l.padding, bottom: v);

      _add((w) => Padding(padding: EdgeInsets.only(bottom: v), child: w));
    });
  }

  set ml(double v) => pl = v;
  set pl(double v) {
    $lazy(() {
      final l = _latest;

      if (l is Padding) return _applyPadding(l.padding, left: v);

      _add((w) => Padding(padding: EdgeInsets.only(left: v), child: w));
    });
  }

  set mr(double v) => pr = v;
  set pr(double v) {
    $lazy(() {
      final l = _latest;

      if (l is Padding) return _applyPadding(l.padding, right: v);

      _add((w) => Padding(padding: EdgeInsets.only(right: v), child: w));
    });
  }

  set align(AlignmentGeometry v) =>
      $lazy(() => _add((w) => Align(alignment: v, child: w)));
  void get topLeft =>
      $lazy(() => _add((w) => Align(alignment: Alignment.topLeft, child: w)));
  void get topCenter =>
      $lazy(() => _add((w) => Align(alignment: Alignment.topCenter, child: w)));
  void get topRight =>
      $lazy(() => _add((w) => Align(alignment: Alignment.topRight, child: w)));
  void get centerLeft => $lazy(
      () => _add((w) => Align(alignment: Alignment.centerLeft, child: w)));
  void get center => $lazy(() => _add((w) => Center(child: w)));
  void get centerRight => $lazy(
      () => _add((w) => Align(alignment: Alignment.centerRight, child: w)));
  void get bottomLeft => $lazy(
      () => _add((w) => Align(alignment: Alignment.bottomLeft, child: w)));
  void get bottomCenter => $lazy(
      () => _add((w) => Align(alignment: Alignment.bottomCenter, child: w)));
  void get bottomRight => $lazy(
      () => _add((w) => Align(alignment: Alignment.bottomRight, child: w)));

  void get fill => fullSize;
  void get fullSize {
    $lazy(() {
      _add(
        (w) => SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: w,
        ),
      );
    });
  }

  void get wFull => fullWidth;
  void get w100 => fullWidth;
  void get fullWidth {
    $lazy(() {
      final l = _latest;

      if (l is SizedBox)
        return _replace(
          (w) => SizedBox(
            width: double.infinity,
            height: l.height,
            child: w,
          ),
        );

      _add((w) => SizedBox(width: double.infinity, child: w));
    });
  }

  void get hFull => fullHeight;
  void get h100 => fullHeight;
  void get fullHeight {
    $lazy(() {
      final l = _latest;

      if (l is SizedBox)
        return _replace((w) => SizedBox(
              width: l.width ?? 0,
              height: double.infinity,
              child: w,
            ));

      _add((w) => SizedBox(height: double.infinity, child: w));
    });
  }

  set aspect(double v) => aspectRatio = v;
  set ratio(double v) => aspectRatio = v;
  set aspectRatio(double aspectRatio) {
    $lazy(() {
      _add((w) => AspectRatio(aspectRatio: aspectRatio, child: w));
    });
  }

  set sizePercent(List<double> v) => fractionSize = [v[0] / 100, v[1] / 100];
  set fractionSize(List<double> v) {
    $lazy(() {
      _add(
        (w) => FractionallySizedBox(
          widthFactor: v[0],
          heightFactor: v[1],
          child: w,
        ),
      );
    });
  }

  set fractionW(double v) => fractionWidth = v;
  set fw(double v) => fractionWidth = v;
  set wFactor(double v) => fractionWidth = v;
  set widthPercent(double v) => fractionWidth = v / 100;
  set wPercent(double v) => fractionWidth = v / 100;
  set fractionWidth(double v) {
    $lazy(() {
      final l = _latest;

      if (l is FractionallySizedBox)
        return _replace(
          (w) => FractionallySizedBox(
            widthFactor: v,
            heightFactor: l.heightFactor,
            child: w,
          ),
        );

      _add((w) => FractionallySizedBox(widthFactor: v, child: w));
    });
  }

  set fractionH(double v) => fractionHeight = v;
  set hFactor(double v) => fractionHeight = v;
  set fh(double v) => fractionHeight = v;
  set heightPercent(double v) => fractionHeight = v / 100;
  set hPercent(double v) => fractionHeight = v / 100;
  set fractionHeight(double v) {
    $lazy(() {
      final l = _latest;

      if (l is FractionallySizedBox)
        return _replace(
          (w) => FractionallySizedBox(
            widthFactor: l.widthFactor,
            heightFactor: v,
            child: w,
          ),
        );

      _add((w) => FractionallySizedBox(heightFactor: v, child: w));
    });
  }

  void _applyConstraints({
    double? minWidth,
    double? maxWidth,
    double? minHeight,
    double? maxHeight,
  }) {
    _replace((w) {
      final constraints = (_latest as ConstrainedBox).constraints;
      final _maxWidth = maxWidth ?? constraints.maxWidth;
      final _minWidth = minWidth ?? constraints.minWidth;
      final _maxHeight = maxHeight ?? constraints.maxHeight;
      final _minHeight = minHeight ?? constraints.minHeight;

      return ConstrainedBox(
        child: w,
        constraints: BoxConstraints(
          maxWidth: _maxWidth,
          minWidth: _minWidth,
          maxHeight: _maxHeight,
          minHeight: _minHeight,
        ),
      );
    });
  }

  set boxConstraints(BoxConstraints v) {
    $lazy(() {
      if (_latest is ConstrainedBox)
        return _applyConstraints(
          maxWidth: !v.maxWidth.isFinite ? v.maxWidth : null,
          maxHeight: !v.maxWidth.isFinite ? v.maxWidth : null,
          minWidth: v.minWidth != 0 ? v.minWidth : null,
          minHeight: v.minHeight != 0 ? v.minHeight : null,
        );

      _add((w) => ConstrainedBox(constraints: v, child: w));
    });
  }

  set max(List<double> v) => maxSize = v;
  set maxSize(List<double> v) {
    $lazy(() {
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
    });
  }

  set min(List<double> v) => minSize = v;
  set minSize(List<double> v) {
    $lazy(() {
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
    });
  }

  set maxW(double v) => maxWidth = v;
  set wMax(double v) => maxWidth = v;
  set maxWidth(double v) {
    $lazy(() {
      if (_latest is ConstrainedBox) return _applyConstraints(maxWidth: v);

      return _add(
        (w) => ConstrainedBox(
          constraints: BoxConstraints(maxWidth: v),
          child: w,
        ),
      );
    });
  }

  set maxH(double v) => maxHeight = v;
  set hMax(double v) => maxHeight = v;
  set maxHeight(double v) {
    $lazy(() {
      if (_latest is ConstrainedBox) return _applyConstraints(maxHeight: v);

      _add(
        (w) => ConstrainedBox(
          constraints: BoxConstraints(maxHeight: v),
          child: w,
        ),
      );
    });
  }

  set minW(double v) => minWidth = v;
  set wMin(double v) => minWidth = v;
  set minWidth(double v) {
    $lazy(() {
      if (_latest is ConstrainedBox) return _applyConstraints(minWidth: v);

      _add(
        (w) => ConstrainedBox(
          constraints: BoxConstraints(minWidth: v),
          child: w,
        ),
      );
    });
  }

  set minH(double v) => minHeight = v;
  set hMin(double v) => minHeight = v;
  set minHeight(double v) {
    $lazy(() {
      if (_latest is ConstrainedBox) return _applyConstraints(minHeight: v);

      _add(
        (w) => ConstrainedBox(
          constraints: BoxConstraints(minHeight: v),
          child: w,
        ),
      );
    });
  }

  set size(List<double> v) {
    $lazy(() {
      _add((w) => SizedBox(width: v[0], height: v[1], child: w));
    });
  }

  set w(double v) => width = v;
  set width(double v) {
    $lazy(() {
      final l = _latest;

      if (l is SizedBox)
        return _replace(
          (w) => SizedBox(
            width: v,
            height: l.height,
            child: w,
          ),
        );

      _add((w) => SizedBox(width: v, child: w));
    });
  }

  set h(double v) => height = v;
  set height(double v) {
    $lazy(() {
      final l = _latest;

      if (l is SizedBox)
        return _replace(
          (w) => SizedBox(
            width: l.width,
            height: v,
            child: w,
          ),
        );

      _add((w) => SizedBox(height: v, child: w));
    });
  }

  void get fitted => $lazy(() => _add((w) => FittedBox(child: w)));
  void get expanded => $lazy(() => _add((w) => Expanded(child: w)));

  set bg(Color v) => backgroundColor = v;
  set backgroundColor(Color v) =>
      $lazy(() => _add((w) => ColoredBox(color: v, child: w)));

  set opacity(double v) =>
      $lazy(() => _add((w) => Opacity(opacity: v, child: w)));

  double get rounded => rounded = 999999.0;

  set rounded(double v) => borderRadius = BorderRadius.all(Radius.circular(v));
  set borderRadius(BorderRadius v) {
    $lazy(() {
      _add(
        (w) => ClipRRect(
          borderRadius: v,
          child: w,
        ),
      );
    });
  }

  static Border? _mergeBoxBorder(BoxBorder? newBorder, BoxBorder? oldBorder) =>
      _mergeBorder(newBorder as Border?, oldBorder as Border?);

  static Border? _mergeBorder(Border? newBorder, Border? oldBorder) {
    if (newBorder == null || oldBorder == null) return newBorder ?? oldBorder;

    final top = _mergeBorderSide(newBorder.top, oldBorder.top);
    final bottom = _mergeBorderSide(newBorder.bottom, oldBorder.bottom);
    final left = _mergeBorderSide(newBorder.left, oldBorder.left);
    final right = _mergeBorderSide(newBorder.right, oldBorder.right);

    return Border(
      top: top,
      bottom: bottom,
      left: left,
      right: right,
    );
  }

  static BorderSide _mergeBorderSide(
      BorderSide newBorder, BorderSide oldBorder) {
    if (newBorder == BorderSide.none) return oldBorder;

    return oldBorder.copyWith(
      color:
          newBorder.color != const Color(0xFF000000) ? newBorder.color : null,
      width: newBorder.width != 1 ? newBorder.width : null,
      style: newBorder.style != BorderStyle.solid ? newBorder.style : null,
    );
  }

  static _mergeBorderRadiusGeometry(
    BorderRadiusGeometry? newBorder,
    BorderRadiusGeometry? oldBorder,
  ) =>
      _mergeBorderRadius(
          newBorder as BorderRadius?, oldBorder as BorderRadius?);

  static _mergeBorderRadius(BorderRadius? newBorder, BorderRadius? oldBorder) {
    if (newBorder == null || oldBorder == null) return newBorder ?? oldBorder;

    return newBorder.copyWith(
      topLeft: newBorder.topLeft != const Radius.circular(0.0)
          ? newBorder.topLeft
          : null,
      topRight: newBorder.topRight != const Radius.circular(0.0)
          ? newBorder.topRight
          : null,
      bottomLeft: newBorder.bottomLeft != const Radius.circular(0.0)
          ? newBorder.bottomLeft
          : null,
      bottomRight: newBorder.bottomRight != const Radius.circular(0.0)
          ? newBorder.bottomRight
          : null,
    );
  }

  List<BoxShadow>? _mergeBoxShadows(
          List<BoxShadow>? newShadows, List<BoxShadow>? oldShadows) =>
      newShadows != null && oldShadows != null
          ? (newShadows..addAll(oldShadows))
          : (newShadows ?? oldShadows);

  void _applyBoxDecoration(BoxDecoration v) {
    $lazy(() {
      final l = _latest;

      if (l is DecoratedBox) {
        final self = l.decoration as BoxDecoration;

        return _replace((w) {
          return DecoratedBox(
            child: w,
            decoration: self.copyWith(
              color: v.color ?? self.color,
              image: v.image ?? self.image,
              border: _mergeBoxBorder(v.border, self.border),
              borderRadius:
                  _mergeBorderRadiusGeometry(v.borderRadius, self.borderRadius),
              boxShadow: _mergeBoxShadows(v.boxShadow, self.boxShadow),
              gradient: v.gradient ?? self.gradient,
              backgroundBlendMode:
                  v.backgroundBlendMode ?? self.backgroundBlendMode,
              shape: v.shape != BoxShape.rectangle ? v.shape : self.shape,
            ),
          );
        });
      }

      if (l is ClipRRect)
        return _replace(
          (w) => DecoratedBox(
            decoration: v.copyWith(
              borderRadius: v.borderRadius ?? l.borderRadius,
            ),
            child: w,
          ),
        );

      _add((w) => DecoratedBox(decoration: v, child: w));
    });
  }

  void _applyBoxDecorationProperty({
    Color? color,
    DecorationImage? image,
    BoxBorder? border,
    BorderRadiusGeometry? borderRadius,
    List<BoxShadow>? boxShadow,
    Gradient? gradient,
    BlendMode? backgroundBlendMode,
    BoxShape? shape,
  }) {
    $lazy(() {
      final l = _latest;

      if (l is DecoratedBox) {
        final self = l.decoration as BoxDecoration;

        return _replace(
          (w) => DecoratedBox(
            child: w,
            decoration: self.copyWith(
              color: color ?? self.color,
              image: image ?? self.image,
              border: _mergeBoxBorder(border, self.border),
              borderRadius:
                  _mergeBorderRadiusGeometry(borderRadius, self.borderRadius),
              boxShadow: _mergeBoxShadows(boxShadow, self.boxShadow),
              gradient: gradient ?? self.gradient,
              backgroundBlendMode:
                  backgroundBlendMode ?? self.backgroundBlendMode,
              shape: shape != BoxShape.rectangle ? shape : self.shape,
            ),
          ),
        );
      }

      if (l is ClipRRect)
        return _add(
          (w) => DecoratedBox(
            decoration: BoxDecoration(
              color: color,
              image: image,
              border: border,
              borderRadius: borderRadius ?? l.borderRadius,
              boxShadow: boxShadow,
              gradient: gradient,
              backgroundBlendMode: backgroundBlendMode,
              shape: shape ?? BoxShape.rectangle,
            ),
            child: w,
          ),
        );

      _add(
        (w) => DecoratedBox(
          child: w,
          decoration: BoxDecoration(
            color: color,
            image: image,
            border: border,
            borderRadius: borderRadius,
            boxShadow: boxShadow,
            gradient: gradient,
            backgroundBlendMode: backgroundBlendMode,
            shape: shape ?? BoxShape.rectangle,
          ),
        ),
      );
    });
  }

  set boxDecoration(BoxDecoration v) => _applyBoxDecoration(v);
  set decorated(BoxDecoration v) => boxDecoration = v;

  set hero(String v) => heroTag = v;
  set heroTag(String v) => $lazy(() => _add((w) => Hero(tag: v, child: w)));

  bool get ignorePointer {
    ignorePointer = true;
    return true;
  }

  set ignorePointer(bool v) =>
      $lazy(() => _add((w) => IgnorePointer(child: w, ignoring: v)));

  bool get absorbPointer {
    absorbPointer = true;
    return true;
  }

  set absorbPointer(bool v) =>
      $lazy(() => _add((w) => AbsorbPointer(child: w, absorbing: v)));

  set tip(String v) => tooltip = v;
  set tooltip(String v) =>
      $lazy(() => _add((w) => Tooltip(message: v, child: w)));

  set matrix4(Matrix4 v) =>
      $lazy(() => _add((w) => Transform(transform: v, child: w)));
  set rotate(double v) =>
      $lazy(() => _add((w) => Transform.rotate(angle: v, child: w)));
  set scale(double v) =>
      $lazy(() => _add((w) => Transform.scale(scale: v, child: w)));
  set translate(List<double> v) => $lazy(() =>
      _add((w) => Transform.translate(offset: Offset(v[0], v[1]), child: w)));
  set translateX(double v) => $lazy(
      () => _add((w) => Transform.translate(offset: Offset(v, 0), child: w)));
  set translateY(double v) => $lazy(
      () => _add((w) => Transform.translate(offset: Offset(0, v), child: w)));

  set border(Border v) => _applyBoxDecorationProperty(border: v);

  void useBorder({
    Color? color,
    double? width,
    BorderStyle? style,
  }) {
    _applyBoxDecorationProperty(
      border: Border.all(
        color: color ?? Colors.transparent,
        width: width ?? 0,
        style: style ?? BorderStyle.solid,
      ),
    );
  }

  void useRoundedBorder({
    double? rounded,
    Color? color,
    double? width,
    BorderStyle? style,
  }) {
    _applyBoxDecorationProperty(
      borderRadius: rounded != null
          ? BorderRadius.all(
              Radius.circular(rounded),
            )
          : null,
      border: Border.all(
        color: color ?? Colors.transparent,
        width: width ?? 0,
        style: style ?? BorderStyle.solid,
      ),
    );
  }

  set backdropFilter(ImageFilter v) => $lazy(() => _add(
        (w) => BackdropFilter(filter: v, child: w),
      ));

  set bgBlur(double v) => $lazy(() => _add(
        (w) => BackdropFilter(
          child: w,
          filter: ImageFilter.blur(sigmaX: v, sigmaY: v),
        ),
      ));

  Clip get rect {
    $lazy(() => _add((w) => ClipRect(child: w)));

    return Clip.hardEdge;
  }

  set rect(Clip clip) => $lazy(
        () => _add(
          (w) => ClipRect(
            child: w,
            clipBehavior: clip,
          ),
        ),
      );

  Clip get oval {
    $lazy(() => _add((w) => ClipOval(child: w)));

    return Clip.hardEdge;
  }

  set oval(Clip clip) => $lazy(
        () => _add(
          (w) => ClipRect(
            child: w,
            clipBehavior: clip,
          ),
        ),
      );

  void _applyPositioned({
    double? top,
    double? left,
    double? bottom,
    double? right,
  }) {
    _replace((w) {
      final position = _latest as Positioned;
      final _top = top ?? position.top;
      final _left = left ?? position.left;
      final _bottom = bottom ?? position.bottom;
      final _right = right ?? position.right;

      return Positioned(
        child: w,
        top: _top,
        left: _left,
        bottom: _bottom,
        right: _right,
      );
    });
  }

  set top(double v) {
    $lazy(() {
      if (_latest is Positioned)
        _applyPositioned(top: v);
      else
        _add((w) => Positioned(top: v, child: w));
    });
  }

  set left(double v) {
    $lazy(() {
      if (_latest is Positioned)
        _applyPositioned(left: v);
      else
        _add((w) => Positioned(left: v, child: w));
    });
  }

  set bottom(double v) {
    $lazy(() {
      if (_latest is Positioned)
        _applyPositioned(bottom: v);
      else
        _add((w) => Positioned(bottom: v, child: w));
    });
  }

  set right(double v) {
    $lazy(() {
      if (_latest is Positioned)
        _applyPositioned(right: v);
      else
        _add((w) => Positioned(right: v, child: w));
    });
  }

  set flex(int v) => $lazy(() => _add((w) => Flexible(flex: v, child: w)));
  int get flex {
    flex = 1;

    return 1;
  }

  set shadow(BoxShadow v) => _applyBoxDecorationProperty(boxShadow: [v]);
  set shadows(List<BoxShadow> v) => _applyBoxDecorationProperty(boxShadow: v);

  void useShadow({
    Color color = const Color(0xFF000000),
    Offset offset = Offset.zero,
    double blurRadius = 0.0,
    double spreadRadius = 0.0,
    BlurStyle blurStyle = BlurStyle.normal,
    double? rounded,
  }) =>
      _applyBoxDecorationProperty(
        borderRadius: rounded != null
            ? BorderRadius.all(
                Radius.circular(rounded),
              )
            : null,
        boxShadow: [
          BoxShadow(
            color: color,
            offset: offset,
            blurRadius: blurRadius,
            spreadRadius: spreadRadius,
            blurStyle: blurStyle,
          ),
        ],
      );

  void useAnimationBuilder({
    required Widget Function(BuildContext context, Widget child) builder,
    required AnimationController animation,
  }) =>
      $lazy(
        () => _add(
          (w) => AnimatedBuilder(
            animation: animation,
            builder: (context, child) => builder(context, w),
            child: w,
          ),
        ),
      );

  get wrap => $lazy(() => _add((w) => Wrap(children: [w])));
  void get sliverToBox =>
      $lazy(() => _add((w) => SliverToBoxAdapter(child: w)));

  set formKey(Key v) => $lazy(() => _add((w) => Form(key: v, child: w)));
  void useForm({
    Key? key,
    AutovalidateMode? autovalidateMode,
    Future<bool> Function()? onWillPop,
    void Function()? onChanged,
  }) =>
      $lazy(
        () => _add(
          (w) => Form(
            key: key,
            child: w,
            autovalidateMode: autovalidateMode,
            onWillPop: onWillPop,
            onChanged: onChanged,
          ),
        ),
      );

  void get scrollbar => $lazy(() => _add((w) => Scrollbar(child: w)));

  void useScrollbar({
    ScrollController? controller,
    bool? isAlwaysShown,
    bool? showTrackOnHover,
    double? hoverThickness,
    double? thickness,
    Radius? radius,
    ScrollNotificationPredicate? notificationPredicate,
  }) =>
      $lazy(
        () => _add(
          (w) => Scrollbar(
            child: w,
            controller: controller,
            isAlwaysShown: isAlwaysShown,
            hoverThickness: hoverThickness,
            thickness: thickness,
            radius: radius,
            notificationPredicate: notificationPredicate,
          ),
        ),
      );

  void get scrollable =>
      $lazy(() => _add((w) => SingleChildScrollView(child: w)));

  void useScrollView({
    ScrollController? controller,
    Axis scrollDirection = Axis.vertical,
    bool? primary,
    bool reverse = false,
    ScrollPhysics? physics,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    String? restorationId,
  }) =>
      $lazy(
        () => _add(
          (w) => SingleChildScrollView(
            child: w,
            controller: controller,
            scrollDirection: scrollDirection,
            primary: primary,
            reverse: reverse,
            physics: physics,
            dragStartBehavior: dragStartBehavior,
            restorationId: restorationId,
          ),
        ),
      );

  set theme(ThemeData v) => $lazy(() => _add((w) => Theme(data: v, child: w)));

  get hidden => visible = false;
  set visible(bool visibility) => $lazy(
        () => _add(
          (w) => Visibility(
            visible: visibility,
            child: w,
          ),
        ),
      );

  void useChild(Widget Function(Niku child) builder) =>
      $lazy(() => _add((w) => builder(w.niku)));

  void _applySafeArea({
    bool top = true,
    bool bottom = true,
    bool left = true,
    bool right = true,
  }) {
    $lazy(() {
      final l = _latest;

      if (l is SafeArea)
        return _replace(
          (w) => SafeArea(
            child: w,
            top: top || l.top,
            bottom: bottom || l.bottom,
            left: left || l.left,
            right: right || l.right,
          ),
        );

      _add(
        (w) => SafeArea(
          child: w,
          top: top,
          bottom: bottom,
          left: left,
          right: right,
        ),
      );
    });
  }

  void get safe => safeArea;
  void get safeArea => _applySafeArea();

  void get safeX => safeAreaX;
  void get safeAreaX => _applySafeArea(top: false, bottom: false);

  void get safeY => safeAreaY;
  void get safeAreaY => _applySafeArea(left: false, right: false);

  void get safeTop => safeAreaTop;
  void get safeAreaTop =>
      _applySafeArea(bottom: false, left: false, right: false);

  void get safeBottom => safeAreaBottom;
  void get safeAreaBottom =>
      _applySafeArea(top: false, left: false, right: false);

  void get safeLeft => safeAreaLeft;
  void get safeAreaLeft =>
      _applySafeArea(right: false, top: false, bottom: false);

  void get safeRight => safeAreaRight;
  void get safeAreaRight =>
      _applySafeArea(left: false, top: false, bottom: false);

  set gradient(Gradient v) => $lazy(
        () => _add(
          (w) => DecoratedBox(
            child: w,
            decoration: BoxDecoration(gradient: v),
          ),
        ),
      );

  set quarterTurns(int turns) => $lazy(
        () => _add(
          (w) => RotatedBox(
            quarterTurns: turns,
            child: w,
          ),
        ),
      );

  set elevation(double elevation) {
    $lazy(() {
      final borderRadius =
          _latest is ClipRRect ? (_latest as ClipRRect).borderRadius : null;

      _add(
        (w) => Material(
          elevation: elevation,
          borderRadius: borderRadius,
          child: w,
        ),
      );
    });
  }

  get material {
    $lazy(() {
      _add(
        (w) => Material(child: w, type: MaterialType.transparency),
      );
    });
  }

  _applyInkWell({
    Color? highlightColor,
    Color? splashColor,
    Color? focusColor,
    Color? hoverColor,
  }) {
    $lazy(() {
      final l = _latest;

      if (l is InkWell)
        return _replace((w) {
          return InkWell(
            child: w,
            highlightColor: highlightColor ?? l.highlightColor,
            splashColor: splashColor ?? l.splashColor,
            focusColor: focusColor ?? l.focusColor,
            hoverColor: hoverColor ?? l.hoverColor,
            borderRadius: l.borderRadius,
            onTap: () {},
          );
        });

      if (l is ClipRRect) {
        final radius = l.borderRadius;

        return _add(
          (w) => InkWell(
            highlightColor: highlightColor,
            splashColor: splashColor,
            focusColor: focusColor,
            hoverColor: hoverColor,
            child: w,
            onTap: () {},
            borderRadius: radius,
          ),
        );
      }

      _add(
        (w) => InkWell(
          highlightColor: highlightColor,
          splashColor: splashColor,
          focusColor: focusColor,
          hoverColor: hoverColor,
          child: w,
          onTap: () {},
        ),
      );
    });
  }

  set splash(Color color) => _applyInkWell(splashColor: color);
  set highlight(Color color) => _applyInkWell(highlightColor: color);
  set focus(Color color) => _applyInkWell(focusColor: color);
  set hover(Color color) => _applyInkWell(hoverColor: color);

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
    $lazy(() {
      _add(
        (w) => NikuAnimated<T>(
          builder: builder,
          value: value,
          duration: duration,
          curve: curve,
          child: w,
        ),
      );
    });
  }

  void useTransition<T>({
    Key? key,
    required T value,
    required Widget Function(Niku niku, T value) builder,
    Duration duration = const Duration(milliseconds: 200),
    Curve curve = Curves.linear,
  }) {
    useAnimated(
      builder: builder,
      value: value,
      duration: duration,
      curve: curve,
    );
  }

  void useTransitions({
    Key? key,
    required List dependencies,
    required Widget Function(Niku niku, List dependencies) builder,
    Duration duration = const Duration(milliseconds: 200),
    Curve curve = Curves.linear,
  }) {
    $lazy(() {
      _add(
        (w) => NikuAnimateds(
          builder: builder,
          dependencies: dependencies,
          duration: duration,
          curve: curve,
          child: w,
        ),
      );
    });
  }

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
      $lazy(() {
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
      });
}
