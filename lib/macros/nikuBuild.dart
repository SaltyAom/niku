import 'package:flutter/material.dart';
import 'package:niku/objects/objects.dart';

import '../widget/niku.dart';
import '../extra/on.dart';

abstract class NikuBuildMacro {
  List<Widget Function(Niku)> _parent = [];

  void useNiku(Widget Function(Niku) cb) {
    useParent(cb);
  }

  void useParent(Widget Function(Niku) cb) =>
      _parent.add((Niku widget) => cb(widget));

  List<Widget Function(Niku)> get $internalParent => _parent;

  set on(List<dynamic> dependencies) =>
      _parent.add((w) => Niku(NikuOn(() => w, dependencies)));

  List<dynamic> get on {
    _parent.add((w) => Niku(NikuOn(() => w, [])));

    return [];
  }

  void get freezed => _parent.add((w) => Niku(NikuOn(() => w, [])));

  Widget get widget => SizedBox.shrink();

  Widget build(context) {
    Widget composed = widget;

    _parent.forEach((wrap) {
      composed = wrap(composed is Niku ? composed as Niku : composed.niku);
    });

    return composed;
  }

  // Convinient Property Builder
  set margin(EdgeInsets v) {
    useParent((c) => Padding(padding: v, child: c));
  }

  set nikuMargin(NikuEdgeInsets v) {
    useParent((c) => Padding(padding: v.value, child: c));
  }

  set m(double v) {
    useParent((c) => Padding(
          padding: EdgeInsets.all(v),
          child: c,
        ));
  }

  set mx(double v) {
    useParent((c) => Padding(
          padding: EdgeInsets.symmetric(horizontal: v),
          child: c,
        ));
  }

  set my(double v) {
    useParent((c) => Padding(
          padding: EdgeInsets.symmetric(vertical: v),
          child: c,
        ));
  }

  set mt(double v) {
    useParent((c) => Padding(
          padding: EdgeInsets.only(top: v),
          child: c,
        ));
  }

  set ml(double v) {
    useParent((c) => Padding(
          padding: EdgeInsets.only(left: v),
          child: c,
        ));
  }

  set mb(double v) {
    useParent((c) => Padding(
          padding: EdgeInsets.only(bottom: v),
          child: c,
        ));
  }

  set mr(double v) {
    useParent((c) => Padding(
          padding: EdgeInsets.only(right: v),
          child: c,
        ));
  }
}
