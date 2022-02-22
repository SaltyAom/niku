import 'package:flutter/material.dart';

import 'package:niku/niku.dart';
import 'package:niku/namespace.dart' as n;

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  build(context) {
    return Scaffold(
      body: n.Column([
        n.Button(Text("2.0 Heaven and Earth"))
          ..onPressed = () {}
          ..useTextStyle((v) => v
            ..color = Colors.red
            ..fontSize = 24)
          ..useButtonStyle((v) => v
            ..splash = Colors.red.shade50
            ..rounded),
        n.Button(Text("2.1 Ga1ahad"))
          ..onPressed = () {}
          ..fontSize = 24
          ..color = Colors.blue
          ..splash = Colors.blue.shade50
          ..rounded
      ])
        ..mainCenter
        ..crossCenter
        ..useParent((v) => v..w100),
    );
  }
}
