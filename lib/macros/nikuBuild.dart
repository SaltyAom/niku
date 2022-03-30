import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:niku/objects/objects.dart';

import '../widget/niku.dart';
import '../extra/on.dart';

abstract class NikuBuildMacro<T extends Widget> {
  Niku $internalParent = Niku();

  void useNiku(Widget Function(Niku) cb) => useParent(cb);

  set apply(T? v) {}
  void of(T? v) => apply = v;

  void use(List<T> v) {
    v.forEach((e) => apply = e);
  }

  void useParent(Widget Function(Niku) compose) =>
      $internalParent..useChild((w) => compose(w));

  Widget get widget => SizedBox.shrink();
  Widget build(BuildContext context) => $internalParent..widget = widget;

  // ? Query Macro
  T get self => this as T;
  T get copied => SizedBox.shrink() as T;

  // ? Extra Macro
  set on(List<dynamic> dependencies) =>
      useParent((w) => Niku(NikuOn(() => w, dependencies)));

  List<dynamic> get on {
    useParent((w) => Niku(NikuOn(() => w, [])));

    return [];
  }

  void get freezed => useParent((w) => Niku(NikuOn(() => w, [])));

  void useQuery(BuildContext context, T Function(T, MediaQueryData) builder) {
    builder(self, MediaQuery.of(context));
  }

  void useSize(BuildContext context, T Function(T, Size) builder) {
    builder(self, MediaQuery.of(context).size);
  }

  void useDarkMode(BuildContext context, T Function(T, bool) builder) {
    builder(self, Theme.of(context).brightness == Brightness.dark);
  }

