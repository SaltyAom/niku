import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../widget/niku.dart';
import '../extra/on.dart';

abstract class NikuBuildMacro<T extends Widget> {
  final Niku $parent = Niku();

  set apply(T? v) {}
  void of(T? v) => apply = v;

  void use(List<T> v) {
    for (final e in v) apply = e;
  }

  Widget get widget => const SizedBox.shrink();
  Widget build(BuildContext context) =>
      ($parent..widget = widget).build(context);

  void useParent(Widget Function(Niku) compose) =>
      $parent..useChild((w) => compose(w));

  // ? Query Macro (must be override otherwise will result in Error)
  T get self => this as T;
  T get copied => const SizedBox.shrink() as T;

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

  NikuExplictParentBuilder get parent => n;
  NikuExplictParentBuilder get n {
    if (_explictParent == null)
      _explictParent = NikuExplictParentBuilder($parent);

    return _explictParent!;
  }

  set margin(EdgeInsets v) => $parent..margin = v;

  set m(double v) => $parent..m = v;
  set mx(double v) => $parent..mx = v;
  set my(double v) => $parent..my = v;
  set mt(double v) => $parent..mt = v;
  set mb(double v) => $parent..mb = v;
  set ml(double v) => $parent..ml = v;
  set mr(double v) => $parent..mr = v;

  get expanded => useParent((v) => v..expanded);

  set flex(int v) => $parent..flex = v;
  int get flex {
    $parent..flex;

    return 1;
  }

  void get fullSize => $parent..fullSize;
  void get fullWidth => useParent((v) => v..fullWidth);
  void get fullHeight => useParent((v) => v..fullHeight);
  void get wFull => useParent((v) => v..fullWidth);
  void get hFull => useParent((v) => v..fullHeight);
  void get w100 => useParent((v) => v..w100);
  void get h100 => useParent((v) => v..h100);
  void get fill => useParent((v) => v..fill);

  set fractionSize(List<double> v) => $parent..fractionSize = v;
  set sizePercent(List<double> v) => $parent..sizePercent = v;

  set fractionWidth(double v) => $parent..fractionWidth = v;
  set fractionW(double v) => $parent..fractionWidth = v;
  set fw(double v) => $parent..fractionWidth = v;
  set wFactor(double v) => $parent..fractionWidth = v;
  set widthPercent(double v) => $parent..widthPercent = v;
  set wPercent(double v) => $parent..widthPercent = v;

  set fractionHeight(double v) => $parent..fractionHeight = v;
  set fractionH(double v) => $parent..fractionHeight = v;
  set fh(double v) => $parent..fractionHeight = v;
  set hFactor(double v) => $parent..fractionHeight = v;
  set heightPercent(double v) => $parent..heightPercent = v;
  set hPercent(double v) => $parent..heightPercent = v;

  set boxConstraints(BoxConstraints v) => $parent..boxConstraints = v;

  set maxSize(List<double> v) => $parent..maxSize = v;
  set minSize(List<double> v) => $parent..minSize = v;

  set maxWidth(double v) => $parent..maxWidth = v;
  set maxHeight(double v) => $parent..maxHeight = v;
  set maxW(double v) => $parent..maxWidth = v;
  set maxH(double v) => $parent..maxHeight = v;
  set wMax(double v) => $parent..maxWidth = v;
  set hMax(double v) => $parent..maxHeight = v;

  set minWidth(double v) => $parent..minWidth = v;
  set minHeight(double v) => $parent..minHeight = v;
  set minW(double v) => $parent..minWidth = v;
  set minH(double v) => $parent..minHeight = v;
  set wMin(double v) => $parent..minWidth = v;
  set hMin(double v) => $parent..minHeight = v;

  set width(double v) => $parent..width = v;
  set w(double v) => $parent..width = v;
  set height(double v) => $parent..height = v;
  set h(double v) => $parent..height = v;

  /// Cancel parent size inheritance by wrapping the widget with a [Wrap].
  get wrap => $parent..wrap;
  void get sliverToBox => $parent..sliverToBox;

  set formKey(Key v) => $parent..formKey = v;
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

  set aspectRatio(double v) => $parent..aspectRatio = v;
  set aspect(double v) => $parent..aspectRatio = v;
  set ratio(double v) => $parent..aspectRatio = v;

