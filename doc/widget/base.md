## Niku Widget for styling widget

Style property builder for building Widget

##### [Table of Content](https://github.com/saltyaom/niku/blob/main/doc/widget/README.md)

### Example usage:
```dart
Niku()
  .bg(Colors.blue)
  .p(21)
  .build()
```

### Availability: 
```dart
// All Widget
import 'package:niku/niku.dart';

// Just widget
import 'package:niku/widget/base.dart';
```

### Meta property list:
- build() - Apply styles and build Widget
- builder() - Add custom widget

### Style property list:
padding, p - Padding of container
  - padding, p - Apply padding to all side
  - px - Apply padding to x axis
  - py - Apply padding to y axis
  - pt - Apply padding top
  - pl - Apply padding left side
  - pb - Apply padding bottom
  - pl - Apply padding right side
- margin, m - Margin of container
  - margin, m - Apply margin to all side
  - mx - Apply margin to x axis
  - my - Apply margin to y axis
  - mt - Apply margin top
  - ml - Apply margin left side
  - mb - Apply margin bottom
  - ml - Apply margin right side
- align - Set self alignment
  - align - Accept [Align] to align self
  - topLeft - Apply widget to top-left
  - topCenter - Apply widget to top-center
  - topRight - Apply widget to top-right
  - centerLeft - Apply widget to center-left
  - center - Apply widget to center
  - centerRight - Apply widget to center-right
  - bottomLeft - Apply widget to bottom-left
  - bottomCenter - Apply widget to bottom-center
  - bottomRight - Apply widget to bottom-right
- fullSize - Apply both full width and height to self
  - fullWidth - Apply full width to self
  - fullHeight - Apply full height to self
- aspectRatio - Apply aspect ratio to self
- expanded - Apply exapnded to self
- fractionSize - Set both width and height in percent
  - fractionWidth - Set width in percent
  - fractionHeight - Set height in percent
- container - Add new container to widget
- constraints - Set minimum and maximum size for widget
  - maxSize - Set widget both max width and height
    - maxWidth - Set widget max width
    - maxHeight - Set Widget max height
  - minSize - Set widget both min width and height
    - minWidth - Set widget min width
    - minHeight - Set Widget min height
- size - Set size of widget
  - width - Set width of widget
  - height - Set height of widget
- fitted - Apply [FittedBox] to widget
- background, bg - Apply background to widget
- opacity - Apply opacity to widget
- rounded - Add border radius to widget
- boxDecoration - Apply [BoxDecoration] to widget
- heroTag - Apply [Hero] to widget
- ignorePointer - Apply [IgnorePointer] to widget
- absorbPointer - Apply [AbsorbPointer] to widget
- tooltip - Add tooltip to widget
- transform - Add transform to widget
- material - Add [Material] to widget
- inkwell - Add [InkWell] to widget
- border - Decorate with border using [Border]
- backdropFilter - Apply [BackdropFilter] to Widget
- positioned - Apply [Positioned] to widget
- scrollable, singleChildScrollView - Add [singleChildScrollView] to widget
- flex, flexible - Apply [Flexible] to Widget
- shadows - Add shadows to widget
- semantics - Add semantic to widget

### Animation & Motion
- animated, animatedBuilder - Wrap widget in animated builder
- animatedContainer - Wrap widget in AnimatedContainer

