// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';

import 'dart:ui';

import './base.dart';

/// Niku extension for Row
///
/// Style property builder for building row
///
/// Example usage:
/// ```
/// NikuRow([
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
class NikuRow extends StatelessWidget {
  List<Widget> _children = [];

  MainAxisAlignment _mainAxisAlignment = MainAxisAlignment.start;
  MainAxisSize _mainAxisSize = MainAxisSize.max;
  CrossAxisAlignment _crossAxisAlignment = CrossAxisAlignment.start;
  TextDirection? _textDirection;
  VerticalDirection _verticalDirection = VerticalDirection.up;
  TextBaseline? _textBaseline;

  /// Niku extension for Row
  ///
  /// Style property builder for building row
  ///
  /// Example usage:
  /// ```
  /// NikuRow([
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
  NikuRow(this._children);

  /// Set main axis alignment
  ///
  /// Equivalent to
  /// ```
  /// Row(
  ///   mainAxisAlignment: input
  /// )
  /// ```
  NikuRow mainAxisAlignment(MainAxisAlignment mainAxisAlignment) {
    _mainAxisAlignment = mainAxisAlignment;

    return this;
  }

  /// Set main axis alignment
  ///
  /// Equivalent to
  /// ```
  /// Row(
  ///   mainAxisAlignment: input
  /// )
  /// ```
  NikuRow mainAxis(MainAxisAlignment mainAxisAlignment) {
    _mainAxisAlignment = mainAxisAlignment;

    return this;
  }

  /// Using [MainAxisAlignment.start]
  ///
  /// Equivalent to
  /// ```
  /// Row(
  ///   mainAxisAlignment: MainAxisAlignment.start
  /// )
  /// ```
  NikuRow mainStart() {
    _mainAxisAlignment = MainAxisAlignment.start;

    return this;
  }

  /// Using [MainAxisAlignment.center]
  ///
  /// Equivalent to
  /// ```
  /// Row(
  ///   mainAxisAlignment: MainAxisAlignment.center
  /// )
  /// ```
  NikuRow mainCenter() {
    _mainAxisAlignment = MainAxisAlignment.center;

    return this;
  }

  /// Using [MainAxisAlignment.end]
  ///
  /// Equivalent to
  /// ```
  /// Row(
  ///   mainAxisAlignment: MainAxisAlignment.end
  /// )
  /// ```
  NikuRow mainEnd() {
    _mainAxisAlignment = MainAxisAlignment.end;

    return this;
  }

  /// Using [MainAxisAlignment.start]
  ///
  /// Equivalent to
  /// ```
  /// Row(
  ///   mainAxisAlignment: MainAxisAlignment.start
  /// )
  /// ```
  NikuRow justifyStart() {
    _mainAxisAlignment = MainAxisAlignment.start;

    return this;
  }

  /// Using [MainAxisAlignment.center]
  ///
  /// Equivalent to
  /// ```
  /// Row(
  ///   mainAxisAlignment: MainAxisAlignment.center
  /// )
  /// ```
  NikuRow justifyCenter() {
    _mainAxisAlignment = MainAxisAlignment.center;

    return this;
  }

  /// Using [MainAxisAlignment.end]
  ///
  /// Equivalent to
  /// ```
  /// Row(
  ///   mainAxisAlignment: MainAxisAlignment.end
  /// )
  /// ```
  NikuRow justifyEnd() {
    _mainAxisAlignment = MainAxisAlignment.end;

    return this;
  }

  /// Using [MainAxisAlignment.spaceAround]
  ///
  /// Equivalent to
  /// ```
  /// Row(
  ///   mainAxisAlignment: MainAxisAlignment.spaceAround
  /// )
  /// ```
  NikuRow spaceAround() {
    _mainAxisAlignment = MainAxisAlignment.spaceAround;

    return this;
  }

  /// Using [MainAxisAlignment.spaceBetween]
  ///
  /// Equivalent to
  /// ```
  /// Row(
  ///   mainAxisAlignment: MainAxisAlignment.spaceBetween
  /// )
  /// ```
  NikuRow spaceBetween() {
    _mainAxisAlignment = MainAxisAlignment.spaceBetween;

    return this;
  }

  /// Using [MainAxisAlignment.spaceEvenly]
  ///
  /// Equivalent to
  /// ```
  /// Row(
  ///   mainAxisAlignment: MainAxisAlignment.spaceEvenly
  /// )
  /// ```
  NikuRow spaceEvenly() {
    _mainAxisAlignment = MainAxisAlignment.spaceEvenly;

    return this;
  }

  /// Set cross axis alignment
  ///
  /// Equivalent to
  /// ```
  /// Row(
  ///   crossAxisAlignment: input
  /// )
  /// ```
  NikuRow crossAxisAlignment(CrossAxisAlignment crossAxisAlignment) {
    _crossAxisAlignment = crossAxisAlignment;

    return this;
  }

