import 'package:flutter/material.dart';
import 'package:niku/objects/objects.dart';

import '../widget/niku.dart';

abstract class AxisLayout {
  MainAxisAlignment? mainAxisAlignment;
  CrossAxisAlignment? crossAxisAlignment;

  void useParent(Widget Function(Niku) v) => SizedBox.shrink();

  void get center {
    mainAxisAlignment = MainAxisAlignment.center;
    crossAxisAlignment = CrossAxisAlignment.center;
  }

  void get fullWidth => useParent((v) => v..w100);
  void get wFull => useParent((v) => v..w100);
  void get w100 => useParent((v) => v..w100);
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

  // Convinient Property Builder
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
