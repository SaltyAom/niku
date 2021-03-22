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
/// Niku(Container())
///   .background(Colors.blue)
///   .p(21)
///   .build()
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
class NTNiku extends StatelessWidget {
  Widget _widget;

  bool _niku = true;

  // For logging
  Widget? _base;

  /// Niku Widget for styling widget
  ///
  /// Style property builder for building Widget
  ///
  /// Example usage:
  /// ```
  /// Niku(Container())
  ///   .background(Colors.blue)
  ///   .p(21)
  ///   .build()
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
  NTNiku([this._widget = const SizedBox.shrink()]) : _base = _widget;

  @protected
  Widget get widget => _widget;

  @protected
  void setWidget(Widget child) {
    _widget = child;
  }

  @protected
  bool get useNiku => _niku;

  @protected
  void setNiku(bool value) {
    _niku = value;
  }

  @protected
  void setBase(Widget widget) {
    _base = widget;
  }

  @override
  build(context) => _widget;

  /// Add custom widget
  ///
  /// Example usage
  /// ```
  /// Niku()
  ///  .builder((child) {
  ///      return AnimatedContainer(
  ///          width: 200,
  ///          height: 200,
  ///          child: child
  ///      );
  ///  })
  ///  .build()
  /// ```
  void builder(Widget Function(Widget child) builder) {
    assert(useNiku, "Can't use '.builder()' because Niku has not been called");

    _widget = builder(_widget);
  }

  /// Apply margin using [EdgeInsets]
  ///
  /// Equivalent to:
  /// ```
  /// Container(
  ///   margin: input
  /// )
  /// ```
  void margin(EdgeInsets margin) {
    assert(useNiku, "Can't use '.margin()' because Niku has not been called");

    _widget = Container(
      margin: margin,
      child: _widget,
    );
  }

  /// Apply margin to all side
  ///
  /// Equivalent to:
  /// ```
  /// Container(
  ///   margin: EdgeInsets.all(input)
  /// )
  /// ```
  void m(double margin) {
    assert(useNiku, "Can't use '.m()' because Niku has not been called");

    _widget = Container(
      margin: EdgeInsets.all(margin),
      child: _widget,
    );
  }

  /// Apply margin to x axis
  ///
  /// Equivalent to:
  /// ```
  /// Container(
  ///   margin: EdgeInsets.symmetric(horizontal: input)
  /// )
  /// ```
  void mx(double margin) {
    assert(useNiku, "Can't use '.mx()' because Niku has not been called");

    _widget = Container(
      margin: EdgeInsets.symmetric(horizontal: margin),
      child: _widget,
    );
  }

  /// Apply margin to y axis
  ///
  /// Equivalent to:
  /// ```
  /// Container(
  ///   margin: EdgeInsets.symmetric(vertical: input)
  /// )
  /// ```
  void my(double margin) {
    assert(useNiku, "Can't use '.my()' because Niku has not been called");

    _widget = Container(
      margin: EdgeInsets.symmetric(vertical: margin),
      child: _widget,
    );
  }

  /// Apply margin to top
  ///
  /// Equivalent to:
  /// ```
  /// Container(
  ///   margin: EdgeInsets.only(top: input)
  /// )
  /// ```
  void mt(double margin) {
    assert(useNiku, "Can't use '.mt()' because Niku has not been called");

    _widget = Container(
      margin: EdgeInsets.only(top: margin),
      child: _widget,
    );
  }

  /// Apply margin to bottom
  ///
  /// Equivalent to:
  /// ```
  /// Container(
  ///   margin: EdgeInsets.only(bototm: input)
  /// )
  /// ```
  void mb(double margin) {
    assert(useNiku, "Can't use '.mb()' because Niku has not been called");

    _widget = Container(
      margin: EdgeInsets.only(bottom: margin),
      child: _widget,
    );
  }

