import 'package:flutter/material.dart';

import '../widget/niku.dart';
import '../on.dart';

abstract class NikuBuildMacro {
  Widget? parent;
  Widget useNiku(Widget Function(Niku) cb) => parent = cb(Niku(widget));
  Widget useParent(Widget Function(Niku) cb) => parent = cb(Niku(widget));

  set on(List<dynamic> dependencies) =>
      parent = Niku(NikuOn(() => widget, dependencies));

  List<dynamic> get on {
    parent = Niku(NikuOn(() => widget, []));

    return [];
  }

  void get freezed => parent = Niku(NikuOn(() => widget, []));

  Widget get widget => SizedBox.shrink();

  Widget build(context) => parent ?? widget;
}
