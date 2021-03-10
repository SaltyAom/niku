## Niku extension for Material Icon Button

Style property builder for building icon Button

##### [Table of Content](https://github.com/saltyaom/niku/blob/main/doc/widget/README.md)

### Example usage:
```dart
NikuIconButton(Icon(Icons.edit))
  .color(Colors.blue)
  .p(40)
  .build()
```

### Availability: 
```dart
// All Widget
import 'package:niku/niku.dart';

// With relatated widget
import 'package:niku/widget/button.dart';

// Just widget
import 'package:niku/widget/iconButton.dart';
```

### Meta property list:
- niku() - Switch to Niku() property
- build() - Apply styles and build IconButton as Widget
- apply() - Apply existing NikuIconButton's property to current style
- style() - Apply existing NikuIconButton's property to current style and build

### Style Property list:
- onPressed - Callback when button is pressed
- visualDensity - Defines the visual density of user interface components
- padding, p - Padding of container
  - padding, p - apply padding to all side
  - px - apply padding to x axis
  - py - apply padding y axis
  - pt - apply padding top side
  - pl - apply padding left side
  - pb - apply padding bottom side
  - pl - apply padding right side
- alignment, align - Set self alignment
  - align - Accept [Alignment] to align self
  - topLeft - Apply widget to top-left
  - topCenter - Apply widget to top-center
  - topRight - Apply widget to top-right
  - centerLeft - Apply widget to center-left
  - center - Apply widget to center
  - centerRight - Apply widget to center-right
  - bottomLeft - Apply widget to bottom-left
  - bottomCenter - Apply widget to bottom-center
  - bottomRight - Apply widget to bottom-right
- splashRadius - The splash radius. If null, default splash radius of [Material.defaultSplashRadius] is used
- setColor - Apply color to all button property
  - setColor - Apply all color property using named property
  - bg, color - Apply color to button background
  - disabled - Background color of button when disabled
  - hover - Background color of button when hovered
  - focus - Background color of button when focused
  - highlight - Background color of button when highlighted
  - splash - Splash/Ripple color of button
- mouseCursor - The cursor for a mouse pointer when it enters or is hovering over the button
- focusNode - An optional focus node to use as the focus node for this widget
- autofocus - Determine whether button should be auto focus
- tooltip - Explaination of the button
- enableFeedback - Whether detected gestures should provide acoustic and/or haptic feedback
- constraints - Whether detected gestures should provide acoustic and/or haptic feedback

##### [Table of Content](https://github.com/saltyaom/niku/blob/main/doc/widget/README.md)
