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
          child: OutlinedButton(
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
              overlayColor: MaterialStateProperty.all(Colors.red.shade50),
              side: MaterialStateProperty.all(BorderSide(color: Colors.red)),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(99999),
                ),
              ),
            ),
          ),
        ),
        // * 2
        n.Button.outlined(Text("2.0 Heaven and Earth"))
          ..onPressed = () {}
          ..useTextStyle((v) => v
            ..color = Colors.amber
            ..fontSize = 24)
          ..useButtonStyle((v) => v
            ..px = 24
            ..py = 12
            ..splash = Colors.amber.shade50
            ..border = BorderSide(color: Colors.amber)
            ..rounded)
          ..useParent((v) => v..my = 6),
        // * 3
        n.Button.outlined(Text("2.1 Ga1ahad"))
          ..onPressed = () {}
          ..fontSize = 24
          ..color = Colors.blue
          ..splash = Colors.blue.shade50
          ..border = BorderSide(color: Colors.blue)
          ..px = 24
          ..py = 12
          ..rounded
          ..my = 6,
        n.TextFormField("2.2 Ga1ahad")
          ..fontSize = 21
          ..color = Colors.red
          ..outlined
          ..rounded
          ..bg = Colors.grey.shade200
          ..allBorderColor = Colors.grey.shade200
          ..neverFloat
          ..p = 16
      ])
        ..mainCenter
        ..crossCenter
        ..useParent((v) => v..w100),
    );
  }
}
