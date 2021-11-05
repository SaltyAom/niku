// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';

import 'dart:ui';

import 'base.dart';
import 'core.dart';

/// Niku extension for Stack
///
/// Style property builder for building stack
///
/// Example usage:
/// ```
/// NikuWrap([
///   Text("0"),
///   Text("1")
/// ])
///   .center()
///   .append(Text("2"))
/// ```
///
/// Meta property list:
/// - niku() - Switch to Niku() property
/// - build() - Apply styles and build FlatButton as Widget
///
/// Style Property list:
/// - direction - Set wrap direction
///   - horizontal - Using [Axis.horizontal]
///   - vertical - Using [Axis.vertical]
/// - alignment - How the children within a run should be placed in the main axis
///   - start, justifyStart - Using [WrapAlignment.start]
///   - center, justifyCenter - Using [WrapAlignment.center]
///   - end, justifyEnd - Using [WrapAlignment.end]
///   - spaceAround - Using [WrapAlignment.spaceAround]
///   - spaceBetween - Using [WrapAlignment.spaceBetween]
///   - spaceEvenly - Using [WrapAlignment.spaceEvenly]
/// - runAlignment - How the runs themselves should be placed in the cross axis
///   - runStart, runJustifyStart - Using [WrapAlignment.start]
///   - runCenter, runJustifyCenter - Using [WrapAlignment.center]
///   - runEnd, runJustifyEnd - Using [WrapAlignment.end]
///   - runSpaceAround - Using [WrapAlignment.spaceAround]
///   - runSpaceBetween - Using [WrapAlignment.spaceBetween]
///   - runSpaceEvenly - Using [WrapAlignment.spaceEvenly]
/// - crossAxisAlignment, cross - How the children within a run should be aligned relative to each other in the cross axis
///   - crossStart, itemsStart - Using [WrapCrossAlignment.start]
///   - crossCenter, itemsCenter - Using [WrapCrossAlignment.center]
///   - crossEnd, itemsEnd - Using [WrapCrossAlignment.end]
/// - verticalDirection - Determines the order to lay children out vertically and how to interpret start and end in the vertical direction.
///   - up - Using [VerticalDirection.up]
///   - down - Using [VerticalDirection.down]
/// - spacing - How much space to place between children in a run in the main axis.
/// - runSpacing - How much space to place between the runs themselves in the cross axis.
/// - textDirection - Set whether text is left-to-right or right-to-left direction.
///   - textDirection - Set textDirection by using [TextDirection]
///   - ltr - Use left-to-right direction
///   - rtl - Use right-to-left direction
/// - clip, clipBehavior - Add clip behavior of widget
class NikuWrap extends NikuCore {
  final List<Widget> _children;
  final Key? key;

  Axis _direction = Axis.horizontal;
  WrapAlignment _alignment = WrapAlignment.start;
  WrapAlignment _runAlignment = WrapAlignment.start;
  WrapCrossAlignment _crossAxisAlignment = WrapCrossAlignment.start;
  TextDirection? _textDirection;
  double _spacing = 0;
  double _runSpacing = 0;
  VerticalDirection _verticalDirection = VerticalDirection.down;
  Clip _clipBehavior = Clip.hardEdge;

  /// Niku extension for Wrap
  ///
  /// Style property builder for building stack
  ///
  /// Example usage:
  /// ```
  /// NikuWrap([
  ///   Text("0"),
  ///   Text("1")
  /// ])
  ///   .center()
  ///   .append(Text("2"))
  /// ```
  ///
  /// Meta property list:
  /// - niku() - Switch to Niku() property
  /// - build() - Apply styles and build FlatButton as Widget
  ///
  /// Style Property list:
  /// - direction - Set wrap direction
  ///   - horizontal - Using [Axis.horizontal]
  ///   - vertical - Using [Axis.vertical]
  /// - mainAxisAlignemnt, mainAxis - How the children within a run should be placed in the main axis
  ///   - start, justifyStart - Using [WrapAlignment.start]
  ///   - center, justifyCenter - Using [WrapAlignment.center]
  ///   - end, justifyEnd - Using [WrapAlignment.end]
  ///   - spaceAround - Using [WrapAlignment.spaceAround]
  ///   - spaceBetween - Using [WrapAlignment.spaceBetween]
  ///   - spaceEvenly - Using [WrapAlignment.spaceEvenly]
  /// - runMainAxisAlignemnt, runMainAxis - How the runs themselves should be placed in the cross axis
  ///   - mainStart, justifyStart - Using [WrapAlignment.start]
  ///   - mainCenter, justifyCenter - Using [WrapAlignment.center]
  ///   - mainEnd, justifyEnd - Using [WrapAlignment.end]
  ///   - spaceAround - Using [WrapAlignment.spaceAround]
  ///   - spaceBetween - Using [WrapAlignment.spaceBetween]
  ///   - spaceEvenly - Using [WrapAlignment.spaceEvenly]
  /// - crossAxisAlignment, crossAxis - How the children within a run should be aligned relative to each other in the cross axis
  ///   - baseline - Using [CrossAxisAlignment.baseline]
  ///   - crossStart, itemsStart - Using [CrossAxisAlignment.start]
  ///   - crossCenter, itemsCenter - Using [CrossAxisAlignment.center]
  /// - spacing - How much space to place between children in a run in the main axis.
  /// - runSpacing - How much space to place between the runs themselves in the cross axis.
  /// - textDirection - Set whether text is left-to-right or right-to-left direction.
  ///   - textDirection - Set textDirection by using [TextDirection]
  ///   - ltr - Use left-to-right direction
  ///   - rtl - Use right-to-left direction
  /// - clip, clipBehavior - Add clip behavior of widget
  NikuWrap(
    this._children, {
    this.key,
  });

  /// Set wrap direction
  ///
  /// Equivalent to
  /// ```
  /// Wrap(
  ///   direction: input
  /// )
  /// ```
  NikuWrap direction(Axis direction) {
    _direction = direction;

    return this;
  }

  /// Set wrap direction
  /// using [Axis.horizontal]
  ///
  /// Equivalent to
  /// ```
  /// Wrap(
  ///   direction: Axis.horizontal
  /// )
  /// ```
  NikuWrap horizontal() {
    _direction = Axis.horizontal;

    return this;
  }

  /// Set wrap direction
  /// using [Axis.vertical]
  ///
  /// Equivalent to
  /// ```
  /// Wrap(
  ///   direction: Axis.vertical
  /// )
  /// ```
  NikuWrap vertical() {
    _direction = Axis.vertical;

    return this;
  }

  /// How the children within a run should be placed in the main axis.
  ///
  /// Equivalent to
  /// ```
  /// Wrap(
  ///   alignment: input
  /// )
  /// ```
  NikuWrap alignment(WrapAlignment wrapAlignment) {
    _alignment = wrapAlignment;

    return this;
  }

  /// How the children within a run should be placed in the main axis.
  ///
  /// Using [WrapAlignment.start]
  ///
  /// Equivalent to
  /// ```
  /// Wrap(
  ///   alignment: WrapAlignment.start
  /// )
  /// ```
  NikuWrap start() {
    _alignment = WrapAlignment.start;

    return this;
  }

  /// How the children within a run should be placed in the main axis.
  ///
  /// Using [WrapAlignment.center]
  ///
  /// Equivalent to
  /// ```
  /// Wrap(
  ///   alignment: WrapAlignment.center
  /// )
  /// ```
  NikuWrap center() {
    _alignment = WrapAlignment.center;

    return this;
  }

  /// How the children within a run should be placed in the main axis.
  ///
  /// Using [WrapAlignment.end]
  ///
  /// Equivalent to
  /// ```
  /// Wrap(
  ///   alignment: WrapAlignment.end
  /// )
  /// ```
  NikuWrap end() {
    _alignment = WrapAlignment.end;

    return this;
  }

  /// How the children within a run should be placed in the main axis.
  ///
  /// Using [WrapAlignment.start]
  ///
  /// Equivalent to
  /// ```
  /// Wrap(
  ///   alignment: WrapAlignment.start
  /// )
  /// ```
  NikuWrap justifyStart() {
    _alignment = WrapAlignment.start;

    return this;
  }

  /// How the children within a run should be placed in the main axis.
  ///
  /// Using [WrapAlignment.center]
  ///
  /// Equivalent to
  /// ```
  /// Wrap(
  ///   alignment: WrapAlignment.center
  /// )
  /// ```
  NikuWrap justifyCenter() {
    _alignment = WrapAlignment.center;

    return this;
  }

  /// How the children within a run should be placed in the main axis.
  ///
  /// Using [WrapAlignment.end]
  ///
  /// Equivalent to
  /// ```
  /// Wrap(
  ///   alignment: WrapAlignment.end
  /// )
  /// ```
  NikuWrap justifyEnd() {
    _alignment = WrapAlignment.end;

    return this;
  }

  /// How the children within a run should be placed in the main axis.
  ///
  /// Using [WrapAlignment.spaceAround]
  ///
  /// Equivalent to
  /// ```
  /// Wrap(
  ///   alignment: WrapAlignment.spaceAround
  /// )
  /// ```
  NikuWrap spaceAround() {
    _alignment = WrapAlignment.spaceAround;

    return this;
  }

  /// How the children within a run should be placed in the main axis.
  ///
  /// Using [WrapAlignment.spaceBetween]
  ///
  /// Equivalent to
  /// ```
  /// Wrap(
  ///   alignment: WrapAlignment.spaceBetween
  /// )
  /// ```
  NikuWrap spaceBetween() {
    _alignment = WrapAlignment.spaceBetween;

    return this;
  }

  /// How the runs themselves should be placed in the cross axis.
  ///
  /// Using [WrapAlignment.spaceEvenly]
  ///
  /// Equivalent to
  /// ```
  /// Wrap(
  ///   alignment: WrapAlignment.spaceEvenly
  /// )
  /// ```
  NikuWrap spaceEvenly() {
    _alignment = WrapAlignment.spaceEvenly;

    return this;
  }

  /// How the runs themselves should be placed in the cross axis.
  ///
  /// Equivalent to
  /// ```
  /// Wrap(
  ///   runAlignment: input
  /// )
  /// ```
  NikuWrap runAlignment(WrapAlignment wrapAlignment) {
    _runAlignment = wrapAlignment;

    return this;
  }

  /// How the runs themselves should be placed in the cross axis.
  ///
  /// Using [WrapAlignment.start]
  ///
  /// Equivalent to
  /// ```
  /// Wrap(
  ///   runAlignment: WrapAlignment.start
  /// )
  /// ```
  NikuWrap runStart() {
    _runAlignment = WrapAlignment.start;

    return this;
  }

  /// How the runs themselves should be placed in the cross axis.
  ///
  /// Using [WrapAlignment.center]
  ///
  /// Equivalent to
  /// ```
  /// Wrap(
  ///   runAlignment: WrapAlignment.center
  /// )
  /// ```
  NikuWrap runCenter() {
    _runAlignment = WrapAlignment.center;

    return this;
  }

  /// How the runs themselves should be placed in the cross axis.
  ///
  /// Using [WrapAlignment.end]
  ///
  /// Equivalent to
  /// ```
  /// Wrap(
  ///   runAlignment: WrapAlignment.end
  /// )
  /// ```
  NikuWrap runEnd() {
    _runAlignment = WrapAlignment.end;

    return this;
  }

  /// How the runs themselves should be placed in the cross axis.
  ///
  /// Using [WrapAlignment.start]
  ///
  /// Equivalent to
  /// ```
  /// Wrap(
  ///   runAlignment: WrapAlignment.start
  /// )
  /// ```
  NikuWrap runJustifyStart() {
    _runAlignment = WrapAlignment.start;

    return this;
  }

  /// How the runs themselves should be placed in the cross axis.
  ///
  /// Using [WrapAlignment.center]
  ///
  /// Equivalent to
  /// ```
  /// Wrap(
  ///   runAlignment: WrapAlignment.center
  /// )
  /// ```
  NikuWrap runJustifyCenter() {
    _runAlignment = WrapAlignment.center;

    return this;
  }

  /// How the runs themselves should be placed in the cross axis.
  ///
  /// Using [WrapAlignment.end]
  ///
  /// Equivalent to
  /// ```
  /// Wrap(
  ///   runAlignment: WrapAlignment.end
  /// )
  /// ```
  NikuWrap runJustifyEnd() {
    _runAlignment = WrapAlignment.end;

    return this;
  }

  /// How the runs themselves should be placed in the cross axis.
  ///
  /// Using [WrapAlignment.spaceAround]
  ///
  /// Equivalent to
  /// ```
  /// Wrap(
  ///   runAlignment: WrapAlignment.spaceAround
  /// )
  /// ```
  NikuWrap runSpaceAround() {
    _runAlignment = WrapAlignment.spaceAround;

    return this;
  }

  /// How the runs themselves should be placed in the cross axis.
  ///
  /// Using [WrapAlignment.spaceBetween]
  ///
  /// Equivalent to
  /// ```
  /// Wrap(
  ///   alignment: WrapAlignment.spaceBetween
  /// )
  /// ```
  NikuWrap runSpaceBetween() {
    _runAlignment = WrapAlignment.spaceBetween;

    return this;
  }

  /// How the children within a run should be aligned relative to each other in the cross axis.
  ///
  /// Using [WrapAlignment.spaceEvenly]
  ///
  /// Equivalent to
  /// ```
  /// Wrap(
  ///   alignment: WrapAlignment.spaceEvenly
  /// )
  /// ```
  NikuWrap runSpaceEvenly() {
    _runAlignment = WrapAlignment.spaceEvenly;

    return this;
  }

  /// How the children within a run should be aligned relative to each other in the cross axis.
  ///
  /// Equivalent to
  /// ```
  /// Wrap(
  ///   crossAxisAlignment: input
  /// )
  /// ```
  NikuWrap crossAxisAlignment(WrapCrossAlignment crossAxisAlignment) {
    _crossAxisAlignment = crossAxisAlignment;

    return this;
  }

  /// How the children within a run should be aligned relative to each other in the cross axis.
  ///
  /// Equivalent to
  /// ```
  /// Wrap(
  ///   crossAxisAlignment: input
  /// )
  /// ```
  NikuWrap cross(WrapCrossAlignment crossAxisAlignment) {
    _crossAxisAlignment = crossAxisAlignment;

    return this;
  }

  /// How the children within a run should be aligned relative to each other in the cross axis.
  ///
  /// Set [WrapCrossAlignment.start]
  ///
  /// Equivalent to
  /// ```
  /// Wrap(
  ///   crossAxisAlignment: WrapCrossAlignment.start
  /// )
  /// ```
  NikuWrap crossStart() {
    _crossAxisAlignment = WrapCrossAlignment.start;

    return this;
  }

  /// How the children within a run should be aligned relative to each other in the cross axis.
  ///
  /// Set [WrapCrossAlignment.center]
  ///
  /// Equivalent to
  /// ```
  /// Wrap(
  ///   crossAxisAlignment: WrapCrossAlignment.center
  /// )
  /// ```
  NikuWrap crossCenter() {
    _crossAxisAlignment = WrapCrossAlignment.center;

    return this;
  }

  /// How the children within a run should be aligned relative to each other in the cross axis.
  ///
  /// Set [WrapCrossAlignment.crossEnd]
  ///
  /// Equivalent to
  /// ```
  /// Wrap(
  ///   crossAxisAlignment: WrapCrossAlignment.crossEnd
  /// )
  /// ```
  NikuWrap crossEnd() {
    _crossAxisAlignment = WrapCrossAlignment.end;

    return this;
  }

  /// How the children within a run should be aligned relative to each other in the cross axis.
  ///
  /// Set [WrapCrossAlignment.start]
  ///
  /// Equivalent to
  /// ```
  /// Wrap(
  ///   crossAxisAlignment: WrapCrossAlignment.start
  /// )
  /// ```
  NikuWrap itemsStart() {
    _crossAxisAlignment = WrapCrossAlignment.start;

    return this;
  }

  /// How the children within a run should be aligned relative to each other in the cross axis.
  ///
  /// Set [WrapCrossAlignment.center]
  ///
  /// Equivalent to
  /// ```
  /// Wrap(
  ///   crossAxisAlignment: WrapCrossAlignment.center
  /// )
  /// ```
  NikuWrap itemsCenter() {
    _crossAxisAlignment = WrapCrossAlignment.center;

    return this;
  }

  /// How the children within a run should be aligned relative to each other in the cross axis.
  ///
  /// Set [WrapCrossAlignment.crossEnd]
  ///
  /// Equivalent to
  /// ```
  /// Wrap(
  ///   crossAxisAlignment: WrapCrossAlignment.crossEnd
  /// )
  /// ```
  NikuWrap itemsEnd() {
    _crossAxisAlignment = WrapCrossAlignment.end;

    return this;
  }

  /// Set whether text is left-to-right or right-to-left direction.
  ///
  /// Equivalent to
  /// ```
  /// Stack(textDirection: input)
  /// ```
  NikuWrap textDirection(TextDirection textDirection) {
    _textDirection = textDirection;

    return this;
  }

  /// Use left-to-right direction
  ///
  /// Equivalent to
  /// ```
  /// Stack(textDirection: TextDirection.ltr)
  /// ```
  NikuWrap ltr() {
    _textDirection = TextDirection.ltr;

    return this;
  }

  /// Use right-to-left direction
  ///
  /// Equivalent to
  /// ```
  /// Stack(textDirection: TextDirection.rtl)
  /// ```
  NikuWrap rtl() {
    _textDirection = TextDirection.rtl;

    return this;
  }

  /// How much space to place between children in a run in the main axis.
  ///
  /// Equivalent to
  /// ```
  /// Stack(textDirection: TextDirection.rtl)
  /// ```
  NikuWrap spacing(double spacing) {
    _spacing = spacing;

    return this;
  }

  /// How much space to place between the runs themselves in the cross axis.
  ///
  /// Equivalent to
  /// ```
  /// Stack(textDirection: TextDirection.rtl)
  /// ```
  NikuWrap runSpacing(double runSpacing) {
    _runSpacing = runSpacing;

    return this;
  }

  /// Determines the order to lay children out vertically and how to interpret start and end in the vertical direction.
  ///
  /// Equivalent to
  /// ```
  /// Stack(verticalDirection: input)
  /// ```
  NikuWrap verticalDirection(VerticalDirection direction) {
    _verticalDirection = direction;

    return this;
  }

  /// Determines the order to lay children out vertically and how to interpret start and end in the vertical direction.
  ///
  /// Using [VerticalDirection.up]
  ///
  /// Equivalent to
  /// ```
  /// Stack(verticalDirection: VerticalDirection.up)
  /// ```
  NikuWrap up() {
    _verticalDirection = VerticalDirection.up;

    return this;
  }

  /// Determines the order to lay children out vertically and how to interpret start and end in the vertical direction.
  ///
  /// Using [VerticalDirection.down]
  ///
  /// Equivalent to
  /// ```
  /// Stack(verticalDirection: VerticalDirection.down)
  /// ```
  NikuWrap down() {
    _verticalDirection = VerticalDirection.down;

    return this;
  }

  /// Add clip behavior of widget
  ///
  /// Equivalent to:
  /// ```
  /// Stack(
  ///   clipBehavior: input
  /// )
  /// ```
  NikuWrap clipBehavior(Clip clip) {
    _clipBehavior = clip;

    return this;
  }

  /// Add clip behavior of widget
  ///
  /// Equivalent to:
  /// ```
  /// Stack(
  ///   clipBehavior: input
  /// )
  /// ```
  NikuWrap clip(Clip clip) {
    _clipBehavior = clip;

    return this;
  }

