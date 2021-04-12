// ignore_for_file: must_be_immutable
import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

/// Niku Widget for styling widget
///
/// Style property builder for building Widget
///
/// Example usage:
/// ```
/// Niku()
///   .background(Colors.blue)
///   .p(21)
/// ```
///
/// Meta property list:
/// - build() - Apply styles and build Widget
/// - builder() - Add custom widget
///
/// Style property list:
/// padding, p - Padding of container
///   - padding, p - Apply padding to all side
///   - px - Apply padding to x axis
///   - py - Apply padding to y axis
///   - pt - Apply padding top
///   - pl - Apply padding left side
///   - pb - Apply padding bottom
///   - pl - Apply padding right side
/// - margin, m - Margin of container
///   - margin, m - Apply margin to all side
///   - mx - Apply margin to x axis
///   - my - Apply margin to y axis
///   - mt - Apply margin top
///   - ml - Apply margin left side
///   - mb - Apply margin bottom
///   - ml - Apply margin right side
/// - align - Set self alignment
///   - align - Accept [Alignment] to align self
///   - topLeft - Apply widget to top-left
///   - topCenter - Apply widget to top-center
///   - topRight - Apply widget to top-right
///   - centerLeft - Apply widget to center-left
///   - center - Apply widget to center
///   - centerRight - Apply widget to center-right
///   - bottomLeft - Apply widget to bottom-left
///   - bottomCenter - Apply widget to bottom-center
///   - bottomRight - Apply widget to bottom-right
/// - fullSize - Apply both full width and height to self
///   - fullWidth - Apply full width to self
///   - fullHeight - Apply full height to self
/// - aspectRatio - Apply aspect ratio to self
/// - expanded - Apply exapnded to self
/// - fractionSize, sizePercent - Set both width and height in percent
///   - fractionWidth, widthPercent - Set width in percent
///   - fractionHeight, heightPercent - Set height in percent
/// - container - Add new container to widget
/// - constraints - Set minimum and maximum size for widget
///   - maxSize - Set widget both max width and height
///     - maxWidth - Set widget max width
///     - maxHeight - Set Widget max height
///   - minSize - Set widget both min width and height
///     - minWidth - Set widget min width
///     - minHeight - Set Widget min height
/// - size - Set size of widget
///   - width - Set width of widget
///   - height - Set height of widget
/// - fitted - Apply [FittedBox] to widget
/// - background, bg - Apply background to widget
/// - opacity - Apply opacity to widget
/// - rounded - Add border radius to widget
/// - boxDecoration - Apply [BoxDecoration] to widget
/// - heroTag - Apply [Hero] to widget
/// - ignorePointer - Apply [IgnorePointer] to widget
/// - absorbPointer - Apply [AbsorbPointer] to widget
/// - tooltip - Add tooltip to widget
/// - transform - Add transform to widget
/// - material - Add [Material] to widget
/// - inkwell - Add [InkWell] to widget
/// - border - Decorate with border using [Border]
/// - backdropFilter - Apply [BackdropFilter] to Widget
/// - positioned - Apply [Positioned] to widget
/// - scrollable, singleChildScrollView - Add [singleChildScrollView] to widget
/// - flex, flexible - Apply [Flexible] to Widget
/// - shadows - Add shadows to widget
/// - semantics - Add semantic to widget
///
/// Animation & Motion
/// - animated, animatedBuilder - Wrap widget in animated builder
/// - animatedContainer - Wrap widget in AnimatedContainer
///
/// Event Listener
/// - on - Add multiple event listener at once
///   - tapDown - This is called after a short timeout, even if the winning gesture has not yet been selected. If the tap gesture wins, [onTapUp] will be called, otherwise [onTapCancel] will be called
///   - tapUp - This triggers immediately before [onTap] in the case of the tap gesture winning. If the tap gesture did not win, [onTapCancel] is called instead
///   - tap - This triggers when the tap gesture wins. If the tap gesture did not win, [onTapCancel] is called instead
///   - tapCancel - This is called after [onTapDown], and instead of [onTapUp] and [onTap], if the tap gesture did not win
///   - secondaryTab - This triggers when the tap gesture wins. If the tap gesture did not win, [onSecondaryTapCancel] is called instead
///   - secondaryTapDown - This is called after a short timeout, even if the winning gesture has not yet been selected. If the tap gesture wins, [onSecondaryTapUp] will be called, otherwise [onSecondaryTapCancel] will be called
///   - secondaryTapUp - This triggers in the case of the tap gesture winning. If the tap gesture did not win, [onSecondaryTapCancel] is called instead
///   - secondaryTapCancel - The pointer that previously triggered [onDoubleTapDown] will not end up causing a double tap
///   - tertiaryTapDown - Triggered immediately after the down event of the second tap
///   - tertiaryTapUp - This triggers in the case of the tap gesture winning. If the tap gesture did not win, [onTertiaryTapCancel] is called instead
///   - tertiaryTapCancel - This is called after [onTertiaryTapDown], and instead of [onTertiaryTapUp], if the tap gesture did not win
///   - doubleTapDown - Triggered immediately after the down event of the second tap
///   - doubleTap - The user has tapped the screen with a primary button at the same location twice in quick succession
///   - doubleTapCancel - The pointer that previously triggered [onDoubleTapDown] will not end up causing a double tap
///   - longPress - Triggered when a pointer has remained in contact with the screen at the same location for a long period of time
///   - longPressStart - Triggered when a pointer has remained in contact with the screen at the same location for a long period of time
///   - longPressMoveUpdate - A pointer has been drag-moved after a long press with a primary button
///   - longPressUp - A pointer that has triggered a long-press with a primary button has stopped contacting the screen
///   - longPressEnd - A pointer that has triggered a long-press with a primary button has stopped contacting the screen
///   - secondaryLongPress - Triggered when a pointer has remained in contact with the screen at the same location for a long period of time
///   - secondaryLongPressStart - Triggered when a pointer has remained in contact with the screen at the same location for a long period of time
///   - secondaryLongPressMoveUpdate - A pointer has been drag-moved after a long press with a secondary button
///   - secondaryLongPressUp - A pointer that has triggered a long-press with a secondary button has stopped contacting the screen
///   - secondaryLongPressEnd - A pointer that has triggered a long-press with a secondary button has stopped contacting the screen
///   - verticalDragDown - A pointer has contacted the screen with a primary button and might begin to move vertically
///   - verticalDragStart - A pointer has contacted the screen with a primary button and has begun to move vertically
///   - verticalDragUpdate - A pointer that is in contact with the screen with a primary button and moving vertically has moved in the vertical direction
///   - verticalDragEnd - A pointer that was previously in contact with the screen with a primary button and moving horizontally is no longer in contact with the screen and was moving at a specific velocity when it stopped contacting the screen
///   - verticalDragCancel - The pointer that previously triggered [onHorizontalDragDown] did not complete
///   - horizontalDragDown - A pointer has contacted the screen with a primary button and might begin to move horizontally
///   - horizontalDragStart - A pointer has contacted the screen with a primary button and has begun to move horizontally
///   - horizontalDragUpdate - A pointer that is in contact with the screen with a primary button and moving horizontally has moved in the horizontal direction
///   - horizontalDragEnd - A pointer that is in contact with the screen with a primary button and moving horizontally has moved in the horizontal direction
///   - horizontalDragCancel - The pointer that previously triggered [onHorizontalDragDown] did not complete
///   - forcePressStart - The pointer is in contact with the screen and has pressed with sufficient force to initiate a force press. The amount of force is at least [ForcePressGestureRecognizer.startPressure]
///   - forcePressPeak - The pointer is in contact with the screen and has pressed with the maximum force. The amount of force is at least [ForcePressGestureRecognizer.peakPressure]
///   - forcePressUpdate - A pointer is in contact with the screen, has previously passed the [ForcePressGestureRecognizer.startPressure] and is either moving on the plane of the screen, pressing the screen with varying forces or both simultaneously
///   - forcePressEnd - The pointer is no longer in contact with the screen
///   - panDown - A pointer has contacted the screen with a primary button and might begin to move
///   - panStart - A pointer has contacted the screen with a primary button and has begun to move
///   - panUpdate - A pointer that is in contact with the screen with a primary button and moving has moved again
///   - panEnd - A pointer that was previously in contact with the screen with a primary button and moving is no longer in contact with the screen and was moving at a specific velocity when it stopped contacting the screen
///   - panCancel - The pointer that previously triggered [onPanDown] did not complete
///   - scaleStart - The pointers in contact with the screen have established a focal point and initial scale of 1.0
///   - scaleUpdate - The pointers in contact with the screen have indicated a new focal point and/or scale
///   - scaleEnd - The pointers are no longer in contact with the screen
class Niku extends StatelessWidget {
  Widget _widget;
  Key? key;