  void useThemeSelector(
    BuildContext context, {
    required T Function(T) light,
    required T Function(T) dark,
  }) {
    Theme.of(context).brightness == Brightness.dark ? dark(self) : light(self);
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
  void useScreen(
    BuildContext context, {
    // > 568px
    T Function(T)? base,
    // 568 - 640px
    T Function(T)? xs,
    // 640 - 768px
    T Function(T)? sm,
    // 768 - 920px
    T Function(T)? md,
    // 920 - 1024px
    T Function(T)? lg,
    // > 1024px
    T Function(T)? xl,
  }) {
    final width = MediaQuery.of(context).size.width;

    if (width < 568) {
      if (base != null) base(copied);

      return;
    }

    if (width < 640) {
      if (xs != null)
        xs(self);
      else if (base != null) base(self);

      return;
    }

    if (width < 720) {
      if (sm != null)
        sm(self);
      else if (xs != null)
        xs(self);
      else if (base != null) base(self);

      return;
    }

    if (width < 920) {
      if (md != null)
        md(self);
      else if (sm != null)
        sm(self);
      else if (xs != null)
        xs(self);
      else if (base != null) base(self);

      return;
    }

    if (width < 1024) {
      if (lg != null)
        lg(self);
      else if (md != null)
        md(self);
      else if (sm != null)
        sm(self);
      else if (xs != null)
        xs(self);
      else if (base != null) base(self);
    }

    if (xl != null)
      xl(self);
    else if (lg != null)
      lg(self);
    else if (md != null)
      md(self);
    else if (sm != null)
      sm(self);
    else if (xs != null)
      xs(self);
    else if (base != null) base(self);
  }

  void usePlatform(
    BuildContext context, {
    T Function(T)? android,
    T Function(T)? iOS,
    T Function(T)? fuchsia,
    T Function(T)? linux,
    T Function(T)? macOS,
    T Function(T)? windows,
    T Function(T)? web,
  }) {
    fallback(T Function(T)? builder) {
      if (builder != null) builder(self);
    }

    if (kIsWeb)
      fallback(web);
    else
      switch (Theme.of(context).platform) {
        case TargetPlatform.android:
          fallback(android);
          break;

        case TargetPlatform.iOS:
          fallback(iOS);
          break;

        case TargetPlatform.fuchsia:
          fallback(fuchsia);
          break;

        case TargetPlatform.linux:
          fallback(linux);
          break;

        case TargetPlatform.macOS:
          fallback(macOS);
          break;

        case TargetPlatform.windows:
          fallback(windows);
          break;
      }
  }

  // ? Parent Proxy
  NikuExplictParentBuilder? _explictParent;

  NikuExplictParentBuilder get n {
    if (_explictParent == null)
      _explictParent = NikuExplictParentBuilder(useParent);

    return _explictParent!;
  }

  NikuExplictParentBuilder get parent {
    if (_explictParent == null)
      _explictParent = NikuExplictParentBuilder(useParent);

    return _explictParent!;
  }

  set margin(EdgeInsets v) => useParent((w) => w..margin = v);
  set nikuMargin(UseNikuCallback<NikuEdgeInsets> v) =>
      useParent((w) => w..nikuMargin = v);

  set m(double v) => useParent((w) => w..m = v);
  set mx(double v) => useParent((w) => w..mx = v);
  set my(double v) => useParent((w) => w..my = v);
  set mt(double v) => useParent((w) => w..mt = v);
  set mb(double v) => useParent((w) => w..mb = v);
  set ml(double v) => useParent((w) => w..ml = v);
  set mr(double v) => useParent((w) => w..mr = v);

  get expanded => useParent((v) => v..expanded);

  set flex(int v) => useParent((w) => w..flex = v);
  int get flex {
    useParent((w) => w..flex);

    return 1;
  }

  void get fullSize => useParent((v) => v..fullSize);
  void get fullWidth => useParent((v) => v..fullWidth);
  void get fullHeight => useParent((v) => v..fullHeight);
  void get wFull => useParent((v) => v..fullWidth);
  void get hFull => useParent((v) => v..fullHeight);
  void get w100 => useParent((v) => v..w100);
  void get h100 => useParent((v) => v..h100);
  void get fill => useParent((v) => v..fill);

  set fractionSize(List<double> v) => useParent((w) => w..fractionSize = v);
  set sizePercent(List<double> v) => useParent((w) => w..sizePercent = v);

  set fractionWidth(double v) => useParent((w) => w..fractionWidth = v);
  set fractionW(double v) => useParent((w) => w..fractionWidth = v);
  set fw(double v) => useParent((w) => w..fractionWidth = v);
  set wFactor(double v) => useParent((w) => w..fractionWidth = v);
  set widthPercent(double v) => useParent((w) => w..widthPercent = v);
  set wPercent(double v) => useParent((w) => w..widthPercent = v);

  set fractionHeight(double v) => useParent((w) => w..fractionHeight = v);
  set fractionH(double v) => useParent((w) => w..fractionHeight = v);
  set fh(double v) => useParent((w) => w..fractionHeight = v);
  set hFactor(double v) => useParent((w) => w..fractionHeight = v);
  set heightPercent(double v) => useParent((w) => w..heightPercent = v);
  set hPercent(double v) => useParent((w) => w..heightPercent = v);

  set boxConstraints(BoxConstraints v) =>
      useParent((w) => w..boxConstraints = v);
  set nikuConstraints(UseNikuCallback<NikuBoxConstraints> v) =>
      useParent((w) => w..nikuConstraints = v);

  set maxSize(List<double> v) => useParent((w) => w..maxSize = v);
  set minSize(List<double> v) => useParent((w) => w..minSize = v);

  set maxWidth(double v) => useParent((w) => w..maxWidth = v);
  set maxHeight(double v) => useParent((w) => w..maxHeight = v);
  set maxW(double v) => useParent((w) => w..maxWidth = v);
  set maxH(double v) => useParent((w) => w..maxHeight = v);
  set wMax(double v) => useParent((w) => w..maxWidth = v);
  set hMax(double v) => useParent((w) => w..maxHeight = v);

  set minWidth(double v) => useParent((w) => w..minWidth = v);
  set minHeight(double v) => useParent((w) => w..minHeight = v);
  set minW(double v) => useParent((w) => w..minWidth = v);
  set minH(double v) => useParent((w) => w..minHeight = v);
  set wMin(double v) => useParent((w) => w..minWidth = v);
  set hMin(double v) => useParent((w) => w..minHeight = v);

  set width(double v) => useParent((w) => w..width = v);
  set w(double v) => useParent((w) => w..width = v);
  set height(double v) => useParent((w) => w..height = v);
  set h(double v) => useParent((w) => w..height = v);

  /// Cancel parent size inheritance by wrapping the widget with a [Wrap].
  get wrap => useParent((w) => w..wrap);
  void get sliverToBox => useParent((w) => w..sliverToBox);

  set formKey(Key v) => useParent((w) => w..formKey = v);
  void useForm({
    Key? key,
    AutovalidateMode? autovalidateMode,
    Future<bool> Function()? onWillPop,
    void Function()? onChanged,
  }) =>
      useParent(
        (w) => w
          ..useForm(
            key: key,
            autovalidateMode: autovalidateMode,
            onWillPop: onWillPop,
            onChanged: onChanged,
          ),
      );

  set aspectRatio(double v) => useParent((w) => w..aspectRatio = v);
  set aspect(double v) => useParent((w) => w..aspectRatio = v);
  set ratio(double v) => useParent((w) => w..aspectRatio = v);

  void get scrollable => useParent((w) => w..scrollable);

  void useScrollView({
    ScrollController? controller,
    Axis scrollDirection = Axis.vertical,
    bool? primary,
    bool reverse = false,
    ScrollPhysics? physics,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    String? restorationId,
  }) =>
      useParent(
        (w) => w
          ..useScrollView(
            controller: controller,
            scrollDirection: scrollDirection,
            primary: primary,
            reverse: reverse,
            physics: physics,
            dragStartBehavior: dragStartBehavior,
            restorationId: restorationId,
          ),
      );

  set theme(ThemeData v) => useParent((w) => w..theme = v);

  set visible(bool visibility) => useParent((w) => w..visible = visibility);
  get hidden => useParent((w) => w..hidden);

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
      useParent(
        (w) => w
          ..useGesture(
            tapDown: tapDown,
            tapUp: tapUp,
            tap: tap,
            tapCancel: tapCancel,
            secondaryTap: secondaryTap,
            secondaryTapDown: secondaryTapDown,
            secondaryTapUp: secondaryTapUp,
            secondaryTapCancel: secondaryTapCancel,
            tertiaryTapDown: tertiaryTapDown,
            tertiaryTapUp: tertiaryTapUp,
            tertiaryTapCancel: tertiaryTapCancel,
            doubleTapDown: doubleTapDown,
            doubleTap: doubleTap,
            doubleTapCancel: doubleTapCancel,
            longPress: longPress,
            longPressStart: longPressStart,
            longPressMoveUpdate: longPressMoveUpdate,
            longPressUp: longPressUp,
            longPressEnd: longPressEnd,
            secondaryLongPress: secondaryLongPress,
            secondaryLongPressStart: secondaryLongPressStart,
            secondaryLongPressMoveUpdate: secondaryLongPressMoveUpdate,
            secondaryLongPressUp: secondaryLongPressUp,
            secondaryLongPressEnd: secondaryLongPressEnd,
            verticalDragDown: verticalDragDown,
            verticalDragStart: verticalDragStart,
            verticalDragUpdate: verticalDragUpdate,
            verticalDragEnd: verticalDragEnd,
            verticalDragCancel: verticalDragCancel,
            horizontalDragDown: horizontalDragDown,
            horizontalDragStart: horizontalDragStart,
            horizontalDragUpdate: horizontalDragUpdate,
            horizontalDragEnd: horizontalDragEnd,
            horizontalDragCancel: horizontalDragCancel,
            forcePressStart: forcePressStart,
            forcePressPeak: forcePressPeak,
            forcePressUpdate: forcePressUpdate,
            forcePressEnd: forcePressEnd,
            panDown: panDown,
            panStart: panStart,
            panUpdate: panUpdate,
            panEnd: panEnd,
            panCancel: panCancel,
            scaleStart: scaleStart,
            scaleUpdate: scaleUpdate,
            scaleEnd: scaleEnd,
          ),
      );

  void useAnimationBuilder({
    required Widget Function(BuildContext context, Widget child) builder,
    required AnimationController animation,
  }) =>
      useParent(
        (w) => w
          ..useAnimationBuilder(
            animation: animation,
            builder: (context, child) => builder(context, w),
          ),
      );
}

class NikuExplictParentBuilder {
  NikuExplictParentBuilder(this.useParent);

