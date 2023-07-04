import 'package:niku/niku.dart';
import 'package:niku/namespace.dart' as n;

import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:flutter/material.dart';

class AegleSeeker extends HookWidget {
  const AegleSeeker({Key? key}) : super(key: key);

  @override
  build(context) {
    final toggle = useState(false);

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
        ],
      ),
      body: n.Column([
        n.Text("AegleSeeker")..displayMedium,
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
        // --- New Widget ---
        n.ListView.children([
          n.RadioListTile(false)
            ..title = Text("Blue")
            ..groupValue = toggle.value
            ..onChanged = (value) {
              toggle.value = value!;
            },
          n.RadioListTile(true)
            ..title = Text("Red")
            ..groupValue = toggle.value
            ..onChanged = (value) {
              toggle.value = value!;
            },
        ])
          ..shrinkWrap = true,
        n.Text("Hello")
          ..usePlatform(
            context,
            iOS: (a) => a..color = Colors.red,
            android: (a) => a..color = Colors.blue,
          ),
        n.Text("Progress Bar"),
        n.Button(Text("Toggle"))
          ..onPressed = () {
            toggle.value = !toggle.value;
          }
          ..bg = Colors.blue.shade50
          ..px = 24
          ..py = 12
          ..rounded = 8,
        n.Row([
          n.Box()
            ..size = [40, 40]
            ..bg = Colors.blue,
          n.Box()
            ..size = [40, 40]
            ..bg = Colors.green,
        ])
          ..gap = 16,
      ])
        ..center
        ..w100
        ..p = 16
        ..gap = 16,
    );
  }
}
