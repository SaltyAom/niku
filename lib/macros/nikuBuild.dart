import 'package:flutter/material.dart';
import 'package:niku/objects/objects.dart';

import '../widget/niku.dart';
import '../extra/on.dart';

abstract class NikuBuildMacro<T extends Widget> {
  List<Widget Function(Niku)> _parent = [];

  void useNiku(Widget Function(Niku) cb) {
    useParent(cb);
  }

  set apply(T? v) {}
  void of(T? v) => apply = v;

  use(List<T> v) {
    v.forEach((e) => apply = e);
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

  // Parent Proxy
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

  set expanded(Color bg) => useParent((v) => v..expanded);

  set flex(int v) => useParent((w) => Flexible(flex: v, child: w));
  int get flex {
    useParent((v) => Flexible(child: v));

    return 1;
  }

  void get fullSize => useParent((v) =>
      SizedBox(width: double.infinity, height: double.infinity, child: v));
  void get fullWidth =>
      useParent((v) => SizedBox(width: double.infinity, child: v));
  void get fullHeight =>
      useParent((v) => SizedBox(height: double.infinity, child: v));
  void get wFull =>
      useParent((v) => SizedBox(width: double.infinity, child: v));
  void get hFull =>
      useParent((v) => SizedBox(height: double.infinity, child: v));
  void get w100 => useParent((v) => SizedBox(width: double.infinity, child: v));
  void get h100 =>
      useParent((v) => SizedBox(height: double.infinity, child: v));

  set fractionSize(List<double> v) => useParent((w) =>
      FractionallySizedBox(widthFactor: v[0], heightFactor: v[1], child: w));
  set sizePercent(List<double> v) => useParent((w) =>
      FractionallySizedBox(widthFactor: v[0], heightFactor: v[1], child: w));

  set fractionWidth(double v) =>
      useParent((w) => FractionallySizedBox(widthFactor: v, child: w));
  set fractionW(double v) =>
      useParent((w) => FractionallySizedBox(widthFactor: v, child: w));
  set fw(double v) =>
      useParent((w) => FractionallySizedBox(widthFactor: v, child: w));
  set wFactor(double v) =>
      useParent((w) => FractionallySizedBox(widthFactor: v, child: w));
  set widthPercent(double v) =>
      useParent((w) => FractionallySizedBox(widthFactor: v / 100, child: w));
  set wPercent(double v) =>
      useParent((w) => FractionallySizedBox(widthFactor: v / 100, child: w));

  set fractionHeight(double v) =>
      useParent((w) => FractionallySizedBox(heightFactor: v, child: w));
  set fractionH(double v) =>
      useParent((w) => FractionallySizedBox(heightFactor: v, child: w));
  set hFactor(double v) =>
      useParent((w) => FractionallySizedBox(heightFactor: v, child: w));
  set fh(double v) =>
      useParent((w) => FractionallySizedBox(heightFactor: v, child: w));
  set heightPercent(double v) =>
      useParent((w) => FractionallySizedBox(heightFactor: v / 100, child: w));
  set hPercent(double v) =>
      useParent((w) => FractionallySizedBox(heightFactor: v / 100, child: w));

  set boxConstraints(BoxConstraints v) =>
      useParent((w) => ConstrainedBox(constraints: v, child: w));
  set nikuConstraints(UseNikuCallback<NikuBoxConstraints> cb) =>
      useParent((w) => ConstrainedBox(
          constraints: cb(NikuBoxConstraints()).value, child: w));

  set maxSize(List<double> v) => useParent((w) => ConstrainedBox(
      constraints: BoxConstraints(maxWidth: v[0], maxHeight: v[1]), child: w));
  set minSize(List<double> v) => useParent((w) => ConstrainedBox(
      constraints: BoxConstraints(minWidth: v[0], minHeight: v[1]), child: w));

  set maxWidth(double v) => useParent((w) =>
      ConstrainedBox(constraints: BoxConstraints(maxWidth: v), child: w));
  set maxHeight(double v) => useParent((w) =>
      ConstrainedBox(constraints: BoxConstraints(maxHeight: v), child: w));
  set maxW(double v) => useParent((w) =>
      ConstrainedBox(constraints: BoxConstraints(maxWidth: v), child: w));
  set maxH(double v) => useParent((w) =>
      ConstrainedBox(constraints: BoxConstraints(maxHeight: v), child: w));
  set wMax(double v) => useParent((w) =>
      ConstrainedBox(constraints: BoxConstraints(maxWidth: v), child: w));
  set hMax(double v) => useParent((w) =>
      ConstrainedBox(constraints: BoxConstraints(maxHeight: v), child: w));

  set minWidth(double v) => useParent((w) =>
      ConstrainedBox(constraints: BoxConstraints(minWidth: v), child: w));
  set minHeight(double v) => useParent((w) =>
      ConstrainedBox(constraints: BoxConstraints(minHeight: v), child: w));
  set minW(double v) => useParent((w) =>
      ConstrainedBox(constraints: BoxConstraints(minWidth: v), child: w));
  set minH(double v) => useParent((w) =>
      ConstrainedBox(constraints: BoxConstraints(minHeight: v), child: w));
  set wMin(double v) => useParent((w) =>
      ConstrainedBox(constraints: BoxConstraints(minWidth: v), child: w));
  set hMin(double v) => useParent((w) =>
      ConstrainedBox(constraints: BoxConstraints(minHeight: v), child: w));

  set width(double v) => useParent((w) => SizedBox(width: v, child: w));
  set w(double v) => useParent((w) => SizedBox(width: v, child: w));
  set height(double v) => useParent((w) => SizedBox(height: v, child: w));
  set h(double v) => useParent((w) => SizedBox(height: v, child: w));
}
