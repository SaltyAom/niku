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
        final widget = "Hello World".n
          ..useParent((v) => v
            ..mx = random.nextDouble() * 100
            ..bg = Colors.white);

        widget.build(context);
      }

      print("Niku: ${time.elapsedMilliseconds}ms");
    };
  }

  createFlutterWidget(BuildContext context) {
    return () {
      final random = Random();

      final time = Stopwatch()..start();

      for (int i = 0; i < limit; i++) {
        final widget = Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: random.nextDouble() * 100),
          child: Text("Hello World!"),
        );

        widget.build(context);
      }

      print("Flutter: ${time.elapsedMilliseconds}ms");
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
            n.Text("H")
              ..n.bg = Colors.red
              ..n.rounded = 16,
            TextButton(
              child: Text("Create Niku Widget"),
              onPressed: createNikuWidget(context),
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
