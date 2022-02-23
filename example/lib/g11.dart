import 'package:flutter/material.dart';

import 'package:niku/niku.dart';
import 'package:niku/namespace.dart' as n;

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  build(context) {
    return Scaffold(
      body: n.Column([
        // * 1
        Container(
          margin: const EdgeInsets.symmetric(vertical: 6),
          child: TextButton(
            child: Text("Native Flutter"),
            onPressed: () {},
            style: ButtonStyle(
              padding: MaterialStateProperty.all(
                EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              ),
              foregroundColor: MaterialStateProperty.all(Colors.red),
              textStyle: MaterialStateProperty.all(
                TextStyle(
                  fontSize: 24,
                  color: Colors.red,
                ),
              ),
              overlayColor: MaterialStateProperty.all(Colors.red.shade100),
              backgroundColor: MaterialStateProperty.all(Colors.red.shade50),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(99999),
                ),
              ),
            ),
          ),
        ),
        // * 2
        n.Button(Text("2.0 Heaven and Earth"))
          ..onPressed = () {}
          ..useTextStyle((v) => v
            ..color = Colors.amber
            ..fontSize = 24)
          ..useButtonStyle((v) => v
            ..px = 24
            ..py = 12
            ..bg = Colors.amber.shade50
            ..splash = Colors.amber.shade100
            ..rounded)
          ..useParent((v) => v..my = 6),
        // * 3
        n.Button(Text("2.1 Ga1ahad"))
          ..onPressed = () {}
          ..fontSize = 24
          ..useColor(base: Colors.blue, pressed: Colors.red)
          ..bg = Colors.blue.shade50
          ..splash = Colors.blue.shade100
          ..px = 24
          ..py = 12
          ..rounded
          ..my = 6,
        n.TextFormField("2.1 Ga1ahad")
          ..fontSize = 18
          ..color = Colors.grey.shade800
          ..outlined
          ..rounded
          ..bg = Colors.grey.shade200
          ..borderColor = Colors.transparent
          ..neverFloat
          ..p = 16
          ..mt = 20
      ])
        ..mainCenter
        ..crossCenter
        ..useParent((v) => v
          ..w100
          ..px = 16),
    );
  }
}