  void get scrollable => $parent..scrollable;

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

  set theme(ThemeData v) => $parent..theme = v;

  set visible(bool visibility) => $parent..visible = visibility;
  get hidden => $parent..hidden;

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
  final Niku $parent;

  const NikuExplictParentBuilder(this.$parent);

  set top(double v) => $parent..top = v;
  set left(double v) => $parent..left = v;
  set bottom(double v) => $parent..bottom = v;
  set right(double v) => $parent..right = v;

  set bg(Color v) => $parent..bg = v;
  set opacity(double v) => $parent..opacity = v;
  double get rounded => $parent.rounded;
  set rounded(double v) => $parent..rounded = v;
  set borderRadius(BorderRadius v) => $parent..borderRadius = v;

  set padding(EdgeInsets v) => $parent..padding = v;

  set p(double v) => $parent..p = v;
  set px(double v) => $parent..px = v;
  set py(double v) => $parent..py = v;
  set pt(double v) => $parent..pt = v;
  set pb(double v) => $parent..pb = v;
  set pl(double v) => $parent..pl = v;
  set pr(double v) => $parent..pr = v;

  set gradient(Gradient v) => $parent..gradient = v;

  set align(AlignmentGeometry v) => $parent..align = v;

  void get topLeft => $parent..topLeft;
  void get topCenter => $parent..topCenter;
  void get topRight => $parent..topRight;
  void get centerLeft => $parent..centerLeft;
  void get center => $parent..center;
  void get centerRight => $parent..centerRight;
  void get bottomLeft => $parent..bottomLeft;
  void get bottomCenter => $parent..bottomCenter;
  void get bottomRight => $parent..bottomRight;

  set decorated(BoxDecoration v) => $parent..decorated = v;
  set boxDecoration(BoxDecoration v) => $parent..boxDecoration = v;

  set hero(String v) => $parent..hero = v;
  set heroTag(String v) => $parent..heroTag = v;

  set ignorePointer(bool v) => $parent..ignorePointer = v;
  set absorbPointer(bool v) => $parent..absorbPointer = v;

  set tooltip(String v) => $parent..tooltip = v;
  set tip(String v) => $parent..tip = v;

  set matrix4(Matrix4 v) => $parent..matrix4 = v;
  set rotate(double v) => $parent..rotate = v;
  set scale(double v) => $parent..scale = v;
  set translate(List<double> v) => $parent..translate = v;
  set translateX(double v) => $parent..translateX = v;
  set translateY(double v) => $parent..translateY = v;

  set border(Border v) => $parent..border = v;

  useBorder({
    Color? color,
    double? width,
    BorderStyle? style,
  }) =>
      $parent
        ..useBorder(
          color: color,
          width: width,
          style: style,
        );

  useRoundedBorder({
    double? rounded,
    Color? color,
    double? width,
    BorderStyle? style,
  }) =>
      $parent
        ..useRoundedBorder(
          rounded: rounded,
          color: color,
          width: width,
          style: style,
        );

  set backdropFilter(ImageFilter v) => $parent..backdropFilter = v;
  set bgBlur(double v) => $parent..bgBlur = v;

  set rect(Clip clip) => $parent..rect = clip;
  Clip get rect {
    $parent..rect;

    return Clip.hardEdge;
  }

  set oval(Clip clip) => $parent..oval = clip;
  Clip get oval {
    $parent..oval;

    return Clip.hardEdge;
  }

  set elevation(double elevation) => $parent..elevation = elevation;

  set splash(Color color) => $parent..splash = color;
  set highlight(Color color) => $parent..highlight = color;
  set focus(Color color) => $parent..focus = color;
  set hover(Color color) => $parent..hover = color;

  set shadow(BoxShadow v) => $parent..shadow = v;
  set shadows(List<BoxShadow> v) => $parent..shadows = v;

  void useShadow({
    Color color = const Color(0xFF000000),
    Offset offset = Offset.zero,
    double blurRadius = 0.0,
    double spreadRadius = 0.0,
    BlurStyle blurStyle = BlurStyle.normal,
    double? rounded,
  }) =>
      $parent
        ..useShadow(
          color: color,
          offset: offset,
          blurRadius: blurRadius,
          spreadRadius: spreadRadius,
          blurStyle: blurStyle,
          rounded: rounded,
        );
}
