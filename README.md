# Niku
Property builder for styling Widget

<p align="center">
  <img src="https://raw.githubusercontent.com/saltyaom/niku/main/doc/images/niku.png" alt="Niku" width="300" />
</p>

## Why
Styling widget in Flutter is hard to maintain. 
Since everything is a widget, a style property like `Padding`, `Align`, `FractionallySizedBox`, `Tooltip` is nested to compose a simple widget.

`Niku` allow developer to style property using builder or `SwiftUI modifier like` to compose styling.
By reducing the nested hell andbracket usage in Flutter which made styling Flutter widget more maintainable.

```dart
// Traditional Flutter
Center(
  child: Tooltip(
    message: "A Flat Button",
    child: Padding(
      padding: EdgeInsets.symmetric(vertical: 20)
      child: FractionallySizedBox(
        widthFactor: .7,
        child: FlatButton(
          onPressed: () {},
            color: Colors.blue 
            child: Text(
              "Flat Button",
              style: const TextStyle(
              fontSize: 21,
              color: Colors.white
            )
          )
        )
      )
    )
  )
);

// Niku
NikuFlatButton(
  NikuText("Flat Button")
    .fontSize(21)
    .color(Colors.blue)
    .build()
)
  .py(20)
  .niku()
  .fractionWidth(.7)
  .tooltip("A Flat Button")
  .center()
  .build();
```

## Getting Started
Niku required no dependencies at all.
Starting by adding `niku` to `pubspec.yaml`:
```yaml
dependencies:
  flutter:
    sdk: flutter

  niku: 0.1.0
```

Then you're ready to create your awesome Flutter project with effortless styling!

## Documentation
Currently, Niku is experimental library for styling user interface.

Niku contains available Widget:
- [Niku](https://github.com/saltyaom/niku/blob/main/doc/base.md)
  - Niku base for styling widget
- [NikuText](https://github.com/saltyaom/niku/blob/main/doc/text.md)
  - Niku extension for `Text`
- [Column](https://github.com/saltyaom/niku/blob/main/doc/column.md)
  - Niku extension for `Row`
- [Row](https://github.com/saltyaom/niku/blob/main/doc/row.md)
  - Niku extension for `Column`
- [NikuTextField](https://github.com/saltyaom/niku/blob/main/doc/textfield.md)
  - Niku extension for `TextFormField`
- [NikuFlatButton](https://github.com/saltyaom/niku/blob/main/doc/flatButton.md)
  - Niku extension for `FlatButton`
- [NikuRaisedButton](https://github.com/saltyaom/niku/blob/main/doc/raisedButton.md)
  - Niku extension for `RaisedButton`
- [NikuOutlineButton](https://github.com/saltyaom/niku/blob/main/doc/outlineButton.md)
  - Niku extension for `OutlineButton`
- [NikuIconButton](https://github.com/saltyaom/niku/blob/main/doc/iconButton.md)
  - Niku extension for `OutlineButton`
