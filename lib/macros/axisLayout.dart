import 'package:flutter/material.dart';

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
}
