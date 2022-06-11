import 'package:flutter/material.dart';
import 'package:niku/objects/objects.dart';

import '../widget/niku.dart';

abstract class AxisLayoutProxy {
  MainAxisAlignment? mainAxisAlignment;
  CrossAxisAlignment? crossAxisAlignment;

  void useParent(Widget Function(Niku) v) => SizedBox.shrink();

  void get center {
    mainAxisAlignment = MainAxisAlignment.center;
    crossAxisAlignment = CrossAxisAlignment.center;
  }

  void get alignTopLeft => useParent((v) => v..topLeft);
  void get alignTopCenter => useParent((v) => v..topCenter);
  void get alignTopRight => useParent((v) => v..topRight);
  void get alignCenterLeft => useParent((v) => v..centerLeft);
  void get alignCenter => useParent((v) => v..center);
  void get alignCenterRight => useParent((v) => v..centerRight);
  void get alignBottomLeft => useParent((v) => v..bottomLeft);
  void get alignBottomCenter => useParent((v) => v..bottomCenter);
  void get alignBottomRight => useParent((v) => v..bottomRight);

  set backgroundColor(Color bg) => useParent((v) => v..bg = bg);
  set bg(Color bg) => useParent((v) => v..bg = bg);

  void get scrollable => useParent((v) => v..scrollable);

  void get safeArea => useParent((v) => SafeArea(child: v));

  void get safeAreaX =>
      useParent((v) => SafeArea(child: v, top: false, bottom: false));
  void get safeAreaY =>
      useParent((v) => SafeArea(child: v, left: false, right: false));

  void get safeAreaTop => useParent(
      (v) => SafeArea(child: v, bottom: false, left: false, right: false));
  void get safeAreaBottom => useParent(
      (v) => SafeArea(child: v, top: false, left: false, right: false));
  void get safeAreaLeft => useParent(
      (v) => SafeArea(child: v, right: false, top: false, bottom: false));
  void get safeAreaRight => useParent(
      (v) => SafeArea(child: v, left: false, top: false, bottom: false));

  void get safe => useParent((v) => SafeArea(child: v));

  void get safeX =>
      useParent((v) => SafeArea(child: v, top: false, bottom: false));
  void get safeY =>
      useParent((v) => SafeArea(child: v, left: false, right: false));

  void get safeTop => useParent(
      (v) => SafeArea(child: v, bottom: false, left: false, right: false));
  void get safeBottom => useParent(
      (v) => SafeArea(child: v, top: false, left: false, right: false));
  void get safeLeft => useParent(
      (v) => SafeArea(child: v, right: false, top: false, bottom: false));
  void get safeRight => useParent(
      (v) => SafeArea(child: v, left: false, top: false, bottom: false));

  double get rounded {
    useParent((v) => v..rounded);

    return 99999;
  }

  set rounded(double rounded) => useParent((v) => v..rounded = rounded);

  set border(Border v) => useParent(
      (w) => DecoratedBox(decoration: BoxDecoration(border: v), child: w));

  useBorder({
    Color? color,
    double? width,
    BorderStyle? style,
  }) {
    useParent(
      (w) => DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(
            color: color ?? Colors.transparent,
            width: width ?? 0,
            style: style ?? BorderStyle.solid,
          ),
        ),
        child: w,
      ),
    );
  }

  useRoundedBorder({
    double? rounded,
    Color? color,
    double? width,
    BorderStyle? style,
  }) {
    useParent(
      (w) => DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(rounded ?? 99999)),
          border: Border.all(
            color: color ?? Colors.transparent,
            width: width ?? 0,
            style: style ?? BorderStyle.solid,
          ),
        ),
        child: w,
      ),
    );
  }

  // Parent Proxy
  set padding(EdgeInsets v) {
    useParent((c) => Padding(padding: v, child: c));
  }

  set nikuPadding(NikuEdgeInsets v) {
    useParent((c) => Padding(padding: v.value, child: c));
  }

  set p(double v) {
    useParent((c) => Padding(
          padding: EdgeInsets.all(v),
          child: c,
        ));
  }

  set px(double v) {
    useParent((c) => Padding(
          padding: EdgeInsets.symmetric(horizontal: v),
          child: c,
        ));
  }

  set py(double v) {
    useParent((c) => Padding(
          padding: EdgeInsets.symmetric(vertical: v),
          child: c,
        ));
  }

  set pt(double v) {
    useParent((c) => Padding(
          padding: EdgeInsets.only(top: v),
          child: c,
        ));
  }

  set pl(double v) {
    useParent((c) => Padding(
          padding: EdgeInsets.only(left: v),
          child: c,
        ));
  }

  set pb(double v) {
    useParent((c) => Padding(
          padding: EdgeInsets.only(bottom: v),
          child: c,
        ));
  }

  set pr(double v) {
    useParent((c) => Padding(
          padding: EdgeInsets.only(right: v),
          child: c,
        ));
  }
}
