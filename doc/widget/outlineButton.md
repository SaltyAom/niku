## Niku extension for Material Outline Button

Style property builder for building `OutlineButton`

### Deprecated API, use [NikuButton](https://github.com/saltyaom/niku/blob/main/doc/widget/button.md) instead

##### [Table of Content](https://github.com/saltyaom/niku/blob/main/doc/widget/README.md)

### Example usage:
```dart
NikuOutlineButton(Text("Outline Button"))
  .color(Colors.blue)
  .px(40)
  .py(20)
  .rounded(8)
  .my(8)
  .build()
```

### Availability: 
```dart
// All Widget
import 'package:niku/niku.dart';

// With relatated widget
import 'package:niku/widget/oldButton.dart';

// Just widget
import 'package:niku/widget/outlineButton.dart';
```

### Meta property list:
- niku() - Switch to Niku() property
- build() - Apply styles and build OutlineButton as Widget
- base() - Apply styles and build only base of OutlineButton as Widget
- apply() - Apply existing NikuOutlineButton's property to current style
- style() - Apply existing NikuOutlineButton's property to current style and build
- styleBase() - Apply existing NikuOutlineButton's property to current style and build only base

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
- setColor - Apply color to all button property
  - setColor - Apply all color property using named property
  - bg, color - Apply color to button background
  - disabled - Background color of button when disabled
  - hover - Background color of button when hovered
  - focus - Background color of button when focused
  - highlight - Background color of button when highlighted
  - splash - Splash/Ripple color of button
- textColor - Set text color of button, won't override existing color
- shape - Apply custom shape to button
- clip - Apply clip to button
- autofocus - Determine whether button should be auto focus
- theme - Apply style to button using existing theme
- rounded - Apply border radius to button, will override shape
- border, borderSide - Set border of button
  - border, borderSide - Set border using [BorderSide]
  - borderWidth - Set border width
  - borderColor - Set border color
  - borderStyle - Set border style
 - setBorderColor - Set all border color
  - color - Set border color
  - highlightBorderColor - Set border color when highlighted
  - disabledBorderColor - Set border color when disabled

##### [Table of Content](https://github.com/saltyaom/niku/blob/main/doc/widget/README.md)
