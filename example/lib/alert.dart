import 'package:flutter/material.dart';

import 'package:niku/namespace.dart' as n;

// Adaptive Alert
class AlertPage extends StatelessWidget {
  const AlertPage({Key? key}) : super(key: key);

  build(context) {
    final showDialog = () {
      n.showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) => n.Alert.adaptive()
          ..title = Text("Hello World")
          ..content = n.NikuColumn([
            Text("This is alert dialog written in Niku"),
            n.TextFormField.adaptive()
              ..labelText = "Placeholder"
              ..mt = 16,
          ])
          ..actions = [
            n.Button(Text("Delete"))
              ..onPressed = () {
                Navigator.of(context).pop();
              }
              ..color = Colors.red
              ..splash = Colors.red.withOpacity(.15),
            n.Button(Text("Cancel"))
              ..onPressed = () {
                Navigator.of(context).pop();
              }
              ..bold,
          ],
      );
    };

    return Scaffold(
      body: n.Button(n.Text("Show Alert"))
        ..onPressed = showDialog
        ..fontSize = 18
        ..w500
        ..color = Colors.white
        ..px = 24
        ..py = 12
        ..splash = Colors.white.withOpacity(.25)
        ..bg = Colors.transparent
        ..useParent((v) => v
          ..gradient = LinearGradient(
            colors: [Color(0xff4A00E0), Color(0xff8E2DE2)],
          )
          ..rounded = 8
          ..center),
    );
  }
}
