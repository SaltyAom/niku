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
/// - fractionSize - Set both width and height in percent
///   - fractionWidth - Set width in percent
///   - fractionHeight - Set height in percent
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
class Niku {
  Widget? _widget;

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
  ///   - align - Accept [Align] to align self
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
  /// - fractionSize - Set both width and height in percent
  ///   - fractionWidth - Set width in percent
  ///   - fractionHeight - Set height in percent
  /// - container - Add new container to widget
  /// - constraints, size - Set minimum and maximum size for widget
  ///   - maxSize - Set widget both max width and height
  ///     - maxWidth - Set widget max width
  ///     - maxHeight - Set Widget max height
  ///   - minSize - Set widget both min width and height
  ///     - minWidth - Set widget min width
  ///     - minHeight - Set Widget min height
  /// - fitted - Apply [FittedBox] to widget
  /// - background, bg - Apply background to widget
  /// - opacity - Apply opacity to widget
  /// - rounded - Add border radius to widget
  /// - boxDecoration - Apply [BoxDecoration] to widget
  /// - heroTag - Apply [Hero] to widget
  /// - ignorePointer - Apply [IgnorePointer] to widget
  /// - absorbPointer - Apply [AbsorbPointer] to widget
  /// - tooltip - Add tooptip to widget
  /// - tarnsform - Add transform to widget
  Niku(Widget widget) {
    this._widget = widget;
  }

  /// Apply styles and build Widget
  ///
  /// Example usage:
  /// ```
  /// Niku(Container())
  ///   .background(Colors.blue)
  ///   .p(21)
  ///   .build()
  /// ```
  Widget build() => this._widget!;
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
  Niku margin(EdgeInsets margin) => Niku(Container(
        margin: margin,
        child: this._widget,
      ));

  /// Apply margin to all side
  ///
  /// Equivalent to:
  /// ```
  /// Container(
  ///   margin: EdgeInsets.all(input)
  /// )
  /// ```
  Niku m(double margin) =>
      Niku(Container(margin: EdgeInsets.all(margin), child: this._widget));

  /// Apply margin to x axis
  ///
  /// Equivalent to:
  /// ```
  /// Container(
  ///   margin: EdgeInsets.symmetric(horizontal: input)
  /// )
  /// ```
  Niku mx(double margin) => Niku(Container(
      margin: EdgeInsets.symmetric(horizontal: margin), child: this._widget));

  /// Apply margin to y axis
  ///
  /// Equivalent to:
  /// ```
  /// Container(
  ///   margin: EdgeInsets.symmetric(vertical: input)
  /// )
  /// ```
  Niku my(double margin) => Niku(Container(
      margin: EdgeInsets.symmetric(vertical: margin), child: this._widget));

  /// Apply margin to top
  ///
  /// Equivalent to:
  /// ```
  /// Container(
  ///   margin: EdgeInsets.only(top: input)
  /// )
  /// ```
  Niku mt(double margin) => Niku(
      Container(margin: EdgeInsets.only(top: margin), child: this._widget));

  /// Apply margin to bottom
  ///
  /// Equivalent to:
  /// ```
  /// Container(
  ///   margin: EdgeInsets.only(bototm: input)
  /// )
  /// ```
  Niku mb(double margin) => Niku(
      Container(margin: EdgeInsets.only(bottom: margin), child: this._widget));

  /// Apply margin to left side
  ///
  /// Equivalent to:
  /// ```
  /// Container(
  ///   margin: EdgeInsets.only(left: input)
  /// )
  /// ```
  Niku ml(double margin) => Niku(
      Container(margin: EdgeInsets.only(left: margin), child: this._widget));

  /// Apply margin to right side
  ///
  /// Equivalent to:
  /// ```
  /// Container(
  ///   margin: EdgeInsets.only(right: input)
  /// )
  /// ```
  Niku mr(double margin) => Niku(
      Container(margin: EdgeInsets.only(right: margin), child: this._widget));

  /// Apply padding using [EdgeInsets]
  ///
  /// Equivalent to:
  /// ```
  /// Padding(
  ///   padding: input
  /// )
  /// ```
  Niku padding(EdgeInsets padding) => Niku(Padding(
        padding: padding,
        child: this._widget,
      ));