  /// Niku Widget for styling widget
  ///
  /// Style property builder for building Widget
  ///
  /// Example usage:
  /// ```
  /// Niku(Container())
  ///   .background(Colors.blue)
  ///   .p(21)
  /// ```
  ///
  /// Meta property list:
  /// - build() - Apply styles and build Widget
  /// - builder() - Add custom widget
  ///
  /// Style property list:
  /// padding, p - Padding of container
  ///   - padding, p - Apply padding to all side
  ///   - px - Apply padding to x axis
  ///   - py - Apply padding to y axis
  ///   - pt - Apply padding top
  ///   - pl - Apply padding left side
  ///   - pb - Apply padding bottom
  ///   - pl - Apply padding right side
  /// - margin, m - Margin of container
  ///   - margin, m - Apply margin to all side
  ///   - mx - Apply margin to x axis
  ///   - my - Apply margin to y axis
  ///   - mt - Apply margin top
  ///   - ml - Apply margin left side
  ///   - mb - Apply margin bottom
  ///   - ml - Apply margin right side
  /// - align - Set self alignment
  ///   - align - Accept [Alignment] to align self
  ///   - topLeft - Apply widget to top-left
  ///   - topCenter - Apply widget to top-center
  ///   - topRight - Apply widget to top-right
  ///   - centerLeft - Apply widget to center-left
  ///   - center - Apply widget to center
  ///   - centerRight - Apply widget to center-right
  ///   - bottomLeft - Apply widget to bottom-left
  ///   - bottomCenter - Apply widget to bottom-center
  ///   - bottomRight - Apply widget to bottom-right
  /// - fullSize - Apply both full width and height to self
  ///   - fullWidth - Apply full width to self
  ///   - fullHeight - Apply full height to self
  /// - aspectRatio - Apply aspect ratio to self
  /// - expanded - Apply exapnded to self
  /// - fractionSize, sizePercent - Set both width and height in percent
  ///   - fractionWidth, widthPercent - Set width in percent
  ///   - fractionHeight, heightPercent - Set height in percent
  /// - container - Add new container to widget
  /// - constraints - Set minimum and maximum size for widget
  ///   - maxSize - Set widget both max width and height
  ///     - maxWidth - Set widget max width
  ///     - maxHeight - Set Widget max height
  ///   - minSize - Set widget both min width and height
  ///     - minWidth - Set widget min width
  ///     - minHeight - Set Widget min height
  /// - size - Set size of widget
  ///   - width - Set width of widget
  ///   - height - Set height of widget
  /// - fitted - Apply [FittedBox] to widget
  /// - background, bg - Apply background to widget
  /// - opacity - Apply opacity to widget
  /// - rounded - Add border radius to widget
  /// - boxDecoration - Apply [BoxDecoration] to widget
  /// - heroTag - Apply [Hero] to widget
  /// - ignorePointer - Apply [IgnorePointer] to widget
  /// - absorbPointer - Apply [AbsorbPointer] to widget
  /// - tooltip - Add tooltip to widget
  /// - transform - Add transform to widget
  /// - material - Add [Material] to widget
  /// - inkwell - Add [InkWell] to widget
  /// - border - Decorate with border using [Border]
  /// - backdropFilter - Apply [BackdropFilter] to Widget
  /// - positioned - Apply [Positioned] to widget
  /// - scrollable, singleChildScrollView - Add [singleChildScrollView] to widget
  /// - flex, flexible - Apply [Flexible] to Widget
  /// - shadows - Add shadows to widget
  /// - semantics - Add semantic to widget
  ///
  /// Animation & Motion
  /// - animated, animatedBuilder - Wrap widget in animated builder
  /// - animatedContainer - Wrap widget in AnimatedContainer
  ///
  /// Event Listener
  /// - on - Add multiple event listener at once
  ///   - tapDown - This is called after a short timeout, even if the winning gesture has not yet been selected. If the tap gesture wins, [onTapUp] will be called, otherwise [onTapCancel] will be called
  ///   - tapUp - This triggers immediately before [onTap] in the case of the tap gesture winning. If the tap gesture did not win, [onTapCancel] is called instead
  ///   - tap - This triggers when the tap gesture wins. If the tap gesture did not win, [onTapCancel] is called instead
  ///   - tapCancel - This is called after [onTapDown], and instead of [onTapUp] and [onTap], if the tap gesture did not win
  ///   - secondaryTab - This triggers when the tap gesture wins. If the tap gesture did not win, [onSecondaryTapCancel] is called instead
  ///   - secondaryTapDown - This is called after a short timeout, even if the winning gesture has not yet been selected. If the tap gesture wins, [onSecondaryTapUp] will be called, otherwise [onSecondaryTapCancel] will be called
  ///   - secondaryTapUp - This triggers in the case of the tap gesture winning. If the tap gesture did not win, [onSecondaryTapCancel] is called instead
  ///   - secondaryTapCancel - The pointer that previously triggered [onDoubleTapDown] will not end up causing a double tap
  ///   - tertiaryTapDown - Triggered immediately after the down event of the second tap
  ///   - tertiaryTapUp - This triggers in the case of the tap gesture winning. If the tap gesture did not win, [onTertiaryTapCancel] is called instead
  ///   - tertiaryTapCancel - This is called after [onTertiaryTapDown], and instead of [onTertiaryTapUp], if the tap gesture did not win
  ///   - doubleTapDown - Triggered immediately after the down event of the second tap
  ///   - doubleTap - The user has tapped the screen with a primary button at the same location twice in quick succession
  ///   - doubleTapCancel - The pointer that previously triggered [onDoubleTapDown] will not end up causing a double tap
  ///   - longPress - Triggered when a pointer has remained in contact with the screen at the same location for a long period of time
  ///   - longPressStart - Triggered when a pointer has remained in contact with the screen at the same location for a long period of time
  ///   - longPressMoveUpdate - A pointer has been drag-moved after a long press with a primary button
  ///   - longPressUp - A pointer that has triggered a long-press with a primary button has stopped contacting the screen
  ///   - longPressEnd - A pointer that has triggered a long-press with a primary button has stopped contacting the screen
  ///   - secondaryLongPress - Triggered when a pointer has remained in contact with the screen at the same location for a long period of time
  ///   - secondaryLongPressStart - Triggered when a pointer has remained in contact with the screen at the same location for a long period of time
  ///   - secondaryLongPressMoveUpdate - A pointer has been drag-moved after a long press with a secondary button
  ///   - secondaryLongPressUp - A pointer that has triggered a long-press with a secondary button has stopped contacting the screen
  ///   - secondaryLongPressEnd - A pointer that has triggered a long-press with a secondary button has stopped contacting the screen
  ///   - verticalDragDown - A pointer has contacted the screen with a primary button and might begin to move vertically
  ///   - verticalDragStart - A pointer has contacted the screen with a primary button and has begun to move vertically
  ///   - verticalDragUpdate - A pointer that is in contact with the screen with a primary button and moving vertically has moved in the vertical direction
  ///   - verticalDragEnd - A pointer that was previously in contact with the screen with a primary button and moving horizontally is no longer in contact with the screen and was moving at a specific velocity when it stopped contacting the screen
  ///   - verticalDragCancel - The pointer that previously triggered [onHorizontalDragDown] did not complete
  ///   - horizontalDragDown - A pointer has contacted the screen with a primary button and might begin to move horizontally
  ///   - horizontalDragStart - A pointer has contacted the screen with a primary button and has begun to move horizontally
  ///   - horizontalDragUpdate - A pointer that is in contact with the screen with a primary button and moving horizontally has moved in the horizontal direction
  ///   - horizontalDragEnd - A pointer that is in contact with the screen with a primary button and moving horizontally has moved in the horizontal direction
  ///   - horizontalDragCancel - The pointer that previously triggered [onHorizontalDragDown] did not complete
  ///   - forcePressStart - The pointer is in contact with the screen and has pressed with sufficient force to initiate a force press. The amount of force is at least [ForcePressGestureRecognizer.startPressure]
  ///   - forcePressPeak - The pointer is in contact with the screen and has pressed with the maximum force. The amount of force is at least [ForcePressGestureRecognizer.peakPressure]
  ///   - forcePressUpdate - A pointer is in contact with the screen, has previously passed the [ForcePressGestureRecognizer.startPressure] and is either moving on the plane of the screen, pressing the screen with varying forces or both simultaneously
  ///   - forcePressEnd - The pointer is no longer in contact with the screen
  ///   - panDown - A pointer has contacted the screen with a primary button and might begin to move
  ///   - panStart - A pointer has contacted the screen with a primary button and has begun to move
  ///   - panUpdate - A pointer that is in contact with the screen with a primary button and moving has moved again
  ///   - panEnd - A pointer that was previously in contact with the screen with a primary button and moving is no longer in contact with the screen and was moving at a specific velocity when it stopped contacting the screen
  ///   - panCancel - The pointer that previously triggered [onPanDown] did not complete
  ///   - scaleStart - The pointers in contact with the screen have established a focal point and initial scale of 1.0
  ///   - scaleUpdate - The pointers in contact with the screen have indicated a new focal point and/or scale
  ///   - scaleEnd - The pointers are no longer in contact with the screen
  Niku([this._widget = const SizedBox.shrink(), this.key]);