  /// Append child
  ///
  /// Equivalent to
  /// ```
  /// Stack(
  ///   children: [
  ///     ...
  ///     input
  ///   ]
  /// )
  /// ```
  NikuWrap child(Widget child) {
    _children.add(child);

    return this;
  }

  /// Append child
  ///
  /// Equivalent to
  /// ```
  /// Stack(
  ///   children: [
  ///     ...
  ///     input
  ///   ]
  /// )
  /// ```
  NikuWrap append(Widget child) {
    _children.add(child);

    return this;
  }

  /// Append child
  ///
  /// Equivalent to
  /// ```
  /// Stack(
  ///   children: [
  ///     ...
  ///     input
  ///   ]
  /// )
  /// ```
  NikuWrap appendChild(Widget child) {
    _children.add(child);

    return this;
  }

  /// Append all of children
  ///
  /// Equivalent to
  /// ```
  /// Stack(
  ///   children: [
  ///     ...
  ///     input
  ///   ]
  /// )
  /// ```
  NikuWrap children(List<Widget> children) {
    _children.addAll(children);

    return this;
  }

  /// Append all of children
  ///
  /// Equivalent to
  /// ```
  /// Stack(
  ///   children: [
  ///     ...
  ///     input
  ///   ]
  /// )
  /// ```
  NikuWrap appendChildren(List<Widget> children) {
    _children.addAll(children);

    return this;
  }

  /// Prepend child
  ///
  /// Equivalent to
  /// ```
  /// Stack(
  ///   children: [
  ///     input,
  ///     ...
  ///   ]
  /// )
  /// ```
  NikuWrap prepend(Widget child) {
    _children.insert(0, child);

    return this;
  }

  /// Prepend child
  ///
  /// Equivalent to
  /// ```
  /// Stack(
  ///   children: [
  ///     input,
  ///     ...
  ///   ]
  /// )
  /// ```
  NikuWrap prependChild(Widget child) {
    _children.insert(0, child);

    return this;
  }

  /// Prepend all of children
  ///
  /// Equivalent to
  /// ```
  /// Stack(
  ///   children: [
  ///     input,
  ///     ...
  ///   ]
  /// )
  /// ```
  NikuWrap prependChildren(List<Widget> children) {
    _children.insertAll(0, children);

    return this;
  }

  /// Insert child at index
  ///
  /// Equivalent to
  /// ```
  /// Stack(
  ///   children: [
  ///     ...
  ///     input,
  ///     ...
  ///   ]
  /// )
  /// ```
  NikuWrap insert(int index, Widget child) {
    _children.insert(index, child);

    return this;
  }

  /// Insert child at index
  ///
  /// Equivalent to
  /// ```
  /// Stack(
  ///   children: [
  ///     ...
  ///     input,
  ///     ...
  ///   ]
  /// )
  /// ```
  NikuWrap insertAll(int index, List<Widget> children) {
    _children.insertAll(index, children);

    return this;
  }

  /// Apply styles and build Stack as Widget
  ///
  /// Example usage:
  /// ```
  /// NikuWrap([
  ///   Text("0"),
  ///   Text("1")
  /// ])
  ///   .center()
  ///   .append(Text("2"))
  /// ```
  @override
  build(context) => internalBuild(
        Wrap(
          key: key,
          children: _children,
          direction: _direction,
          alignment: _alignment,
          runAlignment: _runAlignment,
          crossAxisAlignment: _crossAxisAlignment,
          spacing: _spacing,
          runSpacing: _runSpacing,
          textDirection: _textDirection,
          clipBehavior: _clipBehavior,
          verticalDirection: _verticalDirection,
        ),
      );

  /// Switch to Niku() property
  ///
  /// After this method is called, NikuWrap property can't be applied anymore
  ///
  /// ```
  /// NikuWrap([
  ///   Text("0"),
  ///   Text("1")
  /// ])
  ///   .center()
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
