import 'package:flutter/material.dart';

import '../ntWidget/base.dart';

extension NTNikuWidget on Widget {
  /// Switch to Niku() property
  ///
  /// Wrap current widget with Niku, allowing custom property builder
  ///
  /// Example usage
  /// ```
  /// Container()
  ///   ..ntNiku()
  ///   ..bg(Colors.blue)
  /// ```
  NTNiku ntNiku() => NTNiku(this);
}
