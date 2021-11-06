import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:niku/niku.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  build(context) {
    return MaterialApp(
      title: "Niku",
      theme: ThemeData(
        primaryColor: Colors.blue,
        primarySwatch: Colors.blue,
      ),
      home: const App(),
    );
  }
}

class Styles {
  static final button = NikuButton(SizedBox.shrink())
    ..onPressed = () {}
    ..useStyle((v) => v
      ..rounded = 8
      ..px = 24
      ..py = 12
      ..useTextStyle((v) => v
        ..fontSize = 16
        ..bold
        ..color = Colors.white));
}

class Counter extends HookWidget {
  const Counter();

  build(context) {
    final count = useState(0);

    return Scaffold(
        body: Center(
      child: NikuColumn([
        NikuText("Counter: ${count.value}")
          ..center
          ..style = (NikuTextStyle()..h4 = context),
        NikuButton.elevated(NikuText("Increment"))
          ..apply = Styles.button
          ..onPressed = (() => count.value++),
        NikuButton.elevated(NikuText("Decrement"))
          ..apply = Styles.button
          ..onPressed = (() => count.value--)
          ..useStyle((v) => v..bg = Colors.red)
      ])
        ..mainCenter
        ..crossCenter
        ..gap = 16,
    ));
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
          NikuTextFormField()
            ..useStyle((v) => v
              ..fontSize = 21
              ..w500)
            ..useDecoration((v) => v
              ..labelText = "Text"
              ..outlined
              ..allBorderWidth = 2
              ..focusedBorderColor = Colors.red
              ..useFloatingLabelStyle((v) => v
                ..color = Colors.blue
                ..fontSize = 14))
            ..useNiku((v) => v
              ..px = 24
              ..mb = 24),
          NikuButton.elevated(Text("Hello World"))
            ..onPressed = () {}
            ..useStyle((v) => v
              ..bg = Colors.blue
              ..fg = Colors.white
              ..py = 16
              ..elevationState = NikuState(pressed: 16)
              ..useTextStyle((v) => v..fontSize = 18))
            ..useNiku((v) => v
              ..w100
              ..px = 24),
          NikuButton.outlined(Text("Hello World"))
            ..onPressed = () {}
            ..useStyle((v) => v
              ..fg = Colors.blue
              ..px = 24
              ..py = 12
              ..rounded = 4
              ..side = BorderSide(color: Colors.blue)
              ..useTextStyle((v) => v
                ..fontSize = 18
                ..bold)),
          NikuText("Hi friends~")
            ..center
            ..useStyle((v) => v
              ..fontSize = 24
              ..color = Colors.grey.shade700
              ..w300
              ..color = Colors.white)
            ..useNiku((v) => v
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