### Event Listener
- on - Add multiple event listener at once
  - tapDown - This is called after a short timeout, even if the winning gesture has not yet been selected. If the tap gesture wins, [onTapUp] will be called, otherwise [onTapCancel] will be called
  - tapUp - This triggers immediately before [onTap] in the case of the tap gesture winning. If the tap gesture did not win, [onTapCancel] is called instead
  - tap - This triggers when the tap gesture wins. If the tap gesture did not win, [onTapCancel] is called instead
  - tapCancel - This is called after [onTapDown], and instead of [onTapUp] and [onTap], if the tap gesture did not win
  - secondaryTab - This triggers when the tap gesture wins. If the tap gesture did not win, [onSecondaryTapCancel] is called instead
  - secondaryTapDown - This is called after a short timeout, even if the winning gesture has not yet been selected. If the tap gesture wins, [onSecondaryTapUp] will be called, otherwise [onSecondaryTapCancel] will be called
  - secondaryTapUp - This triggers in the case of the tap gesture winning. If the tap gesture did not win, [onSecondaryTapCancel] is called instead
  - secondaryTapCancel - The pointer that previously triggered [onDoubleTapDown] will not end up causing a double tap
  - tertiaryTapDown - Triggered immediately after the down event of the second tap
  - tertiaryTapUp - This triggers in the case of the tap gesture winning. If the tap gesture did not win, [onTertiaryTapCancel] is called instead
  - tertiaryTapCancel - This is called after [onTertiaryTapDown], and instead of [onTertiaryTapUp], if the tap gesture did not win
  - doubleTapDown - Triggered immediately after the down event of the second tap
  - doubleTap - The user has tapped the screen with a primary button at the same location twice in quick succession
  - doubleTapCancel - The pointer that previously triggered [onDoubleTapDown] will not end up causing a double tap
  - longPress - Triggered when a pointer has remained in contact with the screen at the same location for a long period of time
  - longPressStart - Triggered when a pointer has remained in contact with the screen at the same location for a long period of time
  - longPressMoveUpdate - A pointer has been drag-moved after a long press with a primary button
  - longPressUp - A pointer that has triggered a long-press with a primary button has stopped contacting the screen
  - longPressEnd - A pointer that has triggered a long-press with a primary button has stopped contacting the screen
  - secondaryLongPress - Triggered when a pointer has remained in contact with the screen at the same location for a long period of time
  - secondaryLongPressStart - Triggered when a pointer has remained in contact with the screen at the same location for a long period of time
  - secondaryLongPressMoveUpdate - A pointer has been drag-moved after a long press with a secondary button
  - secondaryLongPressUp - A pointer that has triggered a long-press with a secondary button has stopped contacting the screen
  - secondaryLongPressEnd - A pointer that has triggered a long-press with a secondary button has stopped contacting the screen
  - verticalDragDown - A pointer has contacted the screen with a primary button and might begin to move vertically
  - verticalDragStart - A pointer has contacted the screen with a primary button and has begun to move vertically
  - verticalDragUpdate - A pointer that is in contact with the screen with a primary button and moving vertically has moved in the vertical direction
  - verticalDragEnd - A pointer that was previously in contact with the screen with a primary button and moving horizontally is no longer in contact with the screen and was moving at a specific velocity when it stopped contacting the screen
  - verticalDragCancel - The pointer that previously triggered [onHorizontalDragDown] did not complete
  - horizontalDragDown - A pointer has contacted the screen with a primary button and might begin to move horizontally
  - horizontalDragStart - A pointer has contacted the screen with a primary button and has begun to move horizontally
  - horizontalDragUpdate - A pointer that is in contact with the screen with a primary button and moving horizontally has moved in the horizontal direction
  - horizontalDragEnd - A pointer that is in contact with the screen with a primary button and moving horizontally has moved in the horizontal direction
  - horizontalDragCancel - The pointer that previously triggered [onHorizontalDragDown] did not complete
  - forcePressStart - The pointer is in contact with the screen and has pressed with sufficient force to initiate a force press. The amount of force is at least [ForcePressGestureRecognizer.startPressure]
  - forcePressPeak - The pointer is in contact with the screen and has pressed with the maximum force. The amount of force is at least [ForcePressGestureRecognizer.peakPressure]
  - forcePressUpdate - A pointer is in contact with the screen, has previously passed the [ForcePressGestureRecognizer.startPressure] and is either moving on the plane of the screen, pressing the screen with varying forces or both simultaneously
  - forcePressEnd - The pointer is no longer in contact with the screen
  - panDown - A pointer has contacted the screen with a primary button and might begin to move
  - panStart - A pointer has contacted the screen with a primary button and has begun to move
  - panUpdate - A pointer that is in contact with the screen with a primary button and moving has moved again
  - panEnd - A pointer that was previously in contact with the screen with a primary button and moving is no longer in contact with the screen and was moving at a specific velocity when it stopped contacting the screen
  - panCancel - The pointer that previously triggered [onPanDown] did not complete
  - scaleStart - The pointers in contact with the screen have established a focal point and initial scale of 1.0
  - scaleUpdate - The pointers in contact with the screen have indicated a new focal point and/or scale
  - scaleEnd - The pointers are no longer in contact with the screen

##### [Table of Content](https://github.com/saltyaom/niku/blob/main/doc/widget/README.md)
