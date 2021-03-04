import 'package:flutter/material.dart';

import 'dart:ui';

import './base.dart';

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
///   .build()
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
class NikuStack {
  List<Widget> _children;

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
  ///   .build()
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
  NikuStack(this._children);

  /// Apply alignment to stack
  ///
  /// Equivalent to:
  /// ```
  /// Stack(
  ///   alignment: input
  /// )
  /// ```
  NikuStack alignment(AlignmentDirectional alignment) {
    this._alignment = alignment;

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
    this._alignment = alignment;

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
    this._alignment = AlignmentDirectional.topStart;

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
    this._alignment = AlignmentDirectional.topCenter;

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
    this._alignment = AlignmentDirectional.topEnd;

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
    this._alignment = AlignmentDirectional.centerStart;

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
    this._alignment = AlignmentDirectional.center;

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
    this._alignment = AlignmentDirectional.centerEnd;

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
    this._alignment = AlignmentDirectional.bottomStart;

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
    this._alignment = AlignmentDirectional.bottomCenter;

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
    this._alignment = AlignmentDirectional.bottomEnd;

    return this;
  }

  /// Set whether text is left-to-right or right-to-left direction.
  ///
  /// Equivalent to
  /// ```
  /// Stack(textDirection: input)
  /// ```
  NikuStack textDirection(TextDirection textDirection) {
    this._textDirection = textDirection;

    return this;
  }

  /// Use left-to-right direction
  ///
  /// Equivalent to
  /// ```
  /// Stack(textDirection: TextDirection.ltr)
  /// ```
  NikuStack ltr() {
    this._textDirection = TextDirection.ltr;

    return this;
  }

  /// Use right-to-left direction
  ///
  /// Equivalent to
  /// ```
  /// Stack(textDirection: TextDirection.rtl)
  /// ```
  NikuStack rtl() {
    this._textDirection = TextDirection.rtl;

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
    this._fit = fit;

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
    this._fit = fit;

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
    this._fit = StackFit.expand;

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
    this._fit = StackFit.passthrough;

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
    this._fit = StackFit.loose;

    return this;
  }

  /// Add clip behavior of widget
  ///
  /// Using [Overflow.clip]
  ///
  /// Equivalent to:
  /// ```
  /// Stack(
  ///   clipBehavior: input
  /// )
  /// ```
  NikuStack clipBehavior(Clip clip) {
    this._clipBehavior = clip;

    return this;
  }

  /// Add clip behavior of widget
  ///
  /// Using [Overflow.clip]
  ///
  /// Equivalent to:
  /// ```
  /// Stack(
  ///   clipBehavior: input
  /// )
  /// ```
  NikuStack clip(Clip clip) {
    this._clipBehavior = clip;

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
    this._children.add(child);

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
    this._children.add(child);

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
    this._children.add(child);

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
    this._children.addAll(children);

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
    this._children.addAll(children);

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
    this._children.insert(0, child);

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
    this._children.insert(0, child);

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
    this._children.insertAll(0, children);

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
    this._children.insert(index, child);

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
    this._children.insertAll(index, children);

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
  ///   .build()
  /// ```
  Stack build({Key? key}) => Stack(
        key: key,
        children: this._children,
        alignment: this._alignment,
        textDirection: this._textDirection,
        fit: this._fit,
        clipBehavior: this._clipBehavior,
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
  ///   .build()
  /// ```
  Niku niku() => Niku(this.build());
}