  final void Function(Widget Function(Niku)) useParent;

  set top(double v) => useParent((w) => w..top = v);
  set left(double v) => useParent((w) => w..left = v);
  set bottom(double v) => useParent((w) => w..bottom = v);
  set right(double v) => useParent((w) => w..right = v);

  set bg(Color v) => useParent((w) => w..bg = v);
  set opacity(double v) => useParent((w) => w..opacity = v);
  set rounded(double v) => useParent((w) => w..rounded = v);
  set borderRadius(BorderRadius v) => useParent((w) => w..borderRadius = v);

  set padding(EdgeInsets v) => useParent((w) => w..padding = v);
  set nikuPadding(UseNikuCallback<NikuEdgeInsets> cb) =>
      useParent((w) => w..nikuPadding = cb);

  set p(double v) => useParent((w) => w..p = v);
  set px(double v) => useParent((w) => w..px = v);
  set py(double v) => useParent((w) => w..py = v);
  set pt(double v) => useParent((w) => w..pt = v);
  set pb(double v) => useParent((w) => w..pb = v);
  set pl(double v) => useParent((w) => w..pl = v);
  set pr(double v) => useParent((w) => w..pr = v);

  set gradient(Gradient v) => useParent((w) => w..gradient = v);

  set align(AlignmentGeometry v) => useParent(
        (w) => Align(alignment: v, child: w),
      );