  /// Apply padding to all side
  ///
  /// Equivalent to:
  /// ```
  /// Padding(
  ///   padding: EdgeInsets.all(input)
  /// )
  /// ```
  Niku p(double padding) => Niku(Padding(
        padding: EdgeInsets.all(padding),
        child: this._widget,
      ));

  /// Apply padding to x axis
  ///
  /// Equivalent to:
  /// ```
  /// Padding(
  ///   padding: EdgeInsets.symmetric(horizontal: input)
  /// )
  /// ```
  Niku px(double padding) => Niku(Padding(
        padding: EdgeInsets.symmetric(horizontal: padding),
        child: this._widget,
      ));

  /// Apply padding to y axis
  ///
  /// Equivalent to:
  /// ```
  /// Padding(
  ///   padding: EdgeInsets.symmetric(vertical: input)
  /// )
  /// ```
  Niku py(double padding) => Niku(Padding(
        padding: EdgeInsets.symmetric(vertical: padding),
        child: this._widget,
      ));

  /// Apply padding to top
  ///
  /// Equivalent to:
  /// ```
  /// Padding(
  ///   padding: EdgeInsets.symmetric(top: input)
  /// )
  /// ```
  Niku pt(double padding) => Niku(Padding(
        padding: EdgeInsets.only(top: padding),
        child: this._widget,
      ));

  /// Apply padding to bottom
  ///
  /// Equivalent to:
  /// ```
  /// Padding(
  ///   padding: EdgeInsets.symmetric(bottom: input)
  /// )
  /// ```
  Niku pb(double padding) => Niku(Padding(
        padding: EdgeInsets.only(bottom: padding),
        child: this._widget,
      ));

  /// Apply padding to left side
  ///
  /// Equivalent to:
  /// ```
  /// Padding(
  ///   padding: EdgeInsets.symmetric(left: input)
  /// )
  /// ```
  Niku pl(double padding) => Niku(Padding(
        padding: EdgeInsets.only(left: padding),
        child: this._widget,
      ));

  /// Apply padding to right side
  ///
  /// Equivalent to:
  /// ```
  /// Padding(
  ///   padding: EdgeInsets.symmetric(right: input)
  /// )
  /// ```
  Niku pr(double padding) => Niku(Padding(
        padding: EdgeInsets.only(right: padding),
        child: this._widget,
      ));

  /// Apply alignment to widget
  ///
  /// Equivalent to:
  /// ```
  /// Align(
  ///   alignment: input
  /// )
  /// ```
  Niku align(AlignmentGeometry align) => Niku(Align(
        alignment: align,
        child: this._widget,
      ));

  /// Apply widget to top left
  ///
  /// Equivalent to:
  /// ```
  /// Align(
  ///   alignment: Alignment.topLeft
  /// )
  /// ```
  Niku topLeft() => Niku(Align(
        alignment: Alignment.topLeft,
        child: this._widget,
      ));

  /// Apply widget to top center
  ///
  /// Equivalent to:
  /// ```
  /// Align(
  ///   alignment: Alignment.topCenter
  /// )
  /// ```
  Niku topCenter() => Niku(Align(
        alignment: Alignment.topCenter,
        child: this._widget,
      ));

  /// Apply widget to top right
  ///
  /// Equivalent to:
  /// ```
  /// Align(
  ///   alignment: Alignment.topRight
  /// )
  /// ```
  Niku topRight() => Niku(Align(
        alignment: Alignment.topRight,
        child: this._widget,
      ));

  /// Apply widget to center left
  ///
  /// Equivalent to:
  /// ```
  /// Align(
  ///   alignment: Alignment.centerLeft
  /// )
  /// ```
  Niku centerLeft() => Niku(Align(
        alignment: Alignment.centerLeft,
        child: this._widget,
      ));

  /// Apply widget to center
  ///
  /// Equivalent to:
  /// ```
  /// Align(
  ///   alignment: Alignment.center
  /// )
  /// ```
  Niku center() => Niku(Center(
        child: this._widget,
      ));

