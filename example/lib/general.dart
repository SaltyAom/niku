import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:niku/namespace.dart' as n;

class Styles {
  static final button = (Color color) => n.Button(SizedBox.shrink())
    ..useButtonStyle((v) => v
      ..rounded = 4
      ..px = 24
      ..py = 12
      ..useTextStyle((v) => v
        ..fontSize = 18
        ..w500
        ..color = color));
}

class Counter extends HookWidget {
  const Counter();

  build(context) {
    final count = useState(0);

    return Scaffold(
      body: n.Column([
        n.Text(count.value.toString())
          ..center
          ..h4 = context,
        n.On(
          () => n.Column([
            n.Button(n.Text("Increment"))
              ..onPressed = (() => count.value++)
              ..apply = Styles.button(Colors.blue.shade700)
              ..useButtonStyle((v) => v
                ..bg = Colors.blue.shade50
                ..splash = Colors.blue.shade100)
              ..freezed,
            n.Button(n.Text("Decrement"))
              ..onPressed = () {
                count.value--;
              }
              ..apply = Styles.button(Colors.red.shade700)
              ..useButtonStyle((v) => v
                ..bg = Colors.red.shade50
                ..splash = Colors.red.shade100)
              ..freezed,
          ]),
        )
      ])
        ..mainCenter
        ..crossCenter
        ..gap = 16
        ..useParent((v) => v..center),
    );
  }
}

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  build(context) {
    return Scaffold(
      body: Icon(Icons.home_outlined, color: Colors.white).niku
        ..p = 10
        ..bg = Color(0xff7AC1E7)
        ..rounded
        ..p = 15
        ..bg = Color(0xffE8F2F7)
        ..rounded
        ..p = 20
        ..useChild(
          (child) => Card(
            elevation: 10,
            child: child,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        )
        ..center,
    );
  }
}

class AlertPage extends StatelessWidget {
  const AlertPage({Key? key}) : super(key: key);

  build(context) {
    return Scaffold(
      body: n.Button(n.Text("Hello World"))
        ..onPressed = () {
          showDialog(
            context: context,
            builder: (context) => n.Alert()
              ..title = Text("Hello World")
              ..content = Text("This is alert dialog written in Niku"),
          );
        }
        ..useTextStyle((v) => v
          ..fontSize = 21
          ..w500
          ..color = Colors.white)
        ..useButtonStyle((v) => v
          ..px = 32
          ..py = 16
          ..splash = Colors.white.withOpacity(.175)
          ..bg = Colors.transparent)
        ..useParent((v) => v
          ..gradient = LinearGradient(
            colors: [
              Color(0xff7F7FD5),
              Color(0xff86A8E7),
              Color(0xff91EAE4),
            ],
          )
          ..rounded = 8
          ..center),
    );
  }
}

class Grid extends StatelessWidget {
  const Grid();

  build(context) {
    return Scaffold(
      body: n.GridView(2, [
        n.Box()..bg = Colors.amber,
        n.Box()..bg = Colors.red,
        n.Box()..bg = Colors.blue,
        n.Box()..bg = Colors.green,
        n.Box()..bg = Colors.yellow,
        n.Box()..bg = Colors.cyan,
        n.Box()..bg = Colors.black,
        n.Box()..bg = Colors.indigo
      ])
        ..useParent((v) => v
          ..scrollbar
          ..p = 16),
    );
  }
}

class Freezed extends HookWidget {
  const Freezed();

  build(context) {
    final options = ["One", "Two", "Three"];
    final option = useState(options[0]);
    final freezed = useState(false);

    return Scaffold(
      appBar: AppBar(
        title: Text("Niku: Heaven and Earth"),
      ),
      body: n.Column([
        CupertinoSlidingSegmentedControl<bool>(
          groupValue: freezed.value,
          children: {
            false: Text("Reactive").niku
              ..useEvents(
                tap: () => freezed.value = false,
              ),
            true: Text("Freezed").niku
              ..useEvents(
                tap: () => freezed.value = true,
              ),
          },
          onValueChanged: (v) {
            if (v != null) freezed.value = v;
          },
        ).niku
          ..mb = 16
          ..on = [freezed.value],
        n.Text("${option.value}")
          ..h6 = context
          ..bold
          ..useQuery(
            context,
            base: (v) => v..color = Colors.red,
            xs: (v) => v..color = Colors.blue,
          )
          ..useParent((v) => v
            ..px = 24
            ..py = 12
            ..useQuery(
              base: (v) => v..bg = Colors.red.shade50,
              xs: (v) => v..bg = Colors.blue.shade50,
            )
            ..rounded
            ..on = freezed.value ? [] : [option.value]),
        ClipRRect(
          borderRadius: BorderRadius.circular(99999),
          child: LayoutBuilder(
            builder: (context, constraints) {
              final xs = constraints.maxWidth >= 568;

              return ColoredBox(
                color: xs ? Colors.blue.shade50 : Colors.red.shade50,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 12,
                  ),
                  child: Text(
                    "${option.value}",
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: xs ? Colors.blue : Colors.red,
                        ),
                  ),
                ),
              );
            },
          ),
        ),
        n.DropdownButton<String>()
          ..value = option.value
          ..onChanged = (newValue) {
            option.value = newValue!;
          }
          ..elevation = 1
          ..items = options
              .map(
                (option) => DropdownMenuItem(
                  value: option,
                  child: Text(option),
                ),
              )
              .toList()
      ])
        ..mainCenter
        ..crossCenter
        ..gap = 24
        ..useNiku((v) => v..wFull),
    );
  }
}
