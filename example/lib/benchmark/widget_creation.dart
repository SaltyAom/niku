import 'dart:math';

import 'package:flutter/material.dart';
import 'package:niku/namespace.dart' as n;

class WidgetCreation extends StatelessWidget {
  const WidgetCreation({Key? key}) : super(key: key);

  static const limit = 1000000;

  createNikuWidget(BuildContext context) {
    return () {
      final random = Random();

      final time = Stopwatch()..start();

      for (int i = 0; i < limit; i++) {
        "Hello World".n
          ..mx = random.nextDouble() * 100
          ..my = random.nextDouble() * 100
          ..build(context);
      }

      print("Niku: ${time.elapsedMilliseconds}ms");
    };
  }

  createFlutterWidget(BuildContext context) {
    return () {
      final random = Random();

      final time = Stopwatch()..start();

      for (int i = 0; i < limit; i++) {
        Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(
            horizontal: random.nextDouble() * 100,
            vertical: random.nextDouble() * 100,
          ),
          child: Text("Hello World!"),
        ).build(context);
      }

      print("Flutter: ${time.elapsedMilliseconds}ms");
    };
  }

  createNikuAppliedStyleWidget(BuildContext context) {
    return () {
      final random = Random();

      final time = Stopwatch()..start();

      final style = (n.Box v) => v
        ..mx = random.nextDouble() * 100
        ..my = random.nextDouble() * 100
        ..bg = Colors.white;

      for (int i = 0; i < limit; i++)
        "Hello World".n
          ..useParent(style)
          ..build(context);

      print("Niku: ${time.elapsedMilliseconds}ms");
    };
  }

  @override
  build(context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
              child: Text("Create Niku Widget"),
              onPressed: createNikuWidget(context),
            ),
            TextButton(
              child: Text("Create Niku Applied Style"),
              onPressed: createNikuAppliedStyleWidget(context),
            ),
            TextButton(
              child: Text("Create Flutter Widget"),
              onPressed: createFlutterWidget(context),
            )
          ],
        ),
      ),
    );
  }
}
