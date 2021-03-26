# Niku
Property builder for styling Widget

<p align="center">
  <img src="https://raw.githubusercontent.com/saltyaom/niku/main/doc/images/niku.png" alt="Niku" width="300" />
</p>

## Why
Styling widget in Flutter is hard to maintain. 
Since everything is a widget, a style property like `Padding`, `Align`, `FractionallySizedBox`, `Tooltip` is nested to compose a simple widget.

`Niku` allow developer to style property using builder or `SwiftUI modifier like` to compose styling.
By reducing the nested hell andbracket usage in Flutter, made styling Flutter widget more maintainable.

<p align="center">
  <img src="https://raw.githubusercontent.com/saltyaom/niku/main/doc/images/korone-drake-format.jpg" alt="Comparison" />
</p>

## Getting Start
Niku required no dependencies at all.
Starting by adding `niku` to `pubspec.yaml`:
```yaml
dependencies:
  flutter:
    sdk: flutter

  niku: # Using latest version
```

Then you're ready to create your awesome Flutter project with effortless styling!

See how simple building Text widget is!
```dart
import 'package:niku/niku.dart'; // <--- Import Niku library

NikuText("Hello World")
  .color(Colors.blue) // <-- Apply color
  .fontSize(21)       // <-- Add font size
```
## Documentation
Niku is style property builder for styling user interface inspired by SwiftUI.

## Table of content
- [Tutorial](https://github.com/saltyaom/niku/blob/main/doc/tutorial/README.md)
  - [Getting Started](https://github.com/saltyaom/niku/blob/main/doc/tutorial/getting-started.md)
  - [Setting Up](https://github.com/saltyaom/niku/blob/main/doc/tutorial/setting-up.md)
  - [Foundation](https://github.com/saltyaom/niku/blob/main/doc/tutorial/foundation.md)
- [Available Widget](https://github.com/saltyaom/niku/blob/main/doc/widget/README.md)
  - [Niku](https://github.com/saltyaom/niku/blob/main/doc/widget/base.md)
    - Niku base for styling widget
  - [Text](https://github.com/saltyaom/niku/blob/main/doc/widget/text.md)
    - Niku extension for `Text`
  - [Column](https://github.com/saltyaom/niku/blob/main/doc/widget/column.md)
    - Niku extension for `Row`
  - [Row](https://github.com/saltyaom/niku/blob/main/doc/widget/row.md)
    - Niku extension for `Column`
  - [Stack](https://github.com/saltyaom/niku/blob/main/doc/widget/stack.md)
    - Niku extension for `Stack`  
  - [Button](https://github.com/saltyaom/niku/blob/main/doc/widget/button.md)
    - Niku extension for `TextButton`, `ElevatedButton` and `OutlinedButton`
  - [IconButton](https://github.com/saltyaom/niku/blob/main/doc/widget/iconButton.md)
    - Niku extension for `IconButton`
- [Available Extension](https://github.com/saltyaom/niku/blob/main/doc/extension/README.md)
  - [niku](https://github.com/saltyaom/niku/blob/main/doc/extension/niku.md)
    - Add `.niku()` extension for widget
   
- Deprecated
  - [FlatButton](https://github.com/saltyaom/niku/blob/main/doc/widget/flatButton.md)
    - Niku extension for `FlatButton`
  - [RaisedButton](https://github.com/saltyaom/niku/blob/main/doc/widget/raisedButton.md)
    - Niku extension for `RaisedButton`
  - [OutlineButton](https://github.com/saltyaom/niku/blob/main/doc/widget/outlineButton.md)
    - Niku extension for `OutlineButton`