  @override
  build(context) {
    if (key != null) return SizedBox(key: key, child: _widget);

    return _widget;
  }

  /// Add custom widget
  ///
  /// Example usage
  /// ```dart
  /// Niku()
  ///   .builder((child) {
  ///     return AnimatedContainer(
  ///       width: 200,
  ///       height: 200,
  ///       child: child
  ///     );
  ///   });
  /// ```
  void builder(Widget Function(Widget child) builder) {
    _widget = builder(_widget);
  }
}

extension BaseProperty on Niku {
  /// Apply margin using [EdgeInsets]
  ///
  /// Equivalent to:
  /// ```
  /// Container(
  ///   margin: input
  /// )
  /// ```
  Niku margin(EdgeInsets margin) {
    _widget = Container(
      margin: margin,
      child: _widget,
    );

    return this;
  }

  /// Apply margin to all side
  ///
  /// Equivalent to:
  /// ```
  /// Container(
  ///   margin: EdgeInsets.all(input)
  /// )
  /// ```
  Niku m(double margin) {
    _widget = Container(
      margin: EdgeInsets.all(margin),
      child: _widget,
    );

    return this;
  }

  /// Apply margin to x axis
  ///
  /// Equivalent to:
  /// ```
  /// Container(
  ///   margin: EdgeInsets.symmetric(horizontal: input)
  /// )
  /// ```
  Niku mx(double margin) {
    _widget = Container(
      margin: EdgeInsets.symmetric(horizontal: margin),
      child: _widget,
    );

    return this;
  }

  /// Apply margin to y axis
  ///
  /// Equivalent to:
  /// ```
  /// Container(
  ///   margin: EdgeInsets.symmetric(vertical: input)
  /// )
  /// ```
  Niku my(double margin) {
    _widget = Container(
      margin: EdgeInsets.symmetric(vertical: margin),
      child: _widget,
    );

    return this;
  }

  /// Apply margin to top
  ///
  /// Equivalent to:
  /// ```
  /// Container(
  ///   margin: EdgeInsets.only(top: input)
  /// )
  /// ```
  Niku mt(double margin) {
    _widget = Container(
      margin: EdgeInsets.only(top: margin),
      child: _widget,
    );

    return this;
  }

  /// Apply margin to bottom
  ///
  /// Equivalent to:
  /// ```
  /// Container(
  ///   margin: EdgeInsets.only(bototm: input)
  /// )
  /// ```
  Niku mb(double margin) {
    _widget = Container(
      margin: EdgeInsets.only(bottom: margin),
      child: _widget,
    );

    return this;
  }

  /// Apply margin to left side
  ///
  /// Equivalent to:
  /// ```
  /// Container(
  ///   margin: EdgeInsets.only(left: input)
  /// )
  /// ```
  Niku ml(double margin) {
    _widget = Container(
      margin: EdgeInsets.only(left: margin),
      child: _widget,
    );

    return this;
  }

  /// Apply margin to right side
  ///
  /// Equivalent to:
  /// ```
  /// Container(
  ///   margin: EdgeInsets.only(right: input)
  /// )
  /// ```
  Niku mr(double margin) {
    _widget = Container(
      margin: EdgeInsets.only(right: margin),
      child: _widget,
    );

    return this;
  }

  /// Apply padding using [EdgeInsets]
  ///
  /// Equivalent to:
  /// ```
  /// Padding(
  ///   padding: input
  /// )
  /// ```
  Niku padding(EdgeInsets padding) {
    _widget = Padding(
      padding: padding,
      child: _widget,
    );

    return this;
  }

  /// Apply padding to all side
  ///
  /// Equivalent to:
  /// ```
  /// Padding(
  ///   padding: EdgeInsets.all(input)
  /// )
  /// ```
  Niku p(double padding) {
    _widget = Padding(
      padding: EdgeInsets.all(padding),
      child: _widget,
    );

    return this;
  }

  /// Apply padding to x axis
  ///
  /// Equivalent to:
  /// ```
  /// Padding(
  ///   padding: EdgeInsets.symmetric(horizontal: input)
  /// )
  /// ```
  Niku px(double padding) {
    _widget = Padding(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: _widget,
    );

    return this;
  }

  /// Apply padding to y axis
  ///
  /// Equivalent to:
  /// ```
  /// Padding(
  ///   padding: EdgeInsets.symmetric(vertical: input)
  /// )
  /// ```
  Niku py(double padding) {
    _widget = Padding(
      padding: EdgeInsets.symmetric(vertical: padding),
      child: _widget,
    );

    return this;
  }

