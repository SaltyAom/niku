// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';

import 'dart:ui';

import 'base.dart';
import 'core.dart';

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
/// - mainAxisSize, mainAxis - Set main axis size
///   - sizeMax - Using [MainAxisSize.max]
///   - sizeMin - Using [MainAxisSize.min]
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
/// - margin, m - Padding of container
///   - margin, m - apply margin to all side
///   - mx - apply margin to x axis
///   - my - apply margin y axis
///   - mt - apply margin top side
///   - ml - apply margin left side
///   - mb - apply margin bottom side
///   - ml - apply margin right side

///
/// Children property list:
///   - child, append, appendChild - Append child
///   - children, appendChildren - Append all of children
///   - prepend, prependChild - Prepend child
///   - prependChildren - Prepend all of children
///   - insert - Insert child at index
///   - insertAll - Insert all children at index
class NikuColumn extends NikuCore {
  final List<Widget> _children;
  final Key? key;

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
  /// - mainAxisSize, mainAxis - Set main axis size
  ///   - sizeMax - Using [MainAxisSize.max]
  ///   - sizeMin - Using [MainAxisSize.min]
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
  NikuColumn(
    this._children, {
    this.key,
  });

  /// Set main axis alignment
  ///
  /// Equivalent to
  /// ```
  /// Column(
  ///   mainAxisAlignment: input
  /// )
  /// ```
  NikuColumn mainAxisAlignment(MainAxisAlignment mainAxisAlignment) {
    _mainAxisAlignment = mainAxisAlignment;

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
    _mainAxisAlignment = mainAxisAlignment;

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
    _mainAxisAlignment = MainAxisAlignment.start;

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
    _mainAxisAlignment = MainAxisAlignment.center;

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
    _mainAxisAlignment = MainAxisAlignment.end;

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
    _mainAxisAlignment = MainAxisAlignment.start;

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
    _mainAxisAlignment = MainAxisAlignment.center;

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
    _mainAxisAlignment = MainAxisAlignment.end;

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
    _mainAxisAlignment = MainAxisAlignment.spaceAround;

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
    _mainAxisAlignment = MainAxisAlignment.spaceBetween;

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
    _mainAxisAlignment = MainAxisAlignment.spaceEvenly;

    return this;
  }

  /// Set main axis size
  ///
  /// Equivalent to
  /// ```
  /// Column(
  ///   mainAxisSize: input
  /// )
  /// ```
  NikuColumn mainSize(MainAxisSize size) {
    _mainAxisSize = size;

    return this;
  }

  /// Using [MainAxisSize.max]
  ///
  /// Equivalent to
  /// ```
  /// Column(
  ///   mainAxisSize: MainAxisSize.max
  /// )
  /// ```
  NikuColumn sizeMax() {
    _mainAxisSize = MainAxisSize.max;

    return this;
  }

  /// Using [MainAxisSize.min]
  ///
  /// Equivalent to
  /// ```
  /// Column(
  ///   mainAxisSize: MainAxisSize.min
  /// )
  /// ```
  NikuColumn sizeMin() {
    _mainAxisSize = MainAxisSize.min;

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
    _crossAxisAlignment = crossAxisAlignment;

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
    _crossAxisAlignment = crossAxisAlignment;

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
    _crossAxisAlignment = CrossAxisAlignment.baseline;

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
    _crossAxisAlignment = CrossAxisAlignment.start;

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
    _crossAxisAlignment = CrossAxisAlignment.center;

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
    _crossAxisAlignment = CrossAxisAlignment.end;

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
    _crossAxisAlignment = CrossAxisAlignment.start;

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
    _crossAxisAlignment = CrossAxisAlignment.center;

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
    _crossAxisAlignment = CrossAxisAlignment.end;

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
    _crossAxisAlignment = CrossAxisAlignment.stretch;

    return this;
  }

  /// Set whether text is left-to-right or right-to-left direction.
  ///
  /// Equivalent to
  /// ```
  /// Column(textDirection: input)
  /// ```
  NikuColumn textDirection(TextDirection textDirection) {
    _textDirection = textDirection;

    return this;
  }

  /// Use left-to-right direction
  ///
  /// Equivalent to
  /// ```
  /// Column(textDirection: TextDirection.ltr)
  /// ```
  NikuColumn ltr() {
    _textDirection = TextDirection.ltr;

    return this;
  }

  /// Use right-to-left direction
  ///
  /// Equivalent to
  /// ```
  /// Column(textDirection: TextDirection.rtl)
  /// ```
  NikuColumn rtl() {
    _textDirection = TextDirection.rtl;

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
    _verticalDirection = verticalDirection;

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
    _verticalDirection = VerticalDirection.up;

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
    _verticalDirection = VerticalDirection.down;

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
    _textBaseline = textBaseline;

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
    _textBaseline = TextBaseline.alphabetic;

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
    _textBaseline = TextBaseline.ideographic;

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
    _children.add(child);

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
    _children.add(child);

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
    _children.add(child);

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
    _children.addAll(children);

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
    _children.addAll(children);

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
    _children.insert(0, child);

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
    _children.insert(0, child);

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
    _children.insertAll(0, children);

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
    _children.insert(index, child);

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
    _children.insertAll(index, children);

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
  /// ```
  @override
  build(context) => internalBuild(
        Column(
          key: key,
          children: _children,
          mainAxisAlignment: _mainAxisAlignment,
          mainAxisSize: _mainAxisSize,
          crossAxisAlignment: _crossAxisAlignment,
          textDirection: _textDirection,
          verticalDirection: _verticalDirection,
          textBaseline: _textBaseline,
        ),
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
  /// ```
  Niku niku() => Niku(
        Builder(
          builder: (context) => build(context),
        ),
        key,
      );
}
