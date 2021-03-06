## Niku extension for Material Flat Button

Style property builder for building `FlatButton`

### Deprecated API, use [NikuButton](https://github.com/saltyaom/niku/blob/main/doc/widget/button.md) instead

##### [Table of Content](https://github.com/saltyaom/niku/blob/main/doc/widget/README.md)


### Example usage:
```dart
NikuFlatButton(Text("Flat Button"))
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
import 'package:niku/widget/flatButton.dart';
```

### Meta property list:
- niku() - Switch to Niku() property
- build() - Apply styles and build FlatButton as Widget
- base() - Apply styles and build only base of FlatButton as Widget
- apply() - Apply existing NikuFlatButton's property to current style
- style() - Apply existing NikuFlatButton's property to current style and build
- styleBase() - Apply existing NikuFlatButton's property to current style and build only base

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
- colorBrightness - Set brightness of background
- shape - Apply custom shape to button
- clip - Apply clip to button
- minWidth - Set min width of button
- height - Set height of button
- autofocus - Determine whether button should be auto focus
- theme - Apply style to button using existing theme
- rounded - Apply border radius to button, will override shape

##### [Table of Content](https://github.com/saltyaom/niku/blob/main/doc/widget/README.md)
