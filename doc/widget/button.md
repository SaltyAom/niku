## Niku extension for Material Flat Button

Niku extension for Material various Button
Including:
- TextButton
- TextButton.icon
- Elevated
- Elevated.icon
- OutlinedButton
- OutlinedButton.icon

##### [Table of Content](https://github.com/saltyaom/niku/blob/main/doc/widget/README.md)


### Example usage:
```dart
NikuButton(Text("Flat Button"))
  .bg(Colors.blue)
  .px(40)
  .py(20)
  .rounded(8)
  .my(8)

NikuButton.elevated(Text("Flat Button"))
  .bg(Colors.blue)
  .px(40)
  .py(20)
  .rounded(8)
  .my(8)
```

### Availability: 
```dart
// All Widget
import 'package:niku/niku.dart';

// Just widget
import 'package:niku/widget/oldButton.dart';
```

### Meta property list:
- niku() - Switch to Niku() property
- build() - Build as [TextButton]
- apply() - Apply existing NikuFlatButton's property to current style

## Factory Method
- elevated() - Build as [ElevatedButton]
- outlined() - Build as [OutlinedButton]
- icon() - Build as [TextButton.icon]
- elevatedIcon() - Build as [ElevatedButton.icon]
- outlinedIcon() - Build as [OutlinedButton.icon]

### Style Property list:
- onPressed - Callback when button is pressed
- onLongPressed - Callback when button is long pressed
- padding, p - Padding of container
  - padding, p - apply padding to all side
  - px - apply padding to x axis
  - py - apply padding y axis
  - pt - apply padding top side
  - pl - apply padding left side
  - pb - apply padding bottom side
  - pl - apply padding right side
- margin, m - Padding of container
  - margin, m - apply margin to all side
  - mx - apply margin to x axis
  - my - apply margin y axis
  - mt - apply margin top side
  - ml - apply margin left side
  - mb - apply margin bottom side
  - ml - apply margin right side
- backgroundColor, bg - Apply color to background
  - bg - Shorten form for applying to all button state
  - highlight - Apply highlight color
  - backgroundColor
    - base
    - disabled
    - dragged
    - error
    - hovered
    - pressed
    - selected
- foregroundColor, fg - Apply color to foreground (ie. Text color)
  - fg - Shorten form for applying to all button state
  - foregroundColor
    - base
    - disabled
    - dragged
    - error
    - hovered
    - pressed
    - selected
- overlay, splash, overlayColor - Apply color to splash (ripple effect)
  - overlay, splash - Shorten form for applying to all button state
  - overlayColor
    - base
    - disabled
    - dragged
    - error
    - hovered
    - pressed
    - selected
- shadow, shadowColor - Apply color to shadow of [ElevatedButton]
  - shadow - Shorten form for applying to all button state
  - shadowColor
    - base
    - disabled
    - dragged
    - error
    - hovered
    - pressed
    - selected
- elevation - Apply elevation to button
  - base
  - disabled
  - dragged
  - error
  - hovered
  - pressed
  - selected
- borderSide, b - Apply styling to border
  - b - Shorten form for applying to all button state
  - border
    - base
    - disabled
    - dragged
    - error
    - hovered
    - pressed
    - selected
- borderWidth, bw - Apply width to border
  - bw - Shorten form for applying to all button state
  - borderWidth
    - base
    - disabled
    - dragged
    - error
    - hovered
    - pressed
    - selected
- borderColor, bc - Apply color to border
  - bc - Shorten form for applying to all button state
  - borderColor
    - base
    - disabled
    - dragged
    - error
    - hovered
    - pressed
    - selected
- borderStyle, bs - Apply [BorderStyle] to border
  - bs - Shorten form for applying to all button state
  - borderStyle
    - base
    - disabled
    - dragged
    - error
    - hovered
    - pressed
    - selected
- shape, s - Apply shape to button
  - s - Shorten form for applying to all button state
  - shape
    - base
    - disabled
    - dragged
    - error
    - hovered
    - pressed
    - selected
- cursor, mouseCursor - Apply cursor to border
  - cursor, mouseCursor
    - base
    - disabled
    - dragged
    - error
    - hovered
    - pressed
    - selected
- clip - Apply clip to button
- autofocus - Determine whether button should be auto focus
- cursor - Set cursor when hovered on widget
- minSize, minimumSize - Set minimum size of button
  - minSize - Shorten form for applying to all button state
  - minimumSize
    - base
    - disabled
    - dragged
    - error
    - hovered
    - pressed
    - selected
- animationDuration, duration - Animaiton Duration of elevation effect
- focusNode - An object that can be used by a stateful widget to obtain the keyboard focus and to handle keyboard events
- visualDensity - Defines the visual density of user interface components
- tapTargetSize - Configures the tap target and layout size of certain Material widgets
- rounded - Apply border radius to button, will override shape
- label - Add label to [IconButton]
##### [Table of Content](https://github.com/saltyaom/niku/blob/main/doc/widget/README.md)
