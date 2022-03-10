import 'package:niku/niku.dart';
import 'package:niku/namespace.dart' as n;

import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:flutter/material.dart';

class AngleSeeker extends HookWidget {
  const AngleSeeker({Key? key}) : super(key: key);

  @override
  build(context) {
    final toggle = useState(false);

    return Scaffold(
      body: n.Column([
        n.Text("AngleSeeker")..h4 = context,
        n.Button(Text("Toggle"))
          ..onPressed = () {
            toggle.value = !toggle.value;
          },
        // --- Single Transition ---
        n.Box()
          ..size = [100, 100]
          ..useTransition<Color>(
            value: toggle.value ? Colors.red.shade500 : Colors.blue.shade500,
            builder: (child, value) => child..bg = value,
            duration: Duration(milliseconds: 400),
          )
          ..useTransition<double>(
            value: toggle.value ? 40.0 : 8.0,
            builder: (v, value) => v..rounded = value,
            curve: Curves.easeIn,
          ),
        // --- Mulitple Transitions ---
        n.Box()
          ..size = [100, 100]
          ..useTransitions(
            dependencies: [
              toggle.value ? Colors.red : Colors.blue,
              toggle.value ? 40.0 : 8.0,
            ],
            curve: Curves.easeOut,
            builder: (child, deps) => child
              ..bg = deps[0]
              ..rounded = deps[1],
          ),
      ])
        ..center
        ..w100
        ..gap = 16,
    );
  }
}
