import 'package:flutter/material.dart';
import 'package:niku/namespace.dart' as n;

class WidgetCreation extends StatelessWidget {
  const WidgetCreation({Key? key}) : super(key: key);

  static const limit = 1000000;

  createNikuWidget(BuildContext context) {
    return () {
      final time = Stopwatch()..start();

      for (int i = 0; i < limit; i++) {
        final widget = "Hello World".n
          ..mx = 16
          ..bg = Colors.white;

        widget.build(context);
      }

      print("Niku: ${time.elapsedMilliseconds}ms");
    };
  }

  createFlutterWidget(BuildContext context) {
    return () {
      final time = Stopwatch()..start();

      for (int i = 0; i < limit; i++) {
        final widget = Container(
          child: Text("Hello World!"),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          color: Colors.white,
        );

        widget.build(context);
      }

      print("Flutter: ${time.elapsedMilliseconds}ms");
    };
  }

  @override
  build(context) {
    final a = n.Box("hello".n)
      ..p = 16
      ..bg = Colors.blue;

    a..widget = "Modified".n;

    return Scaffold(
      body: n.Column([
        a,
        n.Button("Create Niku Widget".n)..onPressed = createNikuWidget(context),
        n.Button("Create Flutter Widget".n)
          ..onPressed = createFlutterWidget(context),
      ])
        ..center
        ..wFull,
    );
  }
}