  void get topLeft => useParent((w) => w..topLeft);
  void get topCenter => useParent((w) => w..topCenter);
  void get topRight => useParent((w) => w..topRight);
  void get centerLeft => useParent((w) => w..centerLeft);
  void get center => useParent((w) => w..center);
  void get centerRight => useParent((w) => w..centerRight);
  void get bottomLeft => useParent((w) => w..bottomLeft);
  void get bottomCenter => useParent((w) => w..bottomCenter);
  void get bottomRight => useParent((w) => w..bottomRight);

  set decorated(BoxDecoration v) => useParent((w) => w..decorated = v);
  set boxDecoration(BoxDecoration v) => useParent((w) => w..boxDecoration = v);

  set hero(String v) => useParent((w) => w..hero = v);
  set heroTag(String v) => useParent((w) => w..heroTag = v);

  set ignorePointer(bool v) => useParent((w) => w..ignorePointer = v);
  set absorbPointer(bool v) => useParent((w) => w..absorbPointer = v);

  set tooltip(String v) => useParent((w) => w..tooltip = v);
  set tip(String v) => useParent((w) => w..tip = v);

  set matrix4(Matrix4 v) => useParent((w) => w..matrix4 = v);
  set rotate(double v) => useParent((w) => w..rotate = v);
  set scale(double v) => useParent((w) => w..scale = v);
  set translate(List<double> v) => useParent((w) => w..translate = v);
  set translateX(double v) => useParent((w) => w..translateX = v);
  set translateY(double v) => useParent((w) => w..translateY = v);

  set border(Border v) => useParent((w) => w..border = v);

  useBorder({
    Color? color,
    double? width,
    BorderStyle? style,
  }) =>
      useParent((w) => w
        ..useBorder(
          color: color,
          width: width,
          style: style,
        ));

  useRoundedBorder({
    double? rounded,
    Color? color,
    double? width,
    BorderStyle? style,
  }) =>
      useParent(
        (w) => w
          ..useRoundedBorder(
            rounded: rounded,
            color: color,
            width: width,
            style: style,
          ),
      );

  set backdropFilter(ImageFilter v) => useParent((w) => w..backdropFilter = v);
  set bgBlur(double v) => useParent((w) => w..bgBlur = v);

  set rect(Clip clip) => useParent((w) => w..rect = clip);
  Clip get rect {
    useParent((w) => w..rect);

    return Clip.hardEdge;
  }

  set oval(Clip clip) => useParent((w) => w..oval = clip);
  Clip get oval {
    useParent((w) => w..oval);

    return Clip.hardEdge;
  }

  set elevation(double elevation) => useParent((w) => w..elevation = elevation);

  set splash(Color color) => useParent((w) => w..splash = color);
  set highlight(Color color) => useParent((w) => w..highlight = color);
  set focus(Color color) => useParent((w) => w..focus = color);
  set hover(Color color) => useParent((w) => w..hover = color);

  set shadow(BoxShadow v) => useParent((w) => w..shadow = v);
  set shadows(List<BoxShadow> v) => useParent((w) => w..shadows = v);

  void useShadow({
    Color color = const Color(0xFF000000),
    Offset offset = Offset.zero,
    double blurRadius = 0.0,
    double spreadRadius = 0.0,
    BlurStyle blurStyle = BlurStyle.normal,
    double? rounded,
  }) =>
      useParent((w) => w
        ..useShadow(
          color: color,
          offset: offset,
          blurRadius: blurRadius,
          spreadRadius: spreadRadius,
          blurStyle: blurStyle,
          rounded: rounded,
        ));
}
