import 'package:flutter/material.dart';

import '../widget/niku.dart';

abstract class NikuBuildMacro {
  Widget? parent;
  Widget useNiku(Widget Function(Niku) cb) => parent = cb(Niku(value));
  Widget useParent(Widget Function(Niku) cb) => parent = cb(Niku(value));

  Widget get value => SizedBox.shrink();

  Widget build(context) => parent ?? value;
}
