// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';

import 'dart:ui';

import 'base.dart';

/// Niku extension for Column
///
/// Style property builder for building column
///
/// Example usage:
/// ```
/// NikuColumn([
///   Text("0"),
///   Text("1")
/// ])
///   .mainAxis(MainAxisAlignment.center)
///   .crossCenter()
///   .append(Text("2"))
///   .build()
/// ```
///
/// Meta property list:
/// - niku() - Switch to Niku() property
/// - build() - Apply styles and build FlatButton as Widget
///
/// Style Property list:
/// - mainAxisAlignemnt, mainAxis - Set main axis alignment
///   - mainStart, justifyStart - Using [MainAxisAlignment.start]
///   - mainCenter, justifyCenter - Using [MainAxisAlignment.center]
///   - mainEnd, justifyEnd - Using [MainAxisAlignment.end]
///   - spaceAround - Using [MainAxisAlignment.spaceAround]
///   - spaceBetween - Using [MainAxisAlignment.spaceBetween]
///   - spaceEvenly - Using [MainAxisAlignment.spaceEvenly]
/// - crossAxisAlignment, crossAxis - Set cross axis alignment
///   - baseline - Using [CrossAxisAlignment.baseline]
///   - crossStart, itemsStart - Using [CrossAxisAlignment.start]
///   - crossCenter, itemsCenter - Using [CrossAxisAlignment.center]
///   - crossEnd, itemsEnd - Using [CrossAxisAlignment.end]
///   - stretch - Using [CrossAxisAlignment.stretch]
/// - textDirection - Set whether text is left-to-right or right-to-left direction.
///   - textDirection - Set textDirection by using [TextDirection]
///   - ltr - Use left-to-right direction
///   - rtl - Use right-to-left direction
/// - verticalAlign - A direction in which boxes flow vertically
///   - up - Using [VerticalAlign.up]
///   - down - Using [VerticalAlign.down]
/// - textBaseline - A horizontal line used for aligning text
///   - alphabetic - Using [TextBaseline.alphabetic]
///   - ideographic - Using [TextBaseline.ideographic]
///
/// Children property list:
///   - child, append, appendChild - Append child
///   - children, appendChildren - Append all of children
///   - prepend, prependChild - Prepend child
///   - prependChildren - Prepend all of children
///   - insert - Insert child at index
///   - insertAll - Insert all children at index
class NikuColumn extends StatelessWidget {
  List<Widget> _children;

  MainAxisAlignment _mainAxisAlignment = MainAxisAlignment.start;
  MainAxisSize _mainAxisSize = MainAxisSize.max;
  CrossAxisAlignment _crossAxisAlignment = CrossAxisAlignment.center;
  TextDirection? _textDirection;
  VerticalDirection _verticalDirection = VerticalDirection.down;
  TextBaseline? _textBaseline;

  /// Niku extension for Column
  ///
  /// Style property builder for building column
  ///
  /// Example usage:
  /// ```
  /// NikuColumn([
  ///   Text("0"),
  ///   Text("1")
  /// ])
  ///   .mainAxis(MainAxisAlignment.center)
  ///   .crossCenter()
  ///   .append(Text("2"))
  ///   .build()
  /// ```
  ///
  /// Meta property list:
  /// - niku() - Switch to Niku() property
  /// - build() - Apply styles and build FlatButton as Widget
  ///
  /// Style Property list:
  /// - mainAxisAlignemnt, mainAxis - Set main axis alignment
  ///   - mainStart, justifyStart - Using [MainAxisAlignment.start]
  ///   - mainCenter, justifyCenter - Using [MainAxisAlignment.center]
  ///   - mainEnd, justifyEnd - Using [MainAxisAlignment.end]
  ///   - spaceAround - Using [MainAxisAlignment.spaceAround]
  ///   - spaceBetween - Using [MainAxisAlignment.spaceBetween]
  ///   - spaceEvenly - Using [MainAxisAlignment.spaceEvenly]
  /// - crossAxisAlignment, crossAxis - Set cross axis alignment
  ///   - baseline - Using [CrossAxisAlignment.baseline]
  ///   - crossStart, itemsStart - Using [CrossAxisAlignment.start]
  ///   - crossCenter, itemsCenter - Using [CrossAxisAlignment.center]
  ///   - crossEnd, itemsEnd - Using [CrossAxisAlignment.end]
  ///   - stretch - Using [CrossAxisAlignment.stretch]
  /// - textDirection - Set whether text is left-to-right or right-to-left direction.
  ///   - textDirection - Set textDirection by using [TextDirection]
  ///   - ltr - Use left-to-right direction
  ///   - rtl - Use right-to-left direction
  /// - verticalAlign - A direction in which boxes flow vertically
  ///   - up - Using [VerticalAlign.up]
  ///   - down - Using [VerticalAlign.down]
  /// - textBaseline - A horizontal line used for aligning text
  ///   - alphabetic - Using [TextBaseline.alphabetic]
  ///   - ideographic - Using [TextBaseline.ideographic]
  ///
  /// Children property list:
  ///   - child, append, appendChild - Append child
  ///   - children, appendChildren - Append all of children
  ///   - prepend, prependChild - Prepend child
  ///   - prependChildren - Prepend all of children
  ///   - insert - Insert child at index
  ///   - insertAll - Insert all children at index
  NikuColumn(this._children);

  /// Set main axis alignment
  ///
  /// Equivalent to
  /// ```
  /// Column(
  ///   mainAxisAlignment: input
  /// )
  /// ```
  NikuColumn mainAxisAlignment(MainAxisAlignment mainAxisAlignment) {
    this._mainAxisAlignment = mainAxisAlignment;

    return this;
  }

  /// Set main axis alignment
  ///
  /// Equivalent to
  /// ```
  /// Column(
  ///   mainAxisAlignment: input
  /// )
  /// ```
  NikuColumn mainAxis(MainAxisAlignment mainAxisAlignment) {
    this._mainAxisAlignment = mainAxisAlignment;

    return this;
  }

  /// Using [MainAxisAlignment.start]
  ///
  /// Equivalent to
  /// ```
  /// Column(
  ///   mainAxisAlignment: MainAxisAlignment.start
  /// )
  /// ```
  NikuColumn mainStart() {
    this._mainAxisAlignment = MainAxisAlignment.start;

    return this;
  }

  /// Using [MainAxisAlignment.center]
  ///
  /// Equivalent to
  /// ```
  /// Column(
  ///   mainAxisAlignment: MainAxisAlignment.center
  /// )
  /// ```
  NikuColumn mainCenter() {
    this._mainAxisAlignment = MainAxisAlignment.center;

    return this;
  }

  /// Using [MainAxisAlignment.end]
  ///
  /// Equivalent to
  /// ```
  /// Column(
  ///   mainAxisAlignment: MainAxisAlignment.end
  /// )
  /// ```
  NikuColumn mainEnd() {
    this._mainAxisAlignment = MainAxisAlignment.end;

    return this;
  }

  /// Using [MainAxisAlignment.start]
  ///
  /// Equivalent to
  /// ```
  /// Column(
  ///   mainAxisAlignment: MainAxisAlignment.start
  /// )
  /// ```
  NikuColumn justifyStart() {
    this._mainAxisAlignment = MainAxisAlignment.start;

    return this;
  }

  /// Using [MainAxisAlignment.center]
  ///
  /// Equivalent to
  /// ```
  /// Column(
  ///   mainAxisAlignment: MainAxisAlignment.center
  /// )
  /// ```
  NikuColumn justifyCenter() {
    this._mainAxisAlignment = MainAxisAlignment.center;

    return this;
  }

  /// Using [MainAxisAlignment.end]
  ///
  /// Equivalent to
  /// ```
  /// Column(
  ///   mainAxisAlignment: MainAxisAlignment.end
  /// )
  /// ```
  NikuColumn justifyEnd() {
    this._mainAxisAlignment = MainAxisAlignment.end;

    return this;
  }

  /// Using [MainAxisAlignment.spaceAround]
  ///
  /// Equivalent to
  /// ```
  /// Column(
  ///   mainAxisAlignment: MainAxisAlignment.spaceAround
  /// )
  /// ```
  NikuColumn spaceAround() {
    this._mainAxisAlignment = MainAxisAlignment.spaceAround;

    return this;
  }

  /// Using [MainAxisAlignment.spaceBetween]
  ///
  /// Equivalent to
  /// ```
  /// Column(
  ///   mainAxisAlignment: MainAxisAlignment.spaceBetween
  /// )
  /// ```
  NikuColumn spaceBetween() {
    this._mainAxisAlignment = MainAxisAlignment.spaceBetween;

    return this;
  }

  /// Using [MainAxisAlignment.spaceEvenly]
  ///
  /// Equivalent to
  /// ```
  /// Column(
  ///   mainAxisAlignment: MainAxisAlignment.spaceEvenly
  /// )
  /// ```
  NikuColumn spaceEvenly() {
    this._mainAxisAlignment = MainAxisAlignment.spaceEvenly;

    return this;
  }

  /// Set cross axis alignment
  ///
  /// Equivalent to
  /// ```
  /// Column(
  ///   crossAxisAlignment: input
  /// )
  /// ```
  NikuColumn crossAxisAlignment(CrossAxisAlignment crossAxisAlignment) {
    this._crossAxisAlignment = crossAxisAlignment;

    return this;
  }

  /// Set cross axis alignment
  ///
  /// Equivalent to
  /// ```
  /// Column(
  ///   crossAxisAlignment: input
  /// )
  /// ```
  NikuColumn crossAxis(CrossAxisAlignment crossAxisAlignment) {
    this._crossAxisAlignment = crossAxisAlignment;

    return this;
  }

  /// Set [CrossAxisAlignment.baseline]
  ///
  /// Equivalent to
  /// ```
  /// Column(
  ///   crossAxisAlignment: CrossAxisAlignment.baseline
  /// )
  /// ```
  NikuColumn baseline() {
    this._crossAxisAlignment = CrossAxisAlignment.baseline;

    return this;
  }

  /// Set [CrossAxisAlignment.start]
  ///
  /// Equivalent to
  /// ```
  /// Column(
  ///   crossAxisAlignment: CrossAxisAlignment.start
  /// )
  /// ```
  NikuColumn crossStart() {
    this._crossAxisAlignment = CrossAxisAlignment.start;

    return this;
  }

  /// Set [CrossAxisAlignment.center]
  ///
  /// Equivalent to
  /// ```
  /// Column(
  ///   crossAxisAlignment: CrossAxisAlignment.center
  /// )
  /// ```
  NikuColumn crossCenter() {
    this._crossAxisAlignment = CrossAxisAlignment.center;

    return this;
  }

  /// Set [CrossAxisAlignment.crossEnd]
  ///
  /// Equivalent to
  /// ```
  /// Column(
  ///   crossAxisAlignment: CrossAxisAlignment.crossEnd
  /// )
  /// ```
  NikuColumn crossEnd() {
    this._crossAxisAlignment = CrossAxisAlignment.end;

    return this;
  }

  /// Set [CrossAxisAlignment.start]
  ///
  /// Equivalent to
  /// ```
  /// Column(
  ///   crossAxisAlignment: CrossAxisAlignment.start
  /// )
  /// ```
  NikuColumn itemsStart() {
    this._crossAxisAlignment = CrossAxisAlignment.start;

    return this;
  }

  /// Set [CrossAxisAlignment.center]
  ///
  /// Equivalent to
  /// ```
  /// Column(
  ///   crossAxisAlignment: CrossAxisAlignment.center
  /// )
  /// ```
  NikuColumn itemsCenter() {
    this._crossAxisAlignment = CrossAxisAlignment.center;

    return this;
  }

  /// Set [CrossAxisAlignment.crossEnd]
  ///
  /// Equivalent to
  /// ```
  /// Column(
  ///   crossAxisAlignment: CrossAxisAlignment.crossEnd
  /// )
  /// ```
  NikuColumn itemsEnd() {
    this._crossAxisAlignment = CrossAxisAlignment.end;

    return this;
  }

  /// Set [CrossAxisAlignment.stretch]
  ///
  /// Equivalent to
  /// ```
  /// Column(
  ///   crossAxisAlignment: CrossAxisAlignment.stretch
  /// )
  /// ```
  NikuColumn stretch() {
    this._crossAxisAlignment = CrossAxisAlignment.stretch;

    return this;
  }

  /// Set whether text is left-to-right or right-to-left direction.
  ///
  /// Equivalent to
  /// ```
  /// Column(textDirection: input)
  /// ```
  NikuColumn textDirection(TextDirection textDirection) {
    this._textDirection = textDirection;

    return this;
  }

  /// Use left-to-right direction
  ///
  /// Equivalent to
  /// ```
  /// Column(textDirection: TextDirection.ltr)
  /// ```
  NikuColumn ltr() {
    this._textDirection = TextDirection.ltr;

    return this;
  }

  /// Use right-to-left direction
  ///
  /// Equivalent to
  /// ```
  /// Column(textDirection: TextDirection.rtl)
  /// ```
  NikuColumn rtl() {
    this._textDirection = TextDirection.rtl;

    return this;
  }

  /// A direction in which boxes flow vertically.
  ///
  /// Equivalent to
  /// ```
  /// Column(
  ///   verticalDirection: input
  /// )
  /// ```
  NikuColumn verticalDirection(VerticalDirection verticalDirection) {
    this._verticalDirection = verticalDirection;

    return this;
  }

  /// Using [VerticalDirection.up]
  ///
  /// Equivalent to
  /// ```
  /// Column(
  ///   verticalDirection: VerticalDirection.up
  /// )
  /// ```
  NikuColumn up() {
    this._verticalDirection = VerticalDirection.up;

    return this;
  }

  /// Using [VerticalDirection.down]
  ///
  /// Equivalent to
  /// ```
  /// Column(
  ///   verticalDirection: VerticalDirection.down
  /// )
  /// ```
  NikuColumn down() {
    this._verticalDirection = VerticalDirection.down;

    return this;
  }

  /// The common baseline that should be aligned between this text span and its parent text span, or, for the root text spans, with the line box.
  ///
  /// Equivalent to
  /// ```
  /// Column(
  ///   textBaseline: input
  /// )
  /// ```
  NikuColumn textBaseline(TextBaseline textBaseline) {
    this._textBaseline = textBaseline;

    return this;
  }

  /// Using [TextBaseline.alphabetic]
  ///
  /// Equivalent to
  /// ```
  /// Column(
  ///   textBaseline: Textbaseline.alphabetic
  /// )
  /// ```
  NikuColumn alphabetic() {
    this._textBaseline = TextBaseline.alphabetic;

    return this;
  }

  /// Using [TextBaseline.ideographic]
  ///
  /// Equivalent to
  /// ```
  /// Column(
  ///   textBaseline: Textbaseline.ideographic
  /// )
  /// ```
  NikuColumn ideographic() {
    this._textBaseline = TextBaseline.ideographic;

    return this;
  }

  /// Append child
  ///
  /// Equivalent to
  /// ```
  /// Column(
  ///   children: [
  ///     ...
  ///     input
  ///   ]
  /// )
  /// ```
  NikuColumn child(Widget child) {
    this._children.add(child);

    return this;
  }

  /// Append child
  ///
  /// Equivalent to
  /// ```
  /// Column(
  ///   children: [
  ///     ...
  ///     input
  ///   ]
  /// )
  /// ```
  NikuColumn append(Widget child) {
    this._children.add(child);

    return this;
  }

  /// Append child
  ///
  /// Equivalent to
  /// ```
  /// Column(
  ///   children: [
  ///     ...
  ///     input
  ///   ]
  /// )
  /// ```
  NikuColumn appendChild(Widget child) {
    this._children.add(child);

    return this;
  }

  /// Append all of children
  ///
  /// Equivalent to
  /// ```
  /// Column(
  ///   children: [
  ///     ...
  ///     input
  ///   ]
  /// )
  /// ```
  NikuColumn children(List<Widget> children) {
    this._children.addAll(children);

    return this;
  }

  /// Append all of children
  ///
  /// Equivalent to
  /// ```
  /// Column(
  ///   children: [
  ///     ...
  ///     input
  ///   ]
  /// )
  /// ```
  NikuColumn appendChildren(List<Widget> children) {
    this._children.addAll(children);

    return this;
  }

  /// Prepend child
  ///
  /// Equivalent to
  /// ```
  /// Column(
  ///   children: [
  ///     input,
  ///     ...
  ///   ]
  /// )
  /// ```
  NikuColumn prepend(Widget child) {
    this._children.insert(0, child);

    return this;
  }

  /// Prepend child
  ///
  /// Equivalent to
  /// ```
  /// Column(
  ///   children: [
  ///     input,
  ///     ...
  ///   ]
  /// )
  /// ```
  NikuColumn prependChild(Widget child) {
    this._children.insert(0, child);

    return this;
  }

  /// Prepend all of children
  ///
  /// Equivalent to
  /// ```
  /// Column(
  ///   children: [
  ///     input,
  ///     ...
  ///   ]
  /// )
  /// ```
  NikuColumn prependChildren(List<Widget> children) {
    this._children.insertAll(0, children);

    return this;
  }

  /// Insert child at index
  ///
  /// Equivalent to
  /// ```
  /// Column(
  ///   children: [
  ///     ...
  ///     input,
  ///     ...
  ///   ]
  /// )
  /// ```
  NikuColumn insert(int index, Widget child) {
    this._children.insert(index, child);

    return this;
  }

  /// Insert child at index
  ///
  /// Equivalent to
  /// ```
  /// Column(
  ///   children: [
  ///     ...
  ///     input,
  ///     ...
  ///   ]
  /// )
  /// ```
  NikuColumn insertAll(int index, List<Widget> children) {
    this._children.insertAll(index, children);

    return this;
  }

  /// Apply styles and build Column as Widget
  ///
  /// Example usage:
  /// ```
  /// NikuColumn([
  ///   Text("0"),
  ///   Text("1")
  /// ])
  ///   .mainAxis(MainAxisAlignment.center)
  ///   .crossCenter()
  ///   .append(Text("2"))
  ///   .build()
  /// ```
  build(context) => Column(
        key: key,
        children: this._children,
        mainAxisAlignment: this._mainAxisAlignment,
        mainAxisSize: this._mainAxisSize,
        crossAxisAlignment: this._crossAxisAlignment,
        textDirection: this._textDirection,
        verticalDirection: this._verticalDirection,
        textBaseline: this._textBaseline,
      );

  /// Switch to Niku() property
  ///
  /// After this method is called, NikuColumn property can't be applied anymore
  ///
  /// ```
  /// NikuColumn([
  ///   Text("0"),
  ///   Text("1")
  /// ])
  ///   .mainCenter()
  ///   .crossCenter()
  ///   .niku()
  ///   .bg(Colors.blue)
  ///   .build()
  /// ```
  Niku niku() => Niku(
        Builder(
          builder: (context) => build(context),
        ),
      );
}