  /// Set cross axis alignment
  ///
  /// Equivalent to
  /// ```
  /// Row(
  ///   crossAxisAlignment: input
  /// )
  /// ```
  NikuRow crossAxis(CrossAxisAlignment crossAxisAlignment) {
    _crossAxisAlignment = crossAxisAlignment;

    return this;
  }

  /// Set [CrossAxisAlignment.baseline]
  ///
  /// Equivalent to
  /// ```
  /// Row(
  ///   crossAxisAlignment: CrossAxisAlignment.baseline
  /// )
  /// ```
  NikuRow baseline() {
    _crossAxisAlignment = CrossAxisAlignment.baseline;

    return this;
  }

  /// Set [CrossAxisAlignment.start]
  ///
  /// Equivalent to
  /// ```
  /// Row(
  ///   crossAxisAlignment: CrossAxisAlignment.start
  /// )
  /// ```
  NikuRow crossStart() {
    _crossAxisAlignment = CrossAxisAlignment.start;

    return this;
  }

  /// Set [CrossAxisAlignment.center]
  ///
  /// Equivalent to
  /// ```
  /// Row(
  ///   crossAxisAlignment: CrossAxisAlignment.center
  /// )
  /// ```
  NikuRow crossCenter() {
    _crossAxisAlignment = CrossAxisAlignment.center;

    return this;
  }

  /// Set [CrossAxisAlignment.crossEnd]
  ///
  /// Equivalent to
  /// ```
  /// Row(
  ///   crossAxisAlignment: CrossAxisAlignment.crossEnd
  /// )
  /// ```
  NikuRow crossEnd() {
    _crossAxisAlignment = CrossAxisAlignment.end;

    return this;
  }

  /// Set [CrossAxisAlignment.start]
  ///
  /// Equivalent to
  /// ```
  /// Row(
  ///   crossAxisAlignment: CrossAxisAlignment.start
  /// )
  /// ```
  NikuRow itemsStart() {
    _crossAxisAlignment = CrossAxisAlignment.start;

    return this;
  }

  /// Set [CrossAxisAlignment.center]
  ///
  /// Equivalent to
  /// ```
  /// Row(
  ///   crossAxisAlignment: CrossAxisAlignment.center
  /// )
  /// ```
  NikuRow itemsCenter() {
    _crossAxisAlignment = CrossAxisAlignment.center;

    return this;
  }

  /// Set [CrossAxisAlignment.crossEnd]
  ///
  /// Equivalent to
  /// ```
  /// Row(
  ///   crossAxisAlignment: CrossAxisAlignment.crossEnd
  /// )
  /// ```
  NikuRow itemsEnd() {
    _crossAxisAlignment = CrossAxisAlignment.end;

    return this;
  }

  /// Set [CrossAxisAlignment.stretch]
  ///
  /// Equivalent to
  /// ```
  /// Row(
  ///   crossAxisAlignment: CrossAxisAlignment.stretch
  /// )
  /// ```
  NikuRow stretch() {
    _crossAxisAlignment = CrossAxisAlignment.stretch;

    return this;
  }

  /// Set whether text is left-to-right or right-to-left direction.
  ///
  /// Equivalent to
  /// ```
  /// Row(textDirection: input)
  /// ```
  NikuRow textDirection(TextDirection textDirection) {
    _textDirection = textDirection;

    return this;
  }

  /// Use left-to-right direction
  ///
  /// Equivalent to
  /// ```
  /// Row(textDirection: TextDirection.ltr)
  /// ```
  NikuRow ltr() {
    _textDirection = TextDirection.ltr;

    return this;
  }

  /// Use right-to-left direction
  ///
  /// Equivalent to
  /// ```
  /// Row(textDirection: TextDirection.rtl)
  /// ```
  NikuRow rtl() {
    _textDirection = TextDirection.rtl;

    return this;
  }

  /// A direction in which boxes flow vertically.
  ///
  /// Equivalent to
  /// ```
  /// Row(
  ///   verticalDirection: input
  /// )
  /// ```
  NikuRow verticalDirection(VerticalDirection verticalDirection) {
    _verticalDirection = verticalDirection;

    return this;
  }

  /// Using [VerticalDirection.up]
  ///
  /// Equivalent to
  /// ```
  /// Row(
  ///   verticalDirection: VerticalDirection.up
  /// )
  /// ```
  NikuRow up() {
    _verticalDirection = VerticalDirection.up;

    return this;
  }

  /// Using [VerticalDirection.down]
  ///
  /// Equivalent to
  /// ```
  /// Row(
  ///   verticalDirection: VerticalDirection.down
  /// )
  /// ```
  NikuRow down() {
    _verticalDirection = VerticalDirection.down;

    return this;
  }

