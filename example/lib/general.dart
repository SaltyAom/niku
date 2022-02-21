import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:niku/namespace.dart' as n;

class MyStyles {
  static button(Color color) => n.Button(SizedBox.shrink())
    ..useButtonStyle((v) => v
      ..rounded = 4
      ..px = 24
      ..py = 12
      ..useTextStyle((v) => v
        ..fontSize = 18
        ..w500
        ..color = color));
}

class Styles {
  static final title = n.Text("")
    ..fontSize = 24
    ..color = Colors.blue
    ..useParent((v) => v
      ..p = 12
      ..bg = Colors.blue.shade50);

  static final rounded = n.Text("")
    ..w500
    ..useParent((v) => v
      ..bg = Colors.blue.shade50
      ..rounded = 8);

  static final roundedTitle = n.Text("")..use([title, rounded]);

  static final centerCol = n.Column([])
    ..mainCenter
    ..crossCenter
    ..useParent((v) => v..w100);
}

class InheritsParentBuilder extends StatelessWidget {
  @override
  build(context) {
    return Scaffold(
      body: n.Column([
        n.Text("Niku Style Sheet")..apply = Styles.roundedTitle,
      ])
        ..apply = Styles.centerCol,
    );
  }
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
              ..apply = MyStyles.button(Colors.blue.shade700)
              ..useButtonStyle((v) => v
                ..bg = Colors.blue.shade50
                ..splash = Colors.blue.shade100)
              ..freezed,
            n.Button(n.Text("Decrement"))
              ..onPressed = () {
                count.value--;
              }
              ..apply = MyStyles.button(Colors.red.shade700)
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
    final showDialog = () {
      n.showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) => n.Alert.adaptive()
          ..title = Text("Hello World")
          ..content = n.NikuColumn([
            Text("This is alert dialog written in Niku"),
            n.TextFormField.adaptive("Placeholder").niku..mt = 16,
          ])
          ..actions = [
            n.Button(Text("Delete"))
              ..onPressed = () {
                Navigator.of(context).pop();
              }
              ..useTextStyle((v) => v..color = Colors.red)
              ..useButtonStyle((v) => v..splash = Colors.red.withOpacity(.15)),
            n.Button(Text("Cancel"))
              ..onPressed = () {
                Navigator.of(context).pop();
              }
              ..useTextStyle((v) => v..bold),
          ],
      );
    };

    return Scaffold(
      body: n.Button(n.Text("Show Alert"))
        ..onPressed = showDialog
        ..useTextStyle((v) => v
          ..fontSize = 18
          ..w500
          ..color = Colors.white)
        ..useButtonStyle((v) => v
          ..px = 24
          ..py = 12
          ..splash = Colors.white.withOpacity(.25)
          ..bg = Colors.transparent)
        ..useParent((v) => v
          ..gradient = LinearGradient(
            colors: [Color(0xff4A00E0), Color(0xff8E2DE2)],
          )
          ..rounded = 8
          ..center),
    );
  }
}

class General extends HookWidget {
  const General({Key? key}) : super(key: key);

