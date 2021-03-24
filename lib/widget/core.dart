// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';

import 'package:meta/meta.dart';

class NikuCore extends StatelessWidget {
  double _mt = 0;
  double _mb = 0;
  double _ml = 0;
  double _mr = 0;

  double get getMt => _mt;
  double get getMb => _mb;
  double get getMl => _ml;
  double get getMr => _mr;

  /// Apply margin using [EdgeInset]
  ///
  /// Equivalent to
  /// ```
  /// Container(
  ///   margin: input
  /// )
  /// ```
  Widget margin(EdgeInsets padding) {
    _mt = padding.top;
    _ml = padding.left;
    _mb = padding.bottom;
    _mr = padding.right;

    return this;
  }

  /// Apply margin to top
  ///
  /// Equivalent to
  /// ```
  /// Container(
  ///   margin: EdgeInsets.all(input)
  /// )
  /// ```
  Widget m(double margin) {
    _mt = margin;
    _ml = margin;
    _mb = margin;
    _mr = margin;

    return this;
  }

  /// Apply margin to x axis
  ///
  /// Equivalent to
  /// ```
  /// Container(
  ///   margin: EdgeInsets.symmetric(horizontal: input)
  /// )
  /// ```
  Widget mx(double margin) {
    _ml = margin;
    _mr = margin;

    return this;
  }

  /// Apply margin to y axis
  ///
  /// Equivalent to
  /// ```
  /// Container(
  ///   margin: EdgeInsets.symmetric(vertical: input)
  /// )
  /// ```
  Widget my(double margin) {
    _mt = margin;
    _mb = margin;

    return this;
  }

  /// Apply margin to top
  ///
  /// Equivalent to
  /// ```
  /// Container(
  ///   margin: EdgeInsets.only(top: input)
  /// )
  /// ```
  Widget mt(double margin) {
    _mt = margin;

    return this;
  }

  /// Apply margin to left side
  ///
  /// Equivalent to
  /// ```
  /// Container(
  ///   margin: EdgeInsets.only(left: input)
  /// )
  /// ```
  Widget ml(double margin) {
    _ml = margin;

    return this;
  }

  /// Apply margin to bottom
  ///
  /// Equivalent to
  /// ```
  /// Container(
  ///   margin: EdgeInsets.only(bottom: input)
  /// )
  /// ```
  Widget mb(double margin) {
    _mb = margin;

    return this;
  }

  /// Apply margin to right side
  ///
  /// Equivalent to
  /// ```
  /// Container(
  ///   margin: EdgeInsets.only(right: input)
  /// )
  /// ```
  Widget mr(double margin) {
    _mr = margin;

    return this;
  }

  @visibleForOverriding
  build(context) => SizedBox.shrink();

  Widget internalBuild(Widget widget) {
    if ([getMt, getMl, getMb, getMr].every((element) => element == 0))
      return widget;

    return Container(
      margin: EdgeInsets.only(
        top: getMt,
        left: getMl,
        bottom: getMb,
        right: getMr,
      ),
      child: widget,
    );
  }
}