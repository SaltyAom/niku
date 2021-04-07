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
/// NikuStack([
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
/// - alignment, align - Set self alignment
///   - align - Accept [AlignmentDirectional] to align self
///   - topStart - Apply widget to top-start
///   - topCenter - Apply widget to top-center
///   - topEnd - Apply widget to top-end
///   - centerStart - Apply widget to center-start
///   - center - Apply widget to center
///   - centerEnd - Apply widget to center-end
///   - bottomStart - Apply widget to bottom-start
///   - bottomCenter - Apply widget to bottom-center
///   - bottomEnd - Apply widget to bottom-end
/// - textDirection - Set whether text is left-to-right or right-to-left direction.
///   - textDirection - Set textDirection by using [TextDirection]
///   - ltr - Use left-to-right direction
///   - rtl - Use right-to-left direction
/// - stackFit - Adjust fit using [StackFit] of stack
///   - stackFit, fit - Adjust fit using [StackFit] of stack
///   - expand - Using [StackFit.expand]
///   - passthrogh - Using [StackFit.passthrough]
///   - loose - Using [StackFit.loose]
/// - clip, clipBehavior - Add clip behavior of widget
///
/// - margin, m - Padding of container
///   - margin, m - apply margin to all side
///   - mx - apply margin to x axis
///   - my - apply margin y axis
///   - mt - apply margin top side
///   - ml - apply margin left side
///   - mb - apply margin bottom side
///   - ml - apply margin right side
class NikuStack extends NikuCore {
  List<Widget> _children;
  Key? key;

  AlignmentDirectional _alignment = AlignmentDirectional.topStart;
  TextDirection? _textDirection;
  StackFit _fit = StackFit.loose;
  Clip _clipBehavior = Clip.hardEdge;

  /// Niku extension for Stack
  ///
  /// Style property builder for building stack
  ///
  /// Example usage:
  /// ```
  /// NikuStack([
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
  /// - alignment, align - Set self alignment
  ///   - align - Accept [AlignmentDirectional] to align self
  ///   - topStart - Apply widget to top-start
  ///   - topCenter - Apply widget to top-center
  ///   - topEnd - Apply widget to top-end
  ///   - centerStart - Apply widget to center-start
  ///   - center - Apply widget to center
  ///   - centerEnd - Apply widget to center-end
  ///   - bottomStart - Apply widget to bottom-start
  ///   - bottomCenter - Apply widget to bottom-center
  ///   - bottomEnd - Apply widget to bottom-end
  /// - textDirection - Set whether text is left-to-right or right-to-left direction.
  ///   - textDirection - Set textDirection by using [TextDirection]
  ///   - ltr - Use left-to-right direction
  ///   - rtl - Use right-to-left direction
  /// - stackFit - Adjust fit using [StackFit] of stack
  ///   - stackFit, fit - Adjust fit using [StackFit] of stack
  ///   - expand - Using [StackFit.expand]
  ///   - passthrogh - Using [StackFit.passthrough]
  ///   - loose - Using [StackFit.loose]
  /// - clip, clipBehavior - Add clip behavior of widget
  NikuStack(this._children, {key});

  /// Apply alignment to stack
  ///
  /// Equivalent to:
  /// ```
  /// Stack(
  ///   alignment: input
  /// )
  /// ```
  NikuStack alignment(AlignmentDirectional alignment) {
    _alignment = alignment;

    return this;
  }

  /// Apply alignment to stack
  ///
  /// Equivalent to:
  /// ```
  /// Stack(
  ///   alignment: input
  /// )
  /// ```
  NikuStack align(AlignmentDirectional alignment) {
    _alignment = alignment;

    return this;
  }

  /// Apply widget to top start
  ///
  /// Equivalent to:
  /// ```
  /// Stack(
  ///   alignment: AlignmentDirectional.topStart
  /// )
  /// ```
  NikuStack topStart() {
    _alignment = AlignmentDirectional.topStart;

    return this;
  }

  /// Apply widget to top center
  ///
  /// Equivalent to:
  /// ```
  /// Stack(
  ///   alignment: AlignmentDirectional.topCenter
  /// )
  /// ```
  NikuStack topCenter() {
    _alignment = AlignmentDirectional.topCenter;

    return this;
  }

  /// Apply widget to top end
  ///
  /// Equivalent to:
  /// ```
  /// Stack(
  ///   alignment: AlignmentDirectional.topEnd
  /// )
  /// ```
  NikuStack topEnd() {
    _alignment = AlignmentDirectional.topEnd;

    return this;
  }

  /// Apply widget to center start
  ///
  /// Equivalent to:
  /// ```
  /// Stack(
  ///   alignment: AlignmentDirectional.centerStart
  /// )
  /// ```
  NikuStack centerStart() {
    _alignment = AlignmentDirectional.centerStart;

    return this;
  }

  /// Apply widget to center
  ///
  /// Equivalent to:
  /// ```
  /// Stack(
  ///   alignment: AlignmentDirectional.center
  /// )
  /// ```
  NikuStack center() {
    _alignment = AlignmentDirectional.center;

    return this;
  }

  /// Apply widget to center end
  ///
  /// Equivalent to:
  /// ```
  /// Stack(
  ///   alignment: AlignmentDirectional.centerEnd
  /// )
  /// ```
  NikuStack centerEnd() {
    _alignment = AlignmentDirectional.centerEnd;

    return this;
  }

  /// Apply widget to bottom start
  ///
  /// Equivalent to:
  /// ```
  /// Stack(
  ///   alignment: AlignmentDirectional.bottomStart
  /// )
  /// ```
  NikuStack bottomStart() {
    _alignment = AlignmentDirectional.bottomStart;

    return this;
  }

  /// Apply widget to bottom end
  ///
  /// Equivalent to:
  /// ```
  /// Stack(
  ///   alignment: AlignmentDirectional.bottomCenter
  /// )
  /// ```
  NikuStack bottomCenter() {
    _alignment = AlignmentDirectional.bottomCenter;

    return this;
  }

  /// Apply widget to bottom right
  ///
  /// Equivalent to:
  /// ```
  /// Stack(
  ///   alignment: AlignmentDirectional.bottomEnd
  /// )
  /// ```
  NikuStack bottomEnd() {
    _alignment = AlignmentDirectional.bottomEnd;

    return this;
  }

  /// Set whether text is left-to-right or right-to-left direction.
  ///
  /// Equivalent to
  /// ```
  /// Stack(textDirection: input)
  /// ```
  NikuStack textDirection(TextDirection textDirection) {
    _textDirection = textDirection;

    return this;
  }

  /// Use left-to-right direction
  ///
  /// Equivalent to
  /// ```
  /// Stack(textDirection: TextDirection.ltr)
  /// ```
  NikuStack ltr() {
    _textDirection = TextDirection.ltr;

    return this;
  }

  /// Use right-to-left direction
  ///
  /// Equivalent to
  /// ```
  /// Stack(textDirection: TextDirection.rtl)
  /// ```
  NikuStack rtl() {
    _textDirection = TextDirection.rtl;

    return this;
  }

  /// Adjust fit using [StackFit] of stack
  ///
  /// Equivalent to:
  /// ```
  /// Stack(
  ///   fit: input
  /// )
  /// ```
  NikuStack stackFit(StackFit fit) {
    _fit = fit;

    return this;
  }

  /// Adjust fit using [StackFit] of stack
  ///
  /// Equivalent to:
  /// ```
  /// Stack(
  ///   fit: input
  /// )
  /// ```
  NikuStack fit(StackFit fit) {
    _fit = fit;

    return this;
  }

  /// Adjust fit using [StackFit] of stack
  ///
  /// Using [StackFit.expand]
  ///
  /// Equivalent to:
  /// ```
  /// Stack(
  ///   fit: StackFit.expand
  /// )
  /// ```
  NikuStack expand() {
    _fit = StackFit.expand;

    return this;
  }

  /// Adjust fit using [StackFit] of stack
  ///
  /// Using [StackFit.passthrough]
  ///
  /// Equivalent to:
  /// ```
  /// Stack(
  ///   fit: StackFit.passthrough
  /// )
  /// ```
  NikuStack passthrough() {
    _fit = StackFit.passthrough;

    return this;
  }

  /// Adjust fit using [StackFit] of stack
  ///
  /// Using [StackFit.loose]
  ///
  /// Equivalent to:
  /// ```
  /// Stack(
  ///   fit: StackFit.loose
  /// )
  /// ```
  NikuStack loose() {
    _fit = StackFit.loose;

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
  NikuStack clipBehavior(Clip clip) {
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
  NikuStack clip(Clip clip) {
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
  NikuStack child(Widget child) {
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
  NikuStack append(Widget child) {
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
  NikuStack appendChild(Widget child) {
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
  NikuStack children(List<Widget> children) {
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
  NikuStack appendChildren(List<Widget> children) {
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
  NikuStack prepend(Widget child) {
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
  NikuStack prependChild(Widget child) {
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
  NikuStack prependChildren(List<Widget> children) {
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
  NikuStack insert(int index, Widget child) {
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
  NikuStack insertAll(int index, List<Widget> children) {
    _children.insertAll(index, children);

    return this;
  }

  /// Apply styles and build Stack as Widget
  ///
  /// Example usage:
  /// ```
  /// NikuStack([
  ///   Text("0"),
  ///   Text("1")
  /// ])
  ///   .center()
  ///   .append(Text("2"))
  /// ```
  @override
  build(context) => internalBuild(
        Stack(
          key: key,
          children: _children,
          alignment: _alignment,
          textDirection: _textDirection,
          fit: _fit,
          clipBehavior: _clipBehavior,
        ),
      );

  /// Switch to Niku() property
  ///
  /// After this method is called, NikuStack property can't be applied anymore
  ///
  /// ```
  /// NikuStack([
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
