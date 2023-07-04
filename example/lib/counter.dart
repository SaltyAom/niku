import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:niku/namespace.dart' as n;

class CounterStyles {
  static button(Color color) => n.Button(SizedBox.shrink())
    ..rounded = 4
    ..px = 24
    ..py = 12
    ..fontSize = 18
    ..w500
    ..color = color;
}

class Counter extends HookWidget {
  const Counter();

  build(context) {
    final count = useState(0);

    return Scaffold(
      body: n.Column([
        n.Text(count.value.toString())..center,
        n.Column([
          n.Button(n.Text("Increment"))
            ..onPressed = () {
              count.value++;
            }
            ..apply = CounterStyles.button(Colors.blue.shade700)
            ..bg = Colors.blue.shade50
            ..splash = Colors.blue.shade100,
          n.Button(n.Text("Decrement"))
            ..onPressed = () {
              count.value--;
            }
            ..apply = CounterStyles.button(Colors.red.shade700)
            ..bg = Colors.red.shade50
            ..splash = Colors.red.shade100,
        ])
          ..gap = 4
          ..freezed,
      ])
        ..center
        ..gap = 16
        ..alignCenter,
    );
  }
}
