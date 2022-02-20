import 'package:flutter/material.dart';

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
}