  /// Apply margin to left side
  ///
  /// Equivalent to:
  /// ```
  /// Container(
  ///   margin: EdgeInsets.only(left: input)
  /// )
  /// ```
  void ml(double margin) {
    assert(useNiku, "Can't use '.ml()' because Niku has not been called");

    _widget = Container(
      margin: EdgeInsets.only(left: margin),
      child: _widget,
    );
  }

  /// Apply margin to right side
  ///
  /// Equivalent to:
  /// ```
  /// Container(
  ///   margin: EdgeInsets.only(right: input)
  /// )
  /// ```
  void mr(double margin) {
    assert(useNiku, "Can't use '.mr()' because Niku has not been called");

    _widget = Container(
      margin: EdgeInsets.only(right: margin),
      child: _widget,
    );
  }

  /// Apply padding using [EdgeInsets]
  ///
  /// Equivalent to:
  /// ```
  /// Padding(
  ///   padding: input
  /// )
  /// ```
  void padding(EdgeInsets padding) {
    assert(useNiku, "Can't use '.padding()' because Niku has not been called");

    _widget = Padding(
      padding: padding,
      child: _widget,
    );
  }

  /// Apply padding to all side
  ///
  /// Equivalent to:
  /// ```
  /// Padding(
  ///   padding: EdgeInsets.all(input)
  /// )
  /// ```
  void p(double padding) {
    assert(
        useNiku, "Can't use '.p()' because Niku has not been called on $_base");

    _widget = Padding(
      padding: EdgeInsets.all(padding),
      child: _widget,
    );
  }

  /// Apply padding to x axis
  ///
  /// Equivalent to:
  /// ```
  /// Padding(
  ///   padding: EdgeInsets.symmetric(horizontal: input)
  /// )
  /// ```
  void px(double padding) {
    assert(useNiku, "Can't use '.px()' because Niku has not been called");

    _widget = Padding(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: _widget,
    );
  }

  /// Apply padding to y axis
  ///
  /// Equivalent to:
  /// ```
  /// Padding(
  ///   padding: EdgeInsets.symmetric(vertical: input)
  /// )
  /// ```
  void py(double padding) {
    assert(useNiku, "Can't use '.py()' because Niku has not been called");

    _widget = Padding(
      padding: EdgeInsets.symmetric(vertical: padding),
      child: _widget,
    );
  }

  /// Apply padding to top
  ///
  /// Equivalent to:
  /// ```
  /// Padding(
  ///   padding: EdgeInsets.symmetric(top: input)
  /// )
  /// ```
  void pt(double padding) {
    assert(useNiku, "Can't use '.pt()' because Niku has not been called");

    _widget = Padding(
      padding: EdgeInsets.only(top: padding),
      child: _widget,
    );
  }

  /// Apply padding to bottom
  ///
  /// Equivalent to:
  /// ```
  /// Padding(
  ///   padding: EdgeInsets.symmetric(bottom: input)
  /// )
  /// ```
  void pb(double padding) {
    assert(useNiku, "Can't use '.pb()' because Niku has not been called");

    _widget = Padding(
      padding: EdgeInsets.only(bottom: padding),
      child: _widget,
    );
  }

  /// Apply padding to left side
  ///
  /// Equivalent to:
  /// ```
  /// Padding(
  ///   padding: EdgeInsets.symmetric(left: input)
  /// )
  /// ```
  void pl(double padding) {
    assert(useNiku, "Can't use '.pl()' because Niku has not been called");

    _widget = Padding(
      padding: EdgeInsets.only(left: padding),
      child: _widget,
    );
  }

  /// Apply padding to right side
  ///
  /// Equivalent to:
  /// ```
  /// Padding(
  ///   padding: EdgeInsets.symmetric(right: input)
  /// )
  /// ```
  void pr(double padding) {
    assert(useNiku, "Can't use '.pr()' because Niku has not been called");

    _widget = Padding(
      padding: EdgeInsets.only(right: padding),
      child: _widget,
    );
  }