  /// Apply padding to top
  ///
  /// Equivalent to:
  /// ```
  /// Padding(
  ///   padding: EdgeInsets.symmetric(top: input)
  /// )
  /// ```
  Niku pt(double padding) {
    _widget = Padding(
      padding: EdgeInsets.only(top: padding),
      child: _widget,
    );

    return this;
  }

  /// Apply padding to bottom
  ///
  /// Equivalent to:
  /// ```
  /// Padding(
  ///   padding: EdgeInsets.symmetric(bottom: input)
  /// )
  /// ```
  Niku pb(double padding) {
    _widget = Padding(
      padding: EdgeInsets.only(bottom: padding),
      child: _widget,
    );

    return this;
  }

  /// Apply padding to left side
  ///
  /// Equivalent to:
  /// ```
  /// Padding(
  ///   padding: EdgeInsets.symmetric(left: input)
  /// )
  /// ```
  Niku pl(double padding) {
    _widget = Padding(
      padding: EdgeInsets.only(left: padding),
      child: _widget,
    );

    return this;
  }

  /// Apply padding to right side
  ///
  /// Equivalent to:
  /// ```
  /// Padding(
  ///   padding: EdgeInsets.symmetric(right: input)
  /// )
  /// ```
  Niku pr(double padding) {
    _widget = Padding(
      padding: EdgeInsets.only(right: padding),
      child: _widget,
    );

    return this;
  }

  /// Apply alignment to widget
  ///
  /// Equivalent to:
  /// ```
  /// Align(
  ///   alignment: input
  /// )
  /// ```
  Niku align(AlignmentGeometry align) {
    _widget = Align(
      alignment: align,
      child: _widget,
    );

    return this;
  }

  /// Apply widget to top left
  ///
  /// Equivalent to:
  /// ```
  /// Align(
  ///   alignment: Alignment.topLeft
  /// )
  /// ```
  Niku topLeft() {
    _widget = Align(
      alignment: Alignment.topLeft,
      child: _widget,
    );

    return this;
  }

  /// Apply widget to top center
  ///
  /// Equivalent to:
  /// ```
  /// Align(
  ///   alignment: Alignment.topCenter
  /// )
  /// ```
  Niku topCenter() {
    _widget = Align(
      alignment: Alignment.topCenter,
      child: _widget,
    );

    return this;
  }

  /// Apply widget to top right
  ///
  /// Equivalent to:
  /// ```
  /// Align(
  ///   alignment: Alignment.topRight
  /// )
  /// ```
  Niku topRight() {
    _widget = Align(
      alignment: Alignment.topRight,
      child: _widget,
    );

    return this;
  }

  /// Apply widget to center left
  ///
  /// Equivalent to:
  /// ```
  /// Align(
  ///   alignment: Alignment.centerLeft
  /// )
  /// ```
  Niku centerLeft() {
    _widget = Align(
      alignment: Alignment.centerLeft,
      child: _widget,
    );

    return this;
  }

  /// Apply widget to center
  ///
  /// Equivalent to:
  /// ```
  /// Align(
  ///   alignment: Alignment.center
  /// )
  /// ```
  Niku center() {
    _widget = Center(
      child: _widget,
    );

    return this;
  }

  /// Apply widget to center right
  ///
  /// Equivalent to:
  /// ```
  /// Align(
  ///   alignment: Alignment.centerRight
  /// )
  /// ```
  Niku centerRight() {
    _widget = Align(
      alignment: Alignment.centerRight,
      child: _widget,
    );

    return this;
  }

  /// Apply widget to bottom left
  ///
  /// Equivalent to:
  /// ```
  /// Align(
  ///   alignment: Alignment.bottomLeft
  /// )
  /// ```
  Niku bottomLeft() {
    _widget = Align(
      alignment: Alignment.bottomLeft,
      child: _widget,
    );

    return this;
  }

  /// Apply widget to bottom center
  ///
  /// Equivalent to:
  /// ```
  /// Align(
  ///   alignment: Alignment.bottomCenter
  /// )
  /// ```
  Niku bottomCenter() {
    _widget = Align(
      alignment: Alignment.bottomCenter,
      child: _widget,
    );

    return this;
  }

  /// Apply widget to bottom right
  ///
  /// Equivalent to:
  /// ```
  /// Align(
  ///   alignment: Alignment.bottomRight
  /// )
  /// ```
  Niku bottomRight() {
    _widget = Align(
      alignment: Alignment.bottomRight,
      child: _widget,
    );

    return this;
  }

  /// Apply both full width and height to self
  ///
  /// Equivalent to:
  /// ```
  /// SizedBox(
  ///   width: double.infinity,
  ///   height: double.infinity,
  /// )
  /// ```
  Niku fullSize() {
    _widget = SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: _widget,
    );

