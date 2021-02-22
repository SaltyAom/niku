import 'package:flutter/material.dart';

import '../widget/base.dart';

extension NikuWidget on Widget {
  /// Switch to Niku() property
  ///
  /// Wrap current widget with Niku, allowing custom property builder
  ///
  /// Example usage
  /// ```
  /// Container()
  ///   .niku()
  ///   .bg(Colors.blue)
  ///   .build()
  /// ```
  Niku niku() => Niku(this);
}