  /// The common baseline that should be aligned between this text span and its parent text span, or, for the root text spans, with the line box.
  ///
  /// Equivalent to
  /// ```
  /// Row(
  ///   textBaseline: input
  /// )
  /// ```
  NikuRow textBaseline(TextBaseline textBaseline) {
    _textBaseline = textBaseline;

    return this;
  }

  /// Using [TextBaseline.alphabetic]
  ///
  /// Equivalent to
  /// ```
  /// Row(
  ///   textBaseline: Textbaseline.alphabetic
  /// )
  /// ```
  NikuRow alphabetic() {
    _textBaseline = TextBaseline.alphabetic;

    return this;
  }

  /// Using [TextBaseline.ideographic]
  ///
  /// Equivalent to
  /// ```
  /// Row(
  ///   textBaseline: Textbaseline.ideographic
  /// )
  /// ```
  NikuRow ideographic() {
    _textBaseline = TextBaseline.ideographic;

    return this;
  }

  /// Append child
  ///
  /// Equivalent to
  /// ```
  /// Row(
  ///   children: [
  ///     ...
  ///     input
  ///   ]
  /// )
  /// ```
  NikuRow child(Widget child) {
    _children.add(child);

    return this;
  }

  /// Append child
  ///
  /// Equivalent to
  /// ```
  /// Row(
  ///   children: [
  ///     ...
  ///     input
  ///   ]
  /// )
  /// ```
  NikuRow append(Widget child) {
    _children.add(child);

    return this;
  }

  /// Append child
  ///
  /// Equivalent to
  /// ```
  /// Row(
  ///   children: [
  ///     ...
  ///     input
  ///   ]
  /// )
  /// ```
  NikuRow appendChild(Widget child) {
    _children.add(child);

    return this;
  }

  /// Append all of children
  ///
  /// Equivalent to
  /// ```
  /// Row(
  ///   children: [
  ///     ...
  ///     input
  ///   ]
  /// )
  /// ```
  NikuRow children(List<Widget> children) {
    _children.addAll(children);

    return this;
  }

  /// Append all of children
  ///
  /// Equivalent to
  /// ```
  /// Row(
  ///   children: [
  ///     ...
  ///     input
  ///   ]
  /// )
  /// ```
  NikuRow appendChildren(List<Widget> children) {
    _children.addAll(children);

    return this;
  }

  /// Prepend child
  ///
  /// Equivalent to
  /// ```
  /// Row(
  ///   children: [
  ///     input,
  ///     ...
  ///   ]
  /// )
  /// ```
  NikuRow prepend(Widget child) {
    _children.insert(0, child);

    return this;
  }

  /// Prepend child
  ///
  /// Equivalent to
  /// ```
  /// Row(
  ///   children: [
  ///     input,
  ///     ...
  ///   ]
  /// )
  /// ```
  NikuRow prependChild(Widget child) {
    _children.insert(0, child);

    return this;
  }

  /// Prepend all of children
  ///
  /// Equivalent to
  /// ```
  /// Row(
  ///   children: [
  ///     input,
  ///     ...
  ///   ]
  /// )
  /// ```
  NikuRow prependChildren(List<Widget> children) {
    _children.insertAll(0, children);

    return this;
  }

  /// Insert child at index
  ///
  /// Equivalent to
  /// ```
  /// Row(
  ///   children: [
  ///     ...
  ///     input,
  ///     ...
  ///   ]
  /// )
  /// ```
  NikuRow insert(int index, Widget child) {
    _children.insert(index, child);

    return this;
  }

  /// Insert child at index
  ///
  /// Equivalent to
  /// ```
  /// Row(
  ///   children: [
  ///     ...
  ///     input,
  ///     ...
  ///   ]
  /// )
  /// ```
  NikuRow insertAll(int index, List<Widget> children) {
    _children.insertAll(index, children);

    return this;
  }

  /// Apply styles and build Row as Widget
  ///
  /// Example usage:
  /// ```
  /// NikuRow([
  ///   Text("0"),
  ///   Text("1")
  /// ])
  ///   .mainAxis(MainAxisAlignment.center)
  ///   .crossCenter()
  ///   .append(Text("2"))
  ///   .build()
  /// ```
  build(context) => Row(
        key: key,
        children: _children,
        mainAxisAlignment: _mainAxisAlignment,
        mainAxisSize: _mainAxisSize,
        crossAxisAlignment: _crossAxisAlignment,
        textDirection: _textDirection,
        verticalDirection: _verticalDirection,
        textBaseline: _textBaseline,
      );

  /// Switch to Niku() property
  ///
  /// After this method is called, NikuRow property can't be applied anymore
  ///
  /// ```
  /// NikuRow([
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