  /// Apply alignment to widget
  ///
  /// Equivalent to:
  /// ```
  /// Align(
  ///   alignment: input
  /// )
  /// ```
  void align(AlignmentGeometry align) {
    assert(useNiku, "Can't use '.align()' because Niku has not been called");

    _widget = Align(
      alignment: align,
      child: _widget,
    );
  }

  /// Applyto top left
  ///
  /// Equivalent to:
  /// ```
  /// Align(
  ///   alignment: Alignment.topLeft
  /// )
  /// ```
  void topLeft() {
    assert(useNiku, "Can't use '.topLeft()' because Niku has not been called");

    _widget = Align(
      alignment: Alignment.topLeft,
      child: _widget,
    );
  }

  /// Applyto top center
  ///
  /// Equivalent to:
  /// ```
  /// Align(
  ///   alignment: Alignment.topCenter
  /// )
  /// ```
  void topCenter() {
    assert(
        !useNiku, "Can't use '.topCenter()' because Niku has not been called");

    _widget = Align(
      alignment: Alignment.topCenter,
      child: _widget,
    );
  }

  /// Applyto top right
  ///
  /// Equivalent to:
  /// ```
  /// Align(
  ///   alignment: Alignment.topRight
  /// )
  /// ```
  void topRight() {
    assert(
        !useNiku, "Can't use '.topRight()' because Niku has not been called");

    _widget = Align(
      alignment: Alignment.topRight,
      child: _widget,
    );
  }

  /// Applyto center left
  ///
  /// Equivalent to:
  /// ```
  /// Align(
  ///   alignment: Alignment.centerLeft
  /// )
  /// ```
  void centerLeft() {
    assert(
        !useNiku, "Can't use '.centerLeft()' because Niku has not been called");

    _widget = Align(
      alignment: Alignment.centerLeft,
      child: _widget,
    );
  }

  /// Applyto center
  ///
  /// Equivalent to:
  /// ```
  /// Align(
  ///   alignment: Alignment.center
  /// )
  /// ```
  void center() {
    assert(useNiku, "Can't use '.center()' because Niku has not been called");

    _widget = Center(
      child: _widget,
    );
  }

  /// Applyto center right
  ///
  /// Equivalent to:
  /// ```
  /// Align(
  ///   alignment: Alignment.centerRight
  /// )
  /// ```
  void centerRight() {
    assert(
        useNiku, "Can't use '.centerRight()' because Niku has not been called");

    _widget = Align(
      alignment: Alignment.centerRight,
      child: _widget,
    );
  }

  /// Applyto bottom left
  ///
  /// Equivalent to:
  /// ```
  /// Align(
  ///   alignment: Alignment.bottomLeft
  /// )
  /// ```
  void bottomLeft() {
    assert(
        !useNiku, "Can't use '.bottomLeft()' because Niku has not been called");

    _widget = Align(
      alignment: Alignment.bottomLeft,
      child: _widget,
    );
  }

  /// Applyto bottom center
  ///
  /// Equivalent to:
  /// ```
  /// Align(
  ///   alignment: Alignment.bottomCenter
  /// )
  /// ```
  void bottomCenter() {
    assert(useNiku,
        "Can't use '.bottomCenter()' because Niku has not been called");

    _widget = Align(
      alignment: Alignment.bottomCenter,
      child: _widget,
    );
  }

  /// Applyto bottom right
  ///
  /// Equivalent to:
  /// ```
  /// Align(
  ///   alignment: Alignment.bottomRight
  /// )
  /// ```
  void bottomRight() {
    assert(
        useNiku, "Can't use '.bottomRight()' because Niku has not been called");

    _widget = Align(
      alignment: Alignment.bottomRight,
      child: _widget,
    );
  }

