import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:niku/niku.dart';

class Styles {
  static final button = NikuButton(SizedBox.shrink())
    ..onPressed = () {}
    ..useStyle((v) => v
      ..rounded = 4
      ..px = 24
      ..py = 12
      ..useTextStyle((v) => v
        ..fontSize = 16
        ..bold
        ..color = Colors.white));
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
        ..useParent(
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

class Counter extends HookWidget {
  const Counter();

  build(context) {
    final count = useState(0);

    return Scaffold(
      body: NikuColumn([
        Text("Counter: ${count.value}").asNiku
          ..center
          ..style = (NikuTextStyle()..h4 = context),
        useMemoized(
          () => NikuButton.elevated(NikuText("Increment"))
            ..apply = Styles.button
            ..onPressed = (() => count.value++),
        ),
        useMemoized(
          () => NikuButton.elevated(NikuText("Decrement"))
            ..apply = Styles.button
            ..onPressed = (() => count.value--)
            ..useStyle((v) => v..bg = Colors.red),
        )
      ])
        ..mainCenter
        ..crossCenter
        ..gap = 16
        ..useParent((v) => v..center),
    );
  }
}

class AlertPage extends StatelessWidget {
  const AlertPage({Key? key}) : super(key: key);

  build(context) {
    return Scaffold(
      body: NikuButton(Text("Hello World"))
        ..onPressed = () {
          showDialog(
            context: context,
            builder: (context) => NikuAlert()
              ..title = Text("Hello World")
              ..content = Text("This is alert dialog written in Niku"),
          );
        }
        ..useTextStyle((v) => v
          ..fontSize = 21
          ..w500
          ..color = Colors.white)
        ..useStyle((v) => v
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
      body: NikuGridView(2, [
        Niku()..bg = Colors.amber,
        Niku()..bg = Colors.red,
        Niku()..bg = Colors.blue,
        Niku()..bg = Colors.green,
        Niku()..bg = Colors.yellow,
        Niku()..bg = Colors.cyan,
        Niku()..bg = Colors.black,
        Niku()..bg = Colors.indigo,
      ])
        ..useParent((v) => v
          ..scrollbar
          ..p = 16),
    );
  }
}

class App extends StatelessWidget {
  const App();

  build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Niku"),
      ),
      body: Container(
        width: double.infinity,
        child: NikuColumn([
          NikuTextFormField("Password")
            ..prefixIcon = Icon(Icons.lock)
            ..asPassword
            ..useStyle((v) => v
              ..fontSize = 21
              ..w500)
            ..useFloatingLabelStyle((v) => v
              ..color = Colors.red
              ..fontSize = 14)
            ..useDecoration((v) => v
              ..outlined
              ..allBorderWidth = 2
              ..focusedBorderColor = Colors.red)
            ..useNiku((v) => v
              ..px = 24
              ..mb = 24),
          NikuButton.elevated(Text("Hello World"))
            ..onPressed = () {}
            ..useTextStyle((v) => v..fontSize = 18)
            ..useStyle((v) => v
              ..bg = Colors.blue
              ..fg = Colors.white
              ..py = 16
              ..elevationState = NikuState(pressed: 16))
            ..useNiku((v) => v
              ..w100
              ..px = 24),
          NikuButton.elevated(Text("Text Button"))
            ..onPressed = () {}
            ..useStyle((v) => v
              ..bg = Colors.blue
              ..py = 20)
            ..useTextStyle((v1) => v1..fontSize = 21)
            ..useNiku((v) => v
              ..widthPercent = 70
              ..tooltip = "A Text Button"
              ..center),
          NikuButton.outlined(Text("Hello World"))
            ..onPressed = () {}
            ..useTextStyle((v) => v
              ..fontSize = 18
              ..bold)
            ..useStyle((v) => v
              ..fg = Colors.blue
              ..px = 24
              ..py = 12
              ..rounded = 4
              ..side = BorderSide(color: Colors.blue)),
          NikuText("Hi friends~")
            ..center
            ..useStyle((v) => v
              ..fontSize = 24
              ..color = Colors.grey.shade700
              ..w300
              ..color = Colors.white)
            ..useParent((v) => v
              ..fullWidth
              ..py = 24
              ..bg = Colors.blue),
        ])
          ..mainCenter
          ..crossCenter
          ..gap = 24,
      ),
    );
  }
}