    return this;
  }

  /// Apply full width to self
  ///
  /// Equivalent to:
  /// ```
  /// SizedBox(
  ///   width: double.infinity,
  ///   height: double.infinity
  /// )
  /// ```
  Niku fullWidth() {
    _widget = SizedBox(
        width: double.infinity, height: double.infinity, child: _widget);

    return this;
  }

  /// Apply full width to self
  ///
  /// Equivalent to:
  /// ```
  /// SizedBox(
  ///   height: double.infinity
  /// )
  /// ```
  Niku fullHeight() {
    _widget = SizedBox(height: double.infinity, child: _widget);

    return this;
  }

  /// Apply aspect ratio to self
  ///
  /// Equivalent to:
  /// ```
  /// AspectRatio(
  ///   aspecrRatio: input
  /// )
  /// ```
  Niku aspectRatio(double aspectRatio) {
    _widget = AspectRatio(aspectRatio: aspectRatio, child: _widget);

    return this;
  }

  /// Apply expanded to self
  ///
  /// Equivalent to:
  /// ```
  /// Expanded()
  /// ```
  Niku expanded([int flex = 1]) {
    _widget = Expanded(child: _widget);

    return this;
  }

  /// Set both width and height in percent
  ///
  /// Equivalent to:
  /// ```
  /// FractionallySizedBox(
  ///   widthFactor: width,
  ///   heightFactor: height
  /// )
  /// ```
  Niku fractionSize(double width, double height) {
    _widget = FractionallySizedBox(
        widthFactor: width, heightFactor: height, child: _widget);

    return this;
  }

  /// Set width in percent
  ///
  /// Equivalent to:
  /// ```
  /// FractionallySizedBox(
  ///   widthFactor: input
  /// )
  /// ```
  Niku fractionWidth(double fraction) {
    _widget = FractionallySizedBox(widthFactor: fraction, child: _widget);

    return this;
  }

  /// Set height in percent
  ///
  /// Equivalent to:
  /// ```
  /// FractionallySizedBox(
  ///   heightFactor: input
  /// )
  /// ```
  Niku fractionHeight(double fraction) {
    _widget = FractionallySizedBox(widthFactor: fraction, child: _widget);

    return this;
  }

  /// Set width in percent
  ///
  /// Equivalent to:
  /// ```
  /// Flexible(
  ///   child: FractionallySizedBox(
  ///     widthFactor: input
  ///   )
  /// )
  /// ```
  Niku widthPercent(double percent) {
    _widget = FractionallySizedBox(
      widthFactor: percent / 100,
      child: _widget,
    );

    return this;
  }

  /// Set height in percent
  ///
  /// Equivalent to:
  /// ```
  /// Flexible(
  ///   child: FractionallySizedBox(
  ///     heightFactor: input / 100
  ///   )
  /// )
  /// ```
  Niku heightPercent(double percent) {
    _widget = FractionallySizedBox(
      widthFactor: percent / 100,
      child: _widget,
    );

    return this;
  }

  /// Set height in percent
  ///
  /// Equivalent to:
  /// ```
  /// Flexible(
  ///   child: FractionallySizedBox(
  ///     widthFactor: width / 100,
  ///     heightFactor: height / 100
  ///   )
  /// )
  /// ```
  Niku sizePercent(double width, double height) {
    _widget = FractionallySizedBox(
      widthFactor: width / 100,
      heightFactor: height / 100,
      child: _widget,
    );

    return this;
  }

  /// Add new container to widget
  ///
  /// Equivalent to:
  /// ```
  /// Container()
  /// ```
  Niku container() {
    _widget = Container(
      child: _widget,
    );

    return this;
  }

  /// Set minimum and maximum size for widget
  ///
  /// Equivalent to:
  /// ```
  /// ConstrainedBox(
  ///   constraints: input
  /// )
  /// ```
  Niku constraints(BoxConstraints constraints) {
    _widget = ConstrainedBox(
      constraints: constraints,
      child: _widget,
    );

    return this;
  }

  /// Set maximum size for widget
  ///
  /// Equivalent to:
  /// ```
  /// ConstrainedBox(
  ///   constraints: BoxConstraints(
  ///     maxWidth: maxWidth,
  ///     maxHeight: maxHeight
  ///   )
  /// )
  /// ```
  Niku maxSize(double maxWidth, double maxHeight) {
    _widget = ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: maxWidth,
        maxHeight: maxHeight,
      ),
      child: _widget,
    );

    return this;
  }

  /// Set maximum width for widget
  ///
  /// Equivalent to:
  /// ```
  /// ConstrainedBox(
  ///   constraints: BoxConstraints(
  ///     maxWidth: maxWidth
  ///   )
  /// )
  /// ```
  Niku maxWidth(double maxWidth) {
    _widget = ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: maxWidth,
      ),
      child: _widget,
    );

    return this;
  }

  /// Set maximum height for widget
  ///
  /// Equivalent to:
  /// ```
  /// ConstrainedBox(
  ///   constraints: BoxConstraints(
  ///     maxHeight: maxHeight
  ///   )
  /// )
  /// ```
  Niku maxHeight(double maxHeight) {
    _widget = ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: maxHeight,
        ),
        child: _widget);

    return this;
  }

  /// Set minimum size for widget
  ///
  /// Equivalent to:
  /// ```
  /// ConstrainedBox(
  ///   constraints: BoxConstraints(
  ///     minWidth: minWidth,
  ///     minHeight: minHeight
  ///   )
  /// )
  /// ```
  Niku minSize(double minWidth, double minHeight) {
    _widget = ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: minWidth,
        minHeight: minHeight,
      ),
      child: _widget,
    );

    return this;
  }

  /// Set minimum width for widget
  ///
  /// Equivalent to:
  /// ```
  /// ConstrainedBox(
  ///   constraints: BoxConstraints(
  ///     minWidth: minWidth
  ///   )
  /// )
  /// ```
  Niku minWidth(double minWidth) {
    _widget = ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: minWidth,
      ),
      child: _widget,
    );

    return this;
  }

  /// Set minimum height for widget
  ///
  /// Equivalent to:
  /// ```
  /// ConstrainedBox(
  ///   constraints: BoxConstraints(
  ///     minHeight: minHeight
  ///   )
  /// )
  /// ```
  Niku minHeight(double minHeight) {
    _widget = ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: minHeight,
      ),
      child: _widget,
    );

    return this;
  }

  /// Set height of Widget
  ///
  /// Equivalent to:
  /// ```
  /// SizedBox(
  ///   height: input
  /// )
  /// ```
  Niku size(double width, double height) {
    _widget = SizedBox(
      width: width,
      height: height,
      child: _widget,
    );

    return this;
  }

  /// Set width of widget
  ///
  /// Equivalent to:
  /// ```
  /// SizedBox(
  ///   width: input
  /// )
  /// ```
  Niku width(double width) {
    _widget = SizedBox(
      width: width,
      child: _widget,
    );

    return this;
  }

  /// Set height of Widget
  ///
  /// Equivalent to:
  /// ```
  /// SizedBox(
  ///   height: input
  /// )
  /// ```
  Niku height(double height) {
    _widget = SizedBox(
      height: height,
      child: _widget,
    );

    return this;
  }

  /// Apply [FittedBox] for widget
  ///
  /// Equivalent to:
  /// ```
  /// FittedBox()
  /// ```
  Niku fitted() {
    _widget = FittedBox(
      child: _widget,
    );

    return this;
  }

  /// Apply background to widget
  ///
  /// Equivalent to:
  /// ```
  /// ColoredBox(
  ///   color: input
  /// )
  /// ```
  Niku bg(Color color) {
    _widget = ColoredBox(
      color: color,
      child: _widget,
    );

    return this;
  }

  /// Apply background to widget
  ///
  /// Equivalent to:
  /// ```
  /// ColoredBox(
  ///   color: input
  /// )
  /// ```
  Niku backgroundColor(Color color) {
    _widget = ColoredBox(
      color: color,
      child: _widget,
    );

    return this;
  }

  /// Apply opacity to widget
  ///
  /// Equivalent to:
  /// ```
  /// Opacity(
  ///   opacity: input
  /// )
  /// ```
  Niku opacity(double opacity) {
    _widget = Opacity(
      opacity: opacity,
      child: _widget,
    );

    return this;
  }

  /// Apply border radius to widget
  ///
  /// Equivalent to:
  /// ```
  /// ClipRRect(
  ///   borderRadius: BorderRadius.all(
  ///     Radius.circular(input)
  ///   )
  /// )
  /// ```
  Niku rounded([double borderRadius = 999999]) {
    _widget = ClipRRect(
      borderRadius: BorderRadius.all(
        Radius.circular(
          borderRadius,
        ),
      ),
      child: _widget,
    );

    return this;
  }

  /// Apply [BoxDecoration] to widget
  ///
  /// Equivalent to:
  /// ```
  /// DecoratedBox(
  ///   boxDecoration: input
  /// )
  /// ```
  Niku boxDecoration(BoxDecoration boxDecoration) {
    _widget = DecoratedBox(
      child: _widget,
      decoration: boxDecoration,
    );

    return this;
  }

  /// Apply [Hero] to widget
  ///
  /// Equivalent to:
  /// ```
  /// Hero(
  ///   tag: input
  /// )
  /// ```
  Niku heroTag(String heroTag) {
    _widget = Hero(
      tag: heroTag,
      child: _widget,
    );

    return this;
  }

  /// Apply [IgnorePointer] to widget
  ///
  /// Equivalent to:
  /// ```
  /// IgnorePointer(
  ///   ignoring: input
  /// )
  /// ```
  Niku ignorePointer([bool ignoring = true]) {
    _widget = IgnorePointer(
      ignoring: ignoring,
      child: _widget,
    );

    return this;
  }

  /// Apply [AbsorbPointer] to widget
  ///
  /// Equivalent to:
  /// ```
  /// AbsorbPointer(
  ///   absorbing: input
  /// )
  /// ```
  Niku absorbPointer([bool absorbing = true]) {
    _widget = AbsorbPointer(
      absorbing: absorbing,
      child: _widget,
    );

    return this;
  }

  /// Apply tooltip to widget
  ///
  /// Equivalent to:
  /// ```
  /// Tooltip(
  ///   message: input
  /// )
  /// ```
  Niku tooltip(String tip) {
    _widget = Tooltip(
      message: tip,
      child: _widget,
    );

    return this;
  }

  /// Apply transform to widget
  ///
  /// Equivalent to:
  /// ```
  /// Transform(
  ///   transform: input
  /// )
  /// ```
  Niku transform(Matrix4 transform) {
    _widget = Transform(
      transform: transform,
      child: _widget,
    );

    return this;
  }

  /// Event Listener
  ///
  /// Equivalent to
  /// ```
  /// GestureDetector(
  ///   input
  /// )
  /// ```
  ///
  /// - on - Add multiple event listener at once
  ///   - tapDown - This is called after a short timeout, even if the winning gesture has not yet been selected. If the tap gesture wins, [onTapUp] will be called, otherwise [onTapCancel] will be called
  ///   - tapUp - This triggers immediately before [onTap] in the case of the tap gesture winning. If the tap gesture did not win, [onTapCancel] is called instead
  ///   - tap - This triggers when the tap gesture wins. If the tap gesture did not win, [onTapCancel] is called instead
  ///   - tapCancel - This is called after [onTapDown], and instead of [onTapUp] and [onTap], if the tap gesture did not win
  ///   - secondaryTab - This triggers when the tap gesture wins. If the tap gesture did not win, [onSecondaryTapCancel] is called instead
  ///   - secondaryTapDown - This is called after a short timeout, even if the winning gesture has not yet been selected. If the tap gesture wins, [onSecondaryTapUp] will be called, otherwise [onSecondaryTapCancel] will be called
  ///   - secondaryTapUp - This triggers in the case of the tap gesture winning. If the tap gesture did not win, [onSecondaryTapCancel] is called instead
  ///   - secondaryTapCancel - The pointer that previously triggered [onDoubleTapDown] will not end up causing a double tap
  ///   - tertiaryTapDown - Triggered immediately after the down event of the second tap
  ///   - tertiaryTapUp - This triggers in the case of the tap gesture winning. If the tap gesture did not win, [onTertiaryTapCancel] is called instead
  ///   - tertiaryTapCancel - This is called after [onTertiaryTapDown], and instead of [onTertiaryTapUp], if the tap gesture did not win
  ///   - doubleTapDown - Triggered immediately after the down event of the second tap
  ///   - doubleTap - The user has tapped the screen with a primary button at the same location twice in quick succession
  ///   - doubleTapCancel - The pointer that previously triggered [onDoubleTapDown] will not end up causing a double tap
  ///   - longPress - Triggered when a pointer has remained in contact with the screen at the same location for a long period of time
  ///   - longPressStart - Triggered when a pointer has remained in contact with the screen at the same location for a long period of time
  ///   - longPressMoveUpdate - A pointer has been drag-moved after a long press with a primary button
  ///   - longPressUp - A pointer that has triggered a long-press with a primary button has stopped contacting the screen
  ///   - longPressEnd - A pointer that has triggered a long-press with a primary button has stopped contacting the screen
  ///   - secondaryLongPress - Triggered when a pointer has remained in contact with the screen at the same location for a long period of time
  ///   - secondaryLongPressStart - Triggered when a pointer has remained in contact with the screen at the same location for a long period of time
  ///   - secondaryLongPressMoveUpdate - A pointer has been drag-moved after a long press with a secondary button
  ///   - secondaryLongPressUp - A pointer that has triggered a long-press with a secondary button has stopped contacting the screen
  ///   - secondaryLongPressEnd - A pointer that has triggered a long-press with a secondary button has stopped contacting the screen
  ///   - verticalDragDown - A pointer has contacted the screen with a primary button and might begin to move vertically
  ///   - verticalDragStart - A pointer has contacted the screen with a primary button and has begun to move vertically
  ///   - verticalDragUpdate - A pointer that is in contact with the screen with a primary button and moving vertically has moved in the vertical direction
  ///   - verticalDragEnd - A pointer that was previously in contact with the screen with a primary button and moving horizontally is no longer in contact with the screen and was moving at a specific velocity when it stopped contacting the screen
  ///   - verticalDragCancel - The pointer that previously triggered [onHorizontalDragDown] did not complete
  ///   - horizontalDragDown - A pointer has contacted the screen with a primary button and might begin to move horizontally
  ///   - horizontalDragStart - A pointer has contacted the screen with a primary button and has begun to move horizontally
  ///   - horizontalDragUpdate - A pointer that is in contact with the screen with a primary button and moving horizontally has moved in the horizontal direction
  ///   - horizontalDragEnd - A pointer that is in contact with the screen with a primary button and moving horizontally has moved in the horizontal direction
  ///   - horizontalDragCancel - The pointer that previously triggered [onHorizontalDragDown] did not complete
  ///   - forcePressStart - The pointer is in contact with the screen and has pressed with sufficient force to initiate a force press. The amount of force is at least [ForcePressGestureRecognizer.startPressure]
  ///   - forcePressPeak - The pointer is in contact with the screen and has pressed with the maximum force. The amount of force is at least [ForcePressGestureRecognizer.peakPressure]
  ///   - forcePressUpdate - A pointer is in contact with the screen, has previously passed the [ForcePressGestureRecognizer.startPressure] and is either moving on the plane of the screen, pressing the screen with varying forces or both simultaneously
  ///   - forcePressEnd - The pointer is no longer in contact with the screen
  ///   - panDown - A pointer has contacted the screen with a primary button and might begin to move
  ///   - panStart - A pointer has contacted the screen with a primary button and has begun to move
  ///   - panUpdate - A pointer that is in contact with the screen with a primary button and moving has moved again
  ///   - panEnd - A pointer that was previously in contact with the screen with a primary button and moving is no longer in contact with the screen and was moving at a specific velocity when it stopped contacting the screen
  ///   - panCancel - The pointer that previously triggered [onPanDown] did not complete
  ///   - scaleStart - The pointers in contact with the screen have established a focal point and initial scale of 1.0
  ///   - scaleUpdate - The pointers in contact with the screen have indicated a new focal point and/or scale
  ///   - scaleEnd - The pointers are no longer in contact with the screen
  Niku on(
      {void Function(TapDownDetails)? tapDown,
      void Function(TapUpDetails)? tapUp,
      VoidCallback? tap,
      VoidCallback? tapCancel,
      VoidCallback? secondaryTap,
      void Function(TapDownDetails)? secondaryTapDown,
      void Function(TapUpDetails)? secondaryTapUp,
      VoidCallback? secondaryTapCancel,
      void Function(TapDownDetails)? tertiaryTapDown,
      void Function(TapUpDetails)? tertiaryTapUp,
      VoidCallback? tertiaryTapCancel,
      void Function(TapDownDetails)? doubleTapDown,
      VoidCallback? doubleTap,
      VoidCallback? doubleTapCancel,
      VoidCallback? longPress,
      void Function(LongPressStartDetails)? longPressStart,
      void Function(LongPressMoveUpdateDetails)? longPressMoveUpdate,
      VoidCallback? longPressUp,
      void Function(LongPressEndDetails)? longPressEnd,
      VoidCallback? secondaryLongPress,
      void Function(LongPressStartDetails)? secondaryLongPressStart,
      void Function(LongPressMoveUpdateDetails)? secondaryLongPressMoveUpdate,
      VoidCallback? secondaryLongPressUp,
      void Function(LongPressEndDetails)? secondaryLongPressEnd,
      void Function(DragDownDetails)? verticalDragDown,
      void Function(DragStartDetails)? verticalDragStart,
      void Function(DragUpdateDetails)? verticalDragUpdate,
      void Function(DragEndDetails)? verticalDragEnd,
      VoidCallback? verticalDragCancel,
      void Function(DragDownDetails)? horizontalDragDown,
      void Function(DragStartDetails)? horizontalDragStart,
      void Function(DragUpdateDetails)? horizontalDragUpdate,
      void Function(DragEndDetails)? horizontalDragEnd,
      VoidCallback? horizontalDragCancel,
      void Function(ForcePressDetails)? forcePressStart,
      void Function(ForcePressDetails)? forcePressPeak,
      void Function(ForcePressDetails)? forcePressUpdate,
      void Function(ForcePressDetails)? forcePressEnd,
      void Function(DragDownDetails)? panDown,
      void Function(DragStartDetails)? panStart,
      void Function(DragUpdateDetails)? panUpdate,
      void Function(DragEndDetails)? panEnd,
      VoidCallback? panCancel,
      void Function(ScaleStartDetails)? scaleStart,
      void Function(ScaleUpdateDetails)? scaleUpdate,
      void Function(ScaleEndDetails)? scaleEnd}) {
    _widget = GestureDetector(
      onTapDown: tapDown,
      onTapUp: tapUp,
      onTap: tap,
      onTapCancel: tapCancel,
      onSecondaryTap: secondaryTap,
      onSecondaryTapDown: secondaryTapDown,
      onSecondaryTapUp: secondaryTapUp,
      onSecondaryTapCancel: secondaryTapCancel,
      onTertiaryTapDown: tertiaryTapDown,
      onTertiaryTapUp: tertiaryTapUp,
      onTertiaryTapCancel: tertiaryTapCancel,
      onDoubleTapDown: doubleTapDown,
      onDoubleTap: doubleTap,
      onDoubleTapCancel: doubleTapCancel,
      onLongPress: longPress,
      onLongPressStart: longPressStart,
      onLongPressMoveUpdate: longPressMoveUpdate,
      onLongPressUp: longPressUp,
      onLongPressEnd: longPressEnd,
      onSecondaryLongPress: secondaryLongPress,
      onSecondaryLongPressStart: secondaryLongPressStart,
      onSecondaryLongPressMoveUpdate: secondaryLongPressMoveUpdate,
      onSecondaryLongPressUp: secondaryLongPressUp,
      onSecondaryLongPressEnd: secondaryLongPressEnd,
      onVerticalDragDown: verticalDragDown,
      onVerticalDragStart: verticalDragStart,
      onVerticalDragUpdate: verticalDragUpdate,
      onVerticalDragEnd: verticalDragEnd,
      onVerticalDragCancel: verticalDragCancel,
      onHorizontalDragDown: horizontalDragDown,
      onHorizontalDragStart: horizontalDragStart,
      onHorizontalDragUpdate: horizontalDragUpdate,
      onHorizontalDragEnd: horizontalDragEnd,
      onHorizontalDragCancel: horizontalDragCancel,
      onForcePressStart: forcePressStart,
      onForcePressPeak: forcePressPeak,
      onForcePressUpdate: forcePressUpdate,
      onForcePressEnd: forcePressEnd,
      onPanDown: panDown,
      onPanStart: panStart,
      onPanUpdate: panUpdate,
      onPanEnd: panEnd,
      onPanCancel: panCancel,
      onScaleStart: scaleStart,
      onScaleUpdate: scaleUpdate,
      onScaleEnd: scaleEnd,
      child: _widget,
    );

    return this;
  }

  /// Add [Material] to widget
  ///
  /// Equivalent to
  /// ```
  /// Material(
  ///   elevation: elevation,
  ///   color: color,
  ///   shadowColor: shadowColor
  /// )
  /// ```
  Niku material({double elevation = 0, Color? color, Color? shadowColor}) {
    _widget = Material(
      child: _widget,
      elevation: elevation,
      color: color,
      shadowColor: shadowColor,
    );

    return this;
  }

  /// Add [InkWell] to widget
  ///
  /// Equivalent to
  /// ```
  /// InkWell(
  ///   hoverColor: hover,
  ///   focusColor: focus,
  ///   highlightColor: highlight,
  ///   splashColor: splash,
  ///   radius: radius,
  ///   autofocus: autofocus
  /// )
  /// ```
  Niku inkwell({
    Color? hover,
    Color? focus,
    Color? highlight,
    Color? splash,
    double? radius,
    bool autofocus = false,
    VoidCallback? onTap,
  }) {
    _widget = InkWell(
      child: _widget,
      hoverColor: hover,
      focusColor: focus,
      highlightColor: highlight,
      splashColor: splash,
      radius: radius,
      onTap: onTap,
      autofocus: autofocus,
    );

    return this;
  }

  /// Decorate with border using [Border]
  ///
  /// Equivalent to
  /// ```
  /// DecoratedBox(
  ///   decoration: BoxDecoration(
  ///     border: input
  ///   )
  /// )
  /// ```
  Niku border(Border border) {
    _widget = DecoratedBox(
      decoration: BoxDecoration(border: border),
      child: _widget,
    );

    return this;
  }

  /// Add backdrop filter to widget
  ///
  /// Equivalent to
  /// ```
  /// BackdropFilter(
  ///   filter: input
  /// )
  /// ```
  Niku backdropFilter(ImageFilter filter) {
    _widget = BackdropFilter(
      filter: filter,
      child: _widget,
    );

    return this;
  }

  /// Add Positioned to widget
  ///
  /// Equivalent to
  /// ```
  /// Positioned(
  ///   top: top,
  ///   left: left,
  ///   bottom: bottom,
  ///   right: right
  /// )
  /// ```
  Niku positioned({double? top, double? left, double? bottom, double? right}) {
    _widget = Positioned(
      top: top,
      left: left,
      bottom: bottom,
      right: right,
      child: _widget,
    );

    return this;
  }

  /// Add singleChildScrolLView to widget
  ///
  /// Equivalent to
  /// ```
  /// singleChildScrollView(
  /// )
  /// ```
  Niku singleChildScrollView({
    ScrollController? controller,
    Axis scrollDirection = Axis.vertical,
    bool? primary,
    bool reverse = false,
    ScrollPhysics? scrollPhysics,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    String? restorationId,
  }) {
    _widget = SingleChildScrollView(
      child: _widget,
      controller: controller,
      scrollDirection: scrollDirection,
      primary: primary,
      reverse: reverse,
      physics: scrollPhysics,
      dragStartBehavior: dragStartBehavior,
      restorationId: restorationId,
    );

    return this;
  }

  /// Add singleChildScrolLView to widget
  ///
  /// Equivalent to
  /// ```
  /// singleChildScrollView(
  /// )
  /// ```
  Niku scrollable({
    ScrollController? controller,
    Axis scrollDirection = Axis.vertical,
    bool? primary,
    bool reverse = false,
    ScrollPhysics? scrollPhysics,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    String? restorationId,
  }) {
    _widget = SingleChildScrollView(
      child: _widget,
      controller: controller,
      scrollDirection: scrollDirection,
      primary: primary,
      reverse: reverse,
      physics: scrollPhysics,
      dragStartBehavior: dragStartBehavior,
      restorationId: restorationId,
    );

    return this;
  }

  /// Apply Flexible to widget
  ///
  /// Equivalent to
  /// ```
  /// Flexible(
  ///   flex: input
  /// )
  /// ```
  Niku flexible([int flex = 1]) {
    _widget = Flexible(
      child: _widget,
      flex: flex,
    );

    return this;
  }

  /// Apply Flexible to widget
  ///
  /// Equivalent to
  /// ```
  /// Flexible(
  ///   flex: input
  /// )
  /// ```
  Niku flex([int flex = 1]) {
    _widget = Flexible(
      child: _widget,
      flex: flex,
    );

    return this;
  }

  /// Add shadows to widget
  ///
  /// Equivalent to
  /// ```
  /// DecoratedBox(
  ///   decoration: BoxDecoration(
  ///     boxShadow: shadows
  ///   )
  /// )
  /// ```
  Niku shadows(List<BoxShadow> shadows) {
    _widget = DecoratedBox(
      child: _widget,
      decoration: BoxDecoration(boxShadow: shadows),
    );

    return this;
  }

  /// Wrap widget in animated builder
  ///
  /// Example usage
  /// ```
  /// Niku()
  ///   .animatedBuilder(
  ///     animation: animation,
  ///     builder: (context, child) { _widget = Container(
  ///       child: child,
  ///       margin: EdgeInsets.all(animation.value)
  ///     )
  ///   })
  /// ```
  Niku animatedBuilder({
    required Widget Function(BuildContext context, Widget child) builder,
    required AnimationController animation,
  }) {
    _widget = AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        return builder(context, child!);
      },
      child: _widget,
    );

    return this;
  }

  /// Wrap widget in animated builder
  ///
  /// Example usage
  /// ```
  /// Niku()
  ///   .animatedBuilder(
  ///     animation: animation,
  ///     builder: (context, child) { _widget = Container(
  ///       child: child,
  ///       margin: EdgeInsets.all(animation.value)
  ///     )
  ///   })
  /// ```
  Niku animated(
    AnimationController animation,
    Widget Function(BuildContext context, Widget child) builder,
  ) {
    _widget = AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        return builder(context, child!);
      },
      child: _widget,
    );

    return this;
  }

  /// Add semantic to widget
  ///
  /// Equivalent to
  /// ```
  /// Semantics(
  ///   ...params
  /// )
  /// ```
  Niku semantics({
    bool container = false,
    bool explicitChildNodes = false,
    bool excludeSemantics = false,
    bool? enabled,
    bool? checked,
    bool? selected,
    bool? toggled,
    bool? button,
    bool? slider,
    bool? link,
    bool? header,
    bool? textField,
    bool? readOnly,
    bool? focusable,
    bool? focused,
    bool? inMutuallyExclusiveGroup,
    bool? obscured,
    bool? multiline,
    bool? scopesRoute,
    bool? namesRoute,
    bool? hidden,
    bool? image,
    bool? liveRegion,
    int? maxValueLength,
    int? currentValueLength,
    String? label,
    String? value,
    String? increasedValue,
    String? decreasedValue,
    String? hint,
    String? onTapHint,
    String? onLongPressHint,
    TextDirection? textDirection,
    SemanticsSortKey? sortKey,
    SemanticsTag? tagForChildren,
    VoidCallback? onTap,
    VoidCallback? onLongPress,
    VoidCallback? onScrollLeft,
    VoidCallback? onScrollRight,
    VoidCallback? onScrollUp,
    VoidCallback? onScrollDown,
    VoidCallback? onIncrease,
    VoidCallback? onDecrease,
    VoidCallback? onCopy,
    VoidCallback? onCut,
    VoidCallback? onPaste,
    VoidCallback? onDismiss,
    MoveCursorHandler? onMoveCursorForwardByCharacter,
    MoveCursorHandler? onMoveCursorBackwardByCharacter,
    SetSelectionHandler? onSetSelection,
    VoidCallback? onDidGainAccessibilityFocus,
    VoidCallback? onDidLoseAccessibilityFocus,
    Map<CustomSemanticsAction, VoidCallback>? customSemanticsActions,
  }) {
    _widget = Semantics(
      child: _widget,
      container: container,
      explicitChildNodes: explicitChildNodes,
      excludeSemantics: excludeSemantics,
      enabled: enabled,
      checked: checked,
      selected: selected,
      toggled: toggled,
      button: button,
      slider: slider,
      link: link,
      header: header,
      textField: textField,
      readOnly: readOnly,
      focusable: focusable,
      focused: focused,
      inMutuallyExclusiveGroup: inMutuallyExclusiveGroup,
      obscured: obscured,
      multiline: multiline,
      scopesRoute: scopesRoute,
      namesRoute: namesRoute,
      hidden: hidden,
      image: image,
      liveRegion: liveRegion,
      maxValueLength: maxValueLength,
      currentValueLength: currentValueLength,
      label: label,
      value: value,
      increasedValue: increasedValue,
      decreasedValue: decreasedValue,
      hint: hint,
      onTapHint: onTapHint,
      onLongPressHint: onLongPressHint,
      textDirection: textDirection,
      sortKey: sortKey,
      tagForChildren: tagForChildren,
      onTap: onTap,
      onLongPress: onLongPress,
      onScrollLeft: onScrollLeft,
      onScrollRight: onScrollRight,
      onScrollUp: onScrollUp,
      onScrollDown: onScrollDown,
      onIncrease: onIncrease,
      onDecrease: onDecrease,
      onCopy: onCopy,
      onCut: onCut,
      onPaste: onPaste,
      onDismiss: onDismiss,
      onMoveCursorForwardByCharacter: onMoveCursorForwardByCharacter,
      onMoveCursorBackwardByCharacter: onMoveCursorBackwardByCharacter,
      onSetSelection: onSetSelection,
      onDidGainAccessibilityFocus: onDidGainAccessibilityFocus,
      onDidLoseAccessibilityFocus: onDidLoseAccessibilityFocus,
      customSemanticsActions: customSemanticsActions,
    );

    return this;
  }

  /// Wrap widget in animated container
  ///
  /// Example usage
  /// ```
  /// Niku()
  ///   .animatedBuilder(
  ///     animation: animation,
  ///     builder: (context, child) { _widget = Container(
  ///       child: child,
  ///       margin: EdgeInsets.all(animation.value)
  ///     )
  ///   })
  /// ```
  Niku animatedContainer({
    Alignment? alignment,
    EdgeInsets? padding,
    Color? color,
    Decoration? decoration,
    BoxDecoration? foregroundDecoration,
    double? width,
    double? height,
    BoxConstraints? constraints,
    EdgeInsets? margin,
    Matrix4? transform,
    AlignmentGeometry? transformAlignment,
    Clip clipBehavior = Clip.none,
    Curve curve = Curves.linear,
    required Duration duration,
    VoidCallback? onEnd,
  }) {
    _widget = AnimatedContainer(
      child: _widget,
      alignment: alignment,
      padding: padding,
      color: color,
      decoration: decoration,
      foregroundDecoration: foregroundDecoration,
      width: width,
      height: height,
      constraints: constraints,
      margin: margin,
      transform: transform,
      transformAlignment: transformAlignment,
      clipBehavior: clipBehavior,
      curve: curve,
      duration: duration,
      onEnd: onEnd,
    );

    return this;
  }

  /// Wrap widget in Form
  ///
  /// Example usage
  /// ```
  /// final formKey = GlobalKey<FormState>();
  ///
  /// Niku()
  ///   .form(
  ///     key: formKey,
  ///   );
  /// ```
  Niku form({
    required Key key,
    AutovalidateMode? autovalidateMode,
    Future<bool> Function()? onWillPop,
    void Function()? onChanged,
  }) {
    _widget = Form(
      key: key,
      child: _widget,
      autovalidateMode: autovalidateMode,
      onWillPop: onWillPop,
      onChanged: onChanged,
    );

    return this;
  }
}
