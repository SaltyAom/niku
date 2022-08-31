import 'package:flutter/material.dart';
import 'package:niku/namespace.dart' as n;

class StyleSheet {
  static final button = n.Button("".n)
    ..color = Colors.blue
    ..fontSize = 24
    ..bold;
}

class StyleSheetExample extends StatelessWidget {
  const StyleSheetExample({Key? key}) : super(key: key);

  @override
  build(context) {
    return Scaffold(
      appBar: AppBar(),
      body: n.Column([
        n.Button("Red Text".n)
          ..apply = StyleSheet.button
          ..color = Colors.red,
        n.Button("Green Text".n)
          ..apply = StyleSheet.button
          ..color = Colors.green,
        n.Button("Blue Text".n)..apply = StyleSheet.button,
        n.Box()
          ..size = [100, 100]
          ..bg = Colors.blue
          ..splash = Colors.red
          ..rounded = 16
      ])
        ..fullWidth
        ..center,
    );
  }
}