  /// Apply widget to center right
  ///
  /// Equivalent to:
  /// ```
  /// Align(
  ///   alignment: Alignment.centerRight
  /// )
  /// ```
  Niku centerRight() => Niku(Align(
        alignment: Alignment.centerRight,
        child: this._widget,
      ));

  /// Apply widget to bottom left
  ///
  /// Equivalent to:
  /// ```
  /// Align(
  ///   alignment: Alignment.bottomLeft
  /// )
  /// ```
  Niku bottomLeft() => Niku(Align(
        alignment: Alignment.bottomLeft,
        child: this._widget,
      ));

  /// Apply widget to bottom center
  ///
  /// Equivalent to:
  /// ```
  /// Align(
  ///   alignment: Alignment.bottomCenter
  /// )
  /// ```
  Niku bottomCenter() => Niku(Align(
        alignment: Alignment.bottomCenter,
        child: this._widget,
      ));

  /// Apply widget to bottom right
  ///
  /// Equivalent to:
  /// ```
  /// Align(
  ///   alignment: Alignment.bottomRight
  /// )
  /// ```
  Niku bottomRight() => Niku(Align(
        alignment: Alignment.bottomRight,
        child: this._widget,
      ));

  /// Apply both full width and height to self
  ///
  /// Equivalent to:
  /// ```
  /// Container(
  ///   width: double.infinity
  /// )
  /// ```
  Niku fullSize() => Niku(Container(
      width: double.infinity, height: double.infinity, child: this._widget));

  /// Apply full width to self
  ///
  /// Equivalent to:
  /// ```
  /// Container(
  ///   width: double.infinity,
  ///   height: double.infinity
  /// )
  /// ```
  Niku fullWidth() => Niku(Container(
      width: double.infinity, height: double.infinity, child: this._widget));

  /// Apply full width to self
  ///
  /// Equivalent to:
  /// ```
  /// Container(
  ///   height: double.infinity
  /// )
  /// ```
  Niku fullHeight() =>
      Niku(Container(height: double.infinity, child: this._widget));

  /// Apply aspect ratio to self
  ///
  /// Equivalent to:
  /// ```
  /// AspectRatio(
  ///   aspecrRatio: input
  /// )
  /// ```
  Niku aspectRatio(double aspectRatio) =>
      Niku(AspectRatio(aspectRatio: aspectRatio, child: this._widget));

  /// Apply expanded to self
  ///
  /// Equivalent to:
  /// ```
  /// Expanded()
  /// ```
  Niku expanded([int flex = 1]) => Niku(Expanded(child: this._widget!));

  /// Set both width and height in percent
  ///
  /// Equivalent to:
  /// ```
  /// FractionallySizedBox(
  ///   widthFactor: width,
  ///   heightFactor: height
  /// )
  /// ```
  Niku fractionSize(double width, double height) => Niku(FractionallySizedBox(
      widthFactor: width, heightFactor: height, child: this._widget));

  /// Set width in percent
  ///
  /// Equivalent to:
  /// ```
  /// FractionallySizedBox(
  ///   widthFactor: input
  /// )
  /// ```
  Niku fractionWidth(double fraction) =>
      Niku(FractionallySizedBox(widthFactor: fraction, child: this._widget));

  /// Set height in percent
  ///
  /// Equivalent to:
  /// ```
  /// FractionallySizedBox(
  ///   heightFactor: input
  /// )
  /// ```
  Niku fractionHeight(double fraction) =>
      Niku(FractionallySizedBox(widthFactor: fraction, child: this._widget));

  /// Add new container to widget
  ///
  /// Equivalent to:
  /// ```
  /// Container()
  /// ```
  Niku container() => Niku(Container(
        child: this._widget,
      ));

