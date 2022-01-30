import 'package:flutter/material.dart';

import '../widget/niku.dart';
import '../on.dart';

abstract class NikuBuildMacro {
  Widget? _parent;
  Widget useNiku(Widget Function(Niku) cb) => _parent = cb(Niku(widget));
  Widget useParent(Widget Function(Niku) cb) => _parent = cb(Niku(widget));

  set on(List<dynamic> dependencies) =>
      _parent = Niku(NikuOn(() => widget, dependencies));

  List<dynamic> get on {
    _parent = Niku(NikuOn(() => widget, []));

    return [];
  }

  void get freezed => _parent = Niku(NikuOn(() => widget, []));

  Widget get widget => SizedBox.shrink();

  Widget build(context) => _parent ?? widget;
}
