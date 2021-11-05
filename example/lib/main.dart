import 'dart:math' as Math;

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:niku/niku.dart';

void main() {
  runApp(MyApp());
}

typedef A = List<String>;

class MyApp extends StatelessWidget {
  build(context) {
    return MaterialApp(
      title: "Niku",
      theme: ThemeData(
        primaryColor: Colors.blue,
        primarySwatch: Colors.blue,
      ),
      home: App(),
    );
  }
}

class App extends StatelessWidget {
  build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Niku"),
      ),
      body: Container(
        width: double.infinity,
        child: NikuColumn([
          NikuButton.elevated(Text("Hello World"))
            ..onPressed = () {}
            ..style = (NikuButtonStyle()
              ..bg = Colors.blue
              ..fg = Colors.white
              ..px = 24
              ..py = 12
              ..elevationState = NikuState(pressed: 16)
              ..textStyle = (NikuTextStyle()..fontSize = 24)),
          NikuButton.outlined(Text("Hello World"))
            ..onPressed = () {}
            ..style = (NikuButtonStyle()
              ..fg = Colors.blue
              ..px = 24
              ..py = 12
              ..side = BorderSide(color: Colors.blue, width: 2)
              ..textStyle = (NikuTextStyle()..fontSize = 24)),
          NikuText("Hi friends~")
            ..center
            ..style = (NikuTextStyle()
              ..fontSize = 24
              ..color = Colors.grey.shade700
              ..w300)
        ])
          ..mainCenter
          ..crossCenter,
      ),
    );
  }
}