  /// Set minimum and maximum size for widget
  ///
  /// Equivalent to:
  /// ```
  /// ConstrainedBox(
  ///   constraints: input
  /// )
  /// ```
  Niku constraints(BoxConstraints constraints) =>
      Niku(ConstrainedBox(constraints: constraints, child: this._widget));

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
  Niku maxSize(double maxWidth, double maxHeight) => Niku(ConstrainedBox(
      constraints: BoxConstraints(maxWidth: maxWidth, maxHeight: maxHeight),
      child: this._widget));

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
  Niku maxWidth(double maxWidth) => Niku(ConstrainedBox(
      constraints: BoxConstraints(maxWidth: maxWidth), child: this._widget));

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
  Niku maxHeight(double maxHeight) => Niku(ConstrainedBox(
      constraints: BoxConstraints(maxHeight: maxHeight), child: this._widget));

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
  Niku minSize(double minWidth, double minHeight) => Niku(ConstrainedBox(
      constraints: BoxConstraints(minWidth: minWidth, minHeight: minHeight),
      child: this._widget));

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
  Niku minWidth(double minWidth) => Niku(ConstrainedBox(
      constraints: BoxConstraints(minWidth: minWidth), child: this._widget));

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
  Niku minHeight(double minHeight) => Niku(ConstrainedBox(
      constraints: BoxConstraints(minHeight: minHeight), child: this._widget));

  /// Set height of Widget
  ///
  /// Equivalent to:
  /// ```
  /// SizedBox(
  ///   height: input
  /// )
  /// ```
  Niku size(double width, double height) =>
      Niku(SizedBox(width: width, height: height, child: this._widget));

  /// Set width of widget
  ///
  /// Equivalent to:
  /// ```
  /// SizedBox(
  ///   width: input
  /// )
  /// ```
  Niku width(double width) => Niku(SizedBox(width: width, child: this._widget));

  /// Set height of Widget
  ///
  /// Equivalent to:
  /// ```
  /// SizedBox(
  ///   height: input
  /// )
  /// ```
  Niku height(double height) =>
      Niku(SizedBox(height: height, child: this._widget));

  /// Apply [FittedBox] for widget
  ///
  /// Equivalent to:
  /// ```
  /// FittedBox()
  /// ```
  Niku fitted() => Niku(FittedBox(child: this._widget));

  /// Apply background to widget
  ///
  /// Equivalent to:
  /// ```
  /// Container(
  ///   color: input
  /// )
  /// ```
  Niku bg(Color color) => Niku(Container(color: color, child: this._widget));

  /// Apply background to widget
  ///
  /// Equivalent to:
  /// ```
  /// Container(
  ///   color: input
  /// )
  /// ```
  Niku backgroundColor(Color color) =>
      Niku(Container(color: color, child: this._widget));