  @override
  build(context) {
    final options = ["Option 1", "Option 2", "Option 3"];
    final option = useState(options[0]);
    final active = useState(false);
    final slider = useState<double>(50);

    final showAlert = () {
      n.showDialog(
        context: context,
        builder: (context) => n.Alert.adaptive()
          ..title = Text("Hello World")
          ..content = n.Column([
            Text("This is alert dialog written in Niku"),
            n.TextFormField.adaptive("Placeholder").niku..mt = 16,
          ])
          ..actions = [
            n.Button(Text("Delete"))
              ..onPressed = () {
                Navigator.of(context).pop();
              }
              ..useTextStyle((v) => v..color = Colors.red)
              ..useButtonStyle((v) => v..splash = Colors.red.withOpacity(.15)),
            n.Button(Text("Cancel"))
              ..onPressed = () {
                Navigator.of(context).pop();
              }
              ..useTextStyle((v) => v..bold),
          ],
      );
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text("General"),
        elevation: 0,
        actions: [
          n.PopupMenuButton(n.Icon(Icons.edit)..color = Colors.white)
            ..items = [1, 2, 3]
            ..elevation = 2
            ..useParent((p0) => p0..mr = 12)
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: showAlert,
        child: Icon(Icons.add, color: Colors.blue),
        backgroundColor: Colors.blue.shade50,
        splashColor: Colors.blue.shade100,
        elevation: 0,
        focusElevation: 0,
        hoverElevation: 0,
        highlightElevation: 0,
        disabledElevation: 0,
      ).niku
        ..theme = ThemeData(highlightColor: Colors.transparent),
      body: n.Column([
        n.Text("Awesome Niku")
          ..h4 = context
          ..useParent((v) => v..mb = 24),
        n.TextFormField("Value")..useDecoration((p0) => p0..outlined),
        n.CheckboxListTile(active.value)
          ..leading
          ..title = Text("General")
          ..onChanged = (v) {
            if (v != null) active.value = v;
          }
          ..splashColor = Colors.blue.shade50
          ..highlightColor = Colors.transparent,
        n.Switch.adaptive()
          ..value = active.value
          ..onChanged = (v) {
            active.value = v;
          }
          ..activeColor = Colors.blue,
        n.DropdownButton(option.value)
          ..itemsValue = options
          ..onChanged = (v) {
            if (v != null) option.value = v;
          }
          ..elevation = 1,
        n.Slider(slider.value)
          ..onChanged = (v) {
            slider.value = v;
          }
          ..min = 0
          ..max = 100
          ..trackHeight = 2
          ..thumbColor = Colors.white,
        n.Button(Text("Button"))
          ..onPressed = () {}
          ..useTextStyle((v) => v
            ..fontSize = 18
            ..w500
            ..color = Colors.blue)
          ..useButtonStyle((v) => v
            ..px = 24
            ..py = 12
            ..bg = Colors.blue.shade50
            ..rounded = 12),
      ])
        ..mainCenter
        ..crossCenter
        ..useParent((v) => v
          ..wFull
          ..px = 24),
    );
  }
}

class NetworkImageExample extends StatelessWidget {
  const NetworkImageExample({Key? key}) : super(key: key);

  @override
  build(context) {
    return Scaffold(
      body: n.Column([
        n.Image.network(
          "https://avatars.githubusercontent.com/u/35027979?s=400&u=28dbe76d9057768eed7cb2d346203b7c55c153ce&v=4",
        )..useParent((v) => v
          ..maxW = 420
          ..rounded = 8
          ..shadows = [
            BoxShadow(
              color: Colors.black.withOpacity(.1),
              blurRadius: 8,
              offset: Offset(0, 4),
            ),
            BoxShadow(
              color: Colors.black.withOpacity(.1),
              blurRadius: 32,
              offset: Offset(0, 16),
            ),
          ]
          ..px = 20),
        n.Text("Network Image")
          ..h6 = context
          ..useDarkMode(
            context,
            (v, isDarkTheme) =>
                v..color = isDarkTheme ? Colors.white : Colors.black,
          ),
      ])
        ..mainCenter
        ..crossCenter
        ..gap = 24
        ..useParent((v) => v..fullWidth),
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
              ..useGesture(
                tap: () => freezed.value = false,
              ),
            true: Text("Freezed").niku
              ..useGesture(
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
          ..useScreen(
            context,
            base: (v) => v..color = Colors.red,
            xs: (v) => v..color = Colors.blue,
          )
          ..useParent((v) => v
            ..px = 24
            ..py = 12
            ..useScreen(
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
        n.DropdownButton<String>(option.value)
          ..itemsValue = options
          ..onChanged = (newValue) {
            option.value = newValue!;
          }
          ..elevation = 1
          ..itemsValue = options
      ])
        ..mainCenter
        ..crossCenter
        ..gap = 24
        ..useNiku((v) => v..wFull),
    );
  }
}
