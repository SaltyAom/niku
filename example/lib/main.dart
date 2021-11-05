import 'dart:math' as Math;

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:niku/niku.dart';

void main() {
  runApp(MyApp());
}

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          NikuText("Hi friends~")
            ..center
            ..style = (NikuTextStyle()
              ..h2 = context
              ..color = Colors.grey.shade700
              ..w300)
        ],
      ),
    );
  }
}