  /// Apply opacity to widget
  ///
  /// Equivalent to:
  /// ```
  /// Opacity(
  ///   opacity: input
  /// )
  /// ```
  Niku opacity(double opacity) =>
      Niku(Opacity(opacity: opacity, child: this._widget));

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
  Niku rounded([double borderRadius = 999999]) => Niku(ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
        child: this._widget,
      ));

  /// Apply [BoxDecoration] to widget
  ///
  /// Equivalent to:
  /// ```
  /// Container(
  ///   boxDecoration: input
  /// )
  /// ```
  Niku boxDecoration(BoxDecoration boxDecoration) => Niku(Container(
        child: this._widget,
        decoration: boxDecoration,
      ));

  /// Apply [Hero] to widget
  ///
  /// Equivalent to:
  /// ```
  /// Hero(
  ///   tag: input
  /// )
  /// ```
  Niku heroTag(String heroTag) =>
      Niku(Hero(tag: heroTag, child: this._widget!));

  /// Apply [IgnorePointer] to widget
  ///
  /// Equivalent to:
  /// ```
  /// IgnorePointer(
  ///   ignoring: input
  /// )
  /// ```
  Niku ignorePointer(bool ignoring) =>
      Niku(IgnorePointer(ignoring: ignoring, child: this._widget));

  /// Apply [AbsorbPointer] to widget
  ///
  /// Equivalent to:
  /// ```
  /// AbsorbPointer(
  ///   absorbing: input
  /// )
  /// ```
  Niku absorbPointer(bool absorbing) =>
      Niku(AbsorbPointer(absorbing: absorbing, child: this._widget));

  /// Apply tooltip to widget
  ///
  /// Equivalent to:
  /// ```
  /// Tooltip(
  ///   message: input
  /// )
  /// ```
  Niku tooltip(String tip) => Niku(Tooltip(
        message: tip,
        child: this._widget,
      ));

  /// Apply transform to widget
  ///
  /// Equivalent to:
  /// ```
  /// Transform(
  ///   transform: input
  /// )
  /// ```
  Niku transform(Matrix4 transform) =>
      Niku(Transform(transform: transform, child: this._widget));

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
          void Function(LongPressMoveUpdateDetails)?
              secondaryLongPressMoveUpdate,
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
          void Function(ScaleEndDetails)? scaleEnd}) =>
      Niku(GestureDetector(
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
        child: this._widget,
      ));

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
  Niku material({double elevation = 0, Color? color, Color? shadowColor}) =>
      Niku(Material(
        child: this._widget,
        elevation: elevation,
        color: color,
        shadowColor: shadowColor,
      ));

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
  Niku inkwell(
          {Color? hover,
          Color? focus,
          Color? highlight,
          Color? splash,
          double? radius,
          bool autofocus = false}) =>
      Niku(InkWell(
          child: this._widget,
          hoverColor: hover,
          focusColor: focus,
          highlightColor: highlight,
          splashColor: splash,
          radius: radius,
          onTap: () {},
          autofocus: autofocus));

  /// Decorate with border using [Border]
  ///
  /// Equivalent to
  /// ```
  /// Container(
  ///   decoration: BoxDecoration(
  ///     border: input
  ///   )
  /// )
  /// ```
  Niku border(Border border) => Niku(Container(
      decoration: BoxDecoration(border: border), child: this._widget));

  /// Add backdrop filter to widget
  ///
  /// Equivalent to
  /// ```
  /// BackdropFilter(
  ///   filter: input
  /// )
  /// ```
  Niku backdropFilter(ImageFilter filter) =>
      Niku(BackdropFilter(filter: filter, child: this._widget));

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
  Niku positioned({double? top, double? left, double? bottom, double? right}) =>
      Niku(Positioned(
          top: top,
          left: left,
          bottom: bottom,
          right: right,
          child: this._widget!));

  /// Add singleChildScrolLView to widget
  ///
  /// Equivalent to
  /// ```
  /// singleChildScrollView(
  /// )
  /// ```
  Niku singleChildScrollView(
          {ScrollController? controller,
          Axis scrollDirection = Axis.vertical,
          bool? primary,
          bool reverse = false,
          ScrollPhysics? scrollPhysics,
          DragStartBehavior dragStartBehavior = DragStartBehavior.start,
          String? restorationId}) =>
      Niku(SingleChildScrollView(
        child: this._widget,
        controller: controller,
        scrollDirection: scrollDirection,
        primary: primary,
        reverse: reverse,
        physics: scrollPhysics,
        dragStartBehavior: dragStartBehavior,
        restorationId: restorationId,
      ));

  /// Add singleChildScrolLView to widget
  ///
  /// Equivalent to
  /// ```
  /// singleChildScrollView(
  /// )
  /// ```
  Niku scrollable(
          {ScrollController? controller,
          Axis scrollDirection = Axis.vertical,
          bool? primary,
          bool reverse = false,
          ScrollPhysics? scrollPhysics,
          DragStartBehavior dragStartBehavior = DragStartBehavior.start,
          String? restorationId}) =>
      Niku(SingleChildScrollView(
        child: this._widget,
        controller: controller,
        scrollDirection: scrollDirection,
        primary: primary,
        reverse: reverse,
        physics: scrollPhysics,
        dragStartBehavior: dragStartBehavior,
        restorationId: restorationId,
      ));

  /// Apply Flexible to widget
  ///
  /// Equivalent to
  /// ```
  /// Flexible(
  ///   flex: input
  /// )
  /// ```
  Niku flexible([int flex = 1]) =>
      Niku(Flexible(child: this._widget!, flex: flex));

  /// Apply Flexible to widget
  ///
  /// Equivalent to
  /// ```
  /// Flexible(
  ///   flex: input
  /// )
  /// ```
  Niku flex([int flex = 1]) => Niku(Flexible(child: this._widget!, flex: flex));
}