  /// Apply both full width and height to self
  ///
  /// Equivalent to:
  /// ```
  /// SizedBox(
  ///   width: double.infinity
  /// )
  /// ```
  void fullSize() {
    assert(
        !useNiku, "Can't use '.fullSize()' because Niku has not been called");

    _widget = SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: _widget,
    );
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
  void fullWidth() {
    assert(
        !useNiku, "Can't use '.fullWidth()' because Niku has not been called");

    _widget = SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: _widget,
    );
  }

  /// Apply full width to self
  ///
  /// Equivalent to:
  /// ```
  /// SizedBox(
  ///   height: double.infinity
  /// )
  /// ```
  void fullHeight() {
    assert(
        !useNiku, "Can't use '.fullHeight()' because Niku has not been called");

    _widget = SizedBox(
      height: double.infinity,
      child: _widget,
    );
  }

  /// Apply aspect ratio to self
  ///
  /// Equivalent to:
  /// ```
  /// AspectRatio(
  ///   aspecrRatio: input
  /// )
  /// ```
  void aspectRatio(double aspectRatio) {
    assert(
        useNiku, "Can't use '.aspectRatio()' because Niku has not been called");

    _widget = AspectRatio(
      aspectRatio: aspectRatio,
      child: _widget,
    );
  }

  /// Apply expanded to self
  ///
  /// Equivalent to:
  /// ```
  /// Expanded()
  /// ```
  void expanded([int flex = 1]) {
    assert(
        !useNiku, "Can't use '.expanded()' because Niku has not been called");

    _widget = Expanded(child: _widget);
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
  void fractionSize(double width, double height) {
    assert(useNiku,
        "Can't use '.fractionSize()' because Niku has not been called");

    _widget = FractionallySizedBox(
      widthFactor: width,
      heightFactor: height,
      child: _widget,
    );
  }

  /// Set width in percent
  ///
  /// Equivalent to:
  /// ```
  /// FractionallySizedBox(
  ///   widthFactor: input
  /// )
  /// ```
  void fractionWidth(double fraction) {
    assert(useNiku,
        "Can't use '.fractionWidth()' because Niku has not been called");

    _widget = FractionallySizedBox(
      widthFactor: fraction,
      child: _widget,
    );
  }

  /// Set height in percent
  ///
  /// Equivalent to:
  /// ```
  /// FractionallySizedBox(
  ///   heightFactor: input
  /// )
  /// ```
  void fractionHeight(double fraction) {
    assert(useNiku,
        "Can't use '.fractionHeight()' because Niku has not been called");

    _widget = FractionallySizedBox(
      widthFactor: fraction,
      child: _widget,
    );
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
  void widthPercent(double percent) {
    assert(useNiku,
        "Can't use '.widthPercent()' because Niku has not been called");

    _widget = FractionallySizedBox(
      widthFactor: percent / 100,
      child: _widget,
    );
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
  void heightPercent(double percent) {
    assert(useNiku,
        "Can't use '.heightPercent()' because Niku has not been called");

    _widget = FractionallySizedBox(
      widthFactor: percent / 100,
      child: _widget,
    );
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
  void sizePercent(double width, double height) {
    assert(
        useNiku, "Can't use '.sizePercent()' because Niku has not been called");

    _widget = FractionallySizedBox(
      widthFactor: width / 100,
      heightFactor: height / 100,
      child: _widget,
    );
  }

  /// Add new container to widget
  ///
  /// Equivalent to:
  /// ```
  /// Container()
  /// ```
  void container() {
    assert(
        !useNiku, "Can't use '.container()' because Niku has not been called");

    _widget = Container(
      child: _widget,
    );
  }

  /// Set minimum and maximum size for widget
  ///
  /// Equivalent to:
  /// ```
  /// ConstrainedBox(
  ///   constraints: input
  /// )
  /// ```
  void constraints(BoxConstraints constraints) {
    assert(
        useNiku, "Can't use '.constraints()' because Niku has not been called");

    _widget = ConstrainedBox(
      constraints: constraints,
      child: _widget,
    );
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
  void maxSize(double maxWidth, double maxHeight) {
    assert(useNiku, "Can't use '.maxSize()' because Niku has not been called");

    _widget = ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: maxWidth,
        maxHeight: maxHeight,
      ),
      child: _widget,
    );
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
  void maxWidth(double maxWidth) {
    assert(
        !useNiku, "Can't use '.maxWidth()' because Niku has not been called");

    _widget = ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: maxWidth,
      ),
      child: _widget,
    );
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
  void maxHeight(double maxHeight) {
    assert(
        !useNiku, "Can't use '.maxHeight()' because Niku has not been called");

    _widget = ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: maxHeight,
      ),
      child: _widget,
    );
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
  void minSize(double minWidth, double minHeight) {
    assert(useNiku, "Can't use '.minSize()' because Niku has not been called");

    _widget = ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: minWidth,
        minHeight: minHeight,
      ),
      child: _widget,
    );
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
  void minWidth(double minWidth) {
    assert(
        !useNiku, "Can't use '.minWidth()' because Niku has not been called");

    _widget = ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: minWidth,
      ),
      child: _widget,
    );
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
  void minHeight(double minHeight) {
    assert(
        !useNiku, "Can't use '.minHeight()' because Niku has not been called");

    _widget = ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: minHeight,
      ),
      child: _widget,
    );
  }

  /// Set height of Widget
  ///
  /// Equivalent to:
  /// ```
  /// SizedBox(
  ///   height: input
  /// )
  /// ```
  void size(double width, double height) {
    assert(useNiku, "Can't use '.size()' because Niku has not been called");

    _widget = SizedBox(
      width: width,
      height: height,
      child: _widget,
    );
  }

  /// Set width of widget
  ///
  /// Equivalent to:
  /// ```
  /// SizedBox(
  ///   width: input
  /// )
  /// ```
  void width(double width) {
    assert(useNiku, "Can't use '.width()' because Niku has not been called");

    _widget = SizedBox(
      width: width,
      child: _widget,
    );
  }

  /// Set height of Widget
  ///
  /// Equivalent to:
  /// ```
  /// SizedBox(
  ///   height: input
  /// )
  /// ```
  void height(double height) {
    assert(useNiku, "Can't use '.height()' because Niku has not been called");

    _widget = SizedBox(
      height: height,
      child: _widget,
    );
  }

  /// Apply [FittedBox] for widget
  ///
  /// Equivalent to:
  /// ```
  /// FittedBox()
  /// ```
  void fitted() {
    assert(useNiku, "Can't use '.fitted()' because Niku has not been called");

    _widget = FittedBox(
      child: _widget,
    );
  }

  /// Apply background to widget
  ///
  /// Equivalent to:
  /// ```
  /// ColoredBox(
  ///   color: input
  /// )
  /// ```
  void bg(Color color) {
    assert(useNiku, "Can't use '.bg()' because Niku has not been called");

    _widget = ColoredBox(
      color: color,
      child: _widget,
    );
  }

  /// Apply background to widget
  ///
  /// Equivalent to:
  /// ```
  /// ColoredBox(
  ///   color: input
  /// )
  /// ```
  void backgroundColor(Color color) {
    assert(useNiku,
        "Can't use '.backgroundColor()' because Niku has not been called");

    _widget = ColoredBox(
      color: color,
      child: _widget,
    );
  }

  /// Apply opacity to widget
  ///
  /// Equivalent to:
  /// ```
  /// Opacity(
  ///   opacity: input
  /// )
  /// ```
  void opacity(double opacity) {
    assert(useNiku, "Can't use '.opacity()' because Niku has not been called");

    _widget = Opacity(
      opacity: opacity,
      child: _widget,
    );
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
  void rounded([double borderRadius = 999999]) {
    assert(useNiku, "Can't use '.rounded()' because Niku has not been called");

    _widget = ClipRRect(
      borderRadius: BorderRadius.all(
        Radius.circular(borderRadius),
      ),
      child: _widget,
    );
  }

  /// Apply [BoxDecoration] to widget
  ///
  /// Equivalent to:
  /// ```
  /// DecoratedBox(
  ///   boxDecoration: input
  /// )
  /// ```
  void boxDecoration(BoxDecoration boxDecoration) {
    assert(useNiku,
        "Can't use '.boxDecoration()' because Niku has not been called");

    _widget = DecoratedBox(
      child: _widget,
      decoration: boxDecoration,
    );
  }

  /// Apply [Hero] to widget
  ///
  /// Equivalent to:
  /// ```
  /// Hero(
  ///   tag: input
  /// )
  /// ```
  void heroTag(String heroTag) {
    assert(useNiku, "Can't use '.heroTag()' because Niku has not been called");

    _widget = Hero(
      tag: heroTag,
      child: _widget,
    );
  }

  /// Apply [IgnorePointer] to widget
  ///
  /// Equivalent to:
  /// ```
  /// IgnorePointer(
  ///   ignoring: input
  /// )
  /// ```
  void ignorePointer(bool ignoring) {
    assert(useNiku,
        "Can't use '.ignorePointer()' because Niku has not been called");

    _widget = IgnorePointer(
      ignoring: ignoring,
      child: _widget,
    );
  }

  /// Apply [AbsorbPointer] to widget
  ///
  /// Equivalent to:
  /// ```
  /// AbsorbPointer(
  ///   absorbing: input
  /// )
  /// ```
  void absorbPointer(bool absorbing) {
    assert(useNiku,
        "Can't use '.absorbPointer()' because Niku has not been called");

    _widget = AbsorbPointer(
      absorbing: absorbing,
      child: _widget,
    );
  }

  /// Apply tooltip to widget
  ///
  /// Equivalent to:
  /// ```
  /// Tooltip(
  ///   message: input
  /// )
  /// ```
  void tooltip(String tip) {
    assert(useNiku, "Can't use '.tooltip()' because Niku has not been called");

    _widget = Tooltip(
      message: tip,
      child: _widget,
    );
  }

  /// Apply transform to widget
  ///
  /// Equivalent to:
  /// ```
  /// Transform(
  ///   transform: input
  /// )
  /// ```
  void transform(Matrix4 transform) {
    assert(
        !useNiku, "Can't use '.transform()' because Niku has not been called");

    _widget = Transform(
      transform: transform,
      child: _widget,
    );
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
  void on({
    void Function(TapDownDetails)? tapDown,
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
    void Function(ScaleEndDetails)? scaleEnd,
  }) {
    assert(useNiku, "Can't use '.on()' because Niku has not been called");

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
  void material({double elevation = 0, Color? color, Color? shadowColor}) {
    assert(
        !useNiku, "Can't use '.material()' because Niku has not been called");

    _widget = Material(
      child: _widget,
      elevation: elevation,
      color: color,
      shadowColor: shadowColor,
    );
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
  void inkwell({
    Color? hover,
    Color? focus,
    Color? highlight,
    Color? splash,
    double? radius,
    bool autofocus = false,
    VoidCallback? onTap,
  }) {
    assert(useNiku, "Can't use '.inkwell()' because Niku has not been called");

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
  void border(Border border) {
    assert(useNiku, "Can't use '.border()' because Niku has not been called");

    _widget = DecoratedBox(
      decoration: BoxDecoration(
        border: border,
      ),
      child: _widget,
    );
  }

  /// Add backdrop filter to widget
  ///
  /// Equivalent to
  /// ```
  /// BackdropFilter(
  ///   filter: input
  /// )
  /// ```
  void backdropFilter(ImageFilter filter) {
    assert(useNiku,
        "Can't use '.backdropFilter()' because Niku has not been called");

    _widget = BackdropFilter(
      filter: filter,
      child: _widget,
    );
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
  void positioned({
    double? top,
    double? left,
    double? bottom,
    double? right,
  }) {
    assert(
        !useNiku, "Can't use '.positioned()' because Niku has not been called");

    _widget = Positioned(
      top: top,
      left: left,
      bottom: bottom,
      right: right,
      child: _widget,
    );
  }

  /// Add singleChildScrolLView to widget
  ///
  /// Equivalent to
  /// ```
  /// singleChildScrollView(
  /// )
  /// ```
  void singleChildScrollView({
    ScrollController? controller,
    Axis scrollDirection = Axis.vertical,
    bool? primary,
    bool reverse = false,
    ScrollPhysics? scrollPhysics,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    String? restorationId,
  }) {
    assert(useNiku,
        "Can't use '.singleChildScrollView()' because Niku has not been called");

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
  }

  /// Add singleChildScrolLView to widget
  ///
  /// Equivalent to
  /// ```
  /// singleChildScrollView(
  /// )
  /// ```
  void scrollable({
    ScrollController? controller,
    Axis scrollDirection = Axis.vertical,
    bool? primary,
    bool reverse = false,
    ScrollPhysics? scrollPhysics,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    String? restorationId,
  }) {
    assert(
        !useNiku, "Can't use '.scrollable()' because Niku has not been called");

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
  }

  /// Apply Flexible to widget
  ///
  /// Equivalent to
  /// ```
  /// Flexible(
  ///   flex: input
  /// )
  /// ```
  void flexible([int flex = 1]) {
    assert(
        !useNiku, "Can't use '.flexible()' because Niku has not been called");

    _widget = Flexible(
      child: _widget,
      flex: flex,
    );
  }

  /// Apply Flexible to widget
  ///
  /// Equivalent to
  /// ```
  /// Flexible(
  ///   flex: input
  /// )
  /// ```
  void flex([int flex = 1]) {
    assert(useNiku, "Can't use '.flex()' because Niku has not been called");

    _widget = Flexible(
      child: _widget,
      flex: flex,
    );
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
  void shadows(List<BoxShadow> shadows) {
    assert(useNiku, "Can't use '.shadows()' because Niku has not been called");

    _widget = DecoratedBox(
      child: _widget,
      decoration: BoxDecoration(
        boxShadow: shadows,
      ),
    );
  }

  /// Wrapin animated builder
  ///
  /// Example usage
  /// ```
  /// _widget =)
  ///   .animatedBuilder(
  ///     animation: animation,
  ///     builder: (context, child) { Container(
  ///       child: child,
  ///       margin: EdgeInsets.all(animation.value)
  ///     )
  ///   })
  ///   .build()
  /// ```
  void animatedBuilder({
    required Function(BuildContext context, Widget child) builder,
    required AnimationController animation,
  }) {
    assert(useNiku,
        "Can't use '.animatedContainer()' because Niku has not been called");

    _widget = AnimatedBuilder(
      animation: animation,
      builder: (context, child) => builder(context, _widget),
      child: _widget,
    );
  }

  /// Wrapin animated builder
  ///
  /// Example usage
  /// ```
  /// _widget =)
  ///   .animatedBuilder(
  ///     animation: animation,
  ///     builder: (context, child) { Container(
  ///       child: child,
  ///       margin: EdgeInsets.all(animation.value)
  ///     )
  ///   })
  ///   .build()
  /// ```
  void animated(
    Function(BuildContext context, Widget child) builder,
    AnimationController animation,
  ) {
    assert(
        !useNiku, "Can't use '.animated()' because Niku has not been called");

    _widget = AnimatedBuilder(
      animation: animation,
      builder: (context, child) => builder(context, _widget),
      child: _widget,
    );
  }

  /// Add semantic to widget
  ///
  /// Equivalent to
  /// ```
  /// Semantics(
  ///   ...params
  /// )
  /// ```
  void semantics({
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
    assert(
        !useNiku, "Can't use '.semantics()' because Niku has not been called");

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
  }

  /// Wrapin animated container
  ///
  /// Example usage
  /// ```
  /// _widget =)
  ///   .animatedBuilder(
  ///     animation: animation,
  ///     builder: (context, child) { Container(
  ///       child: child,
  ///       margin: EdgeInsets.all(animation.value)
  ///     )
  ///   })
  ///   .build()
  /// ```
  void animatedContainer({
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
    assert(useNiku,
        "Can't use '.animatedContainer()' because Niku has not been called");

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
  }
}
