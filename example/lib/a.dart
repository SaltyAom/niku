// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sensors/sensors.dart';

import 'package:niku/niku.dart';
import 'package:niku/namespace.dart' as n;

// This is on alternate entrypoint for this module to display Flutter UI in
// a (multi-)view integration scenario.
void main() {
  runApp(const Cell());
}

class Cell extends StatefulWidget {
  const Cell({super.key});

  @override
  State<StatefulWidget> createState() => _CellState();
}

class _CellState extends State<Cell> with WidgetsBindingObserver {
  static const double gravity = 9.81;
  static final AccelerometerEvent defaultPosition = AccelerometerEvent(0, 0, 0);

  int cellNumber = 0;
  Random? _random;
  AppLifecycleState? appLifecycleState;

  @override
  void initState() {
    const channel = MethodChannel('dev.flutter.example/cell');
    channel.setMethodCallHandler((call) async {
      if (call.method == 'setCellNumber') {
        setState(() {
          cellNumber = call.arguments as int;
          _random = Random(cellNumber);
        });
      }
    });
    // Keep track of what the current platform lifecycle state is.
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    setState(() {
      appLifecycleState = state;
    });
  }

  // Show a random bright color.
  Color randomLightColor() {
    _random ??= Random(cellNumber);

    return Color.fromARGB(255, _random!.nextInt(50) + 205,
        _random!.nextInt(50) + 205, _random!.nextInt(50) + 205);
  }

  @override
  build(context) {
    final stream = appLifecycleState == AppLifecycleState.resumed
        ? accelerometerEvents
        : Stream.value(defaultPosition);

    return MaterialApp(
      home: n.Box(
        Stack(
          children: [
            n.Column(["$cellNumber".n..displaySmall])
              ..mainCenter
              ..n.center,
            StreamBuilder<AccelerometerEvent>(
              stream: stream,
              initialData: defaultPosition,
              builder: (context, snapshot) {
                final calculate = (double n) => n / gravity * pi / 2;
                final matrix = Matrix4.rotationX(calculate(snapshot.data!.y))
                  ..multiply(Matrix4.rotationY(calculate(snapshot.data!.x)));

                return FlutterLogo(size: 72).niku
                  ..matrix4 = matrix
                  ..align = Alignment.center;
              },
            ).niku
              ..opacity = 0.2
              ..left = 42,
          ],
        ),
      ).niku
        ..bg = randomLightColor()
        ..elevation = 16
        ..mx = 36
        ..my = 24
        ..rounded = 16
        ..bg = Colors.white,
    );
  }
}
