import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:niku/namespace.dart' as n;

class AnimationPressure extends HookWidget {
  const AnimationPressure({Key? key}) : super(key: key);

  static const duration = Duration(milliseconds: 133);
  static const total = 1;

  @override
  build(context) {
    final start = useState(false);

    useEffect(() {
      Timer.periodic(duration, (timer) {
        start.value = !start.value;
      });

      return null;
    }, []);

    return Scaffold(
      body: n.GridView.count()
        ..count = 12 // CrossAxisCount
        ..ratio = 1
        ..children = List.generate(
          288,
          (index) => n.Box()
            ..key = Key(index.toString())
            ..useTransition<Color>(
              value: start.value ? Colors.red : Colors.blue,
              duration: duration,
              builder: (child, value) => child..bg = value,
            )
            ..useTransition<double>(
              value: start.value ? 0 : 4,
              duration: duration,
              builder: (child, value) => child..rotate = value,
            ),
        )
        ..mainAxisSpacing = 4
        ..crossAxisSpacing = 4,
    );
  }
}
