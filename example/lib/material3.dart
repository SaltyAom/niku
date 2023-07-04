import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:niku/niku.dart';
import 'package:niku/namespace.dart' as n;

class Material3App extends StatelessWidget {
  const Material3App({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Niku Material 3',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.green,
        // splashFactory: InkSparkle.splashFactory,
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.green,
        brightness: Brightness.dark,
        // splashFactory: InkSparkle.splashFactory,
      ),
      home: const Material3Page(),
    );
  }
}

class Material3Page extends HookWidget {
  const Material3Page({Key? key}) : super(key: key);

  @override
  build(context) {
    final page = useState(0);

    return Scaffold(
      appBar: AppBar(
        title: 'Niku Material 3'.n,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
        elevation: 0,
      ),
      body: [
        const M3HomePage(),
        const M3Widgets(),
        n.Box(),
      ][page.value],
      bottomNavigationBar: NavigationBar(
        selectedIndex: page.value,
        onDestinationSelected: (newPage) {
          page.value = newPage;
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          NavigationDestination(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}

class M3HomePage extends StatelessWidget {
  const M3HomePage();

  build(context) {
    return n.Column([
      "Hello".displayLarge,
      "Running with Material 3".bodySmall,
      n.Button("Niku love Material You".n)
        ..onPressed = () {}
        ..mt = 12,
      n.Button("New Page".n)
        ..mt = 24
        ..onPressed = () async {
          final page = await Future.microtask(() => M3About());
          final route = await Future.microtask(
            () => MaterialPageRoute(builder: (context) => page),
          );

          Navigator.push(context, route);
        },
    ])
      ..center
      ..wFull
      ..gap = 4;
  }
}

class M3Widgets extends HookWidget {
  const M3Widgets({Key? key}) : super(key: key);

  @override
  build(context) {
    final sliderValue = useState(50.0);
    final switchValue = useState(false);

    pop() {
      Navigator.of(context).pop();
    }

    showAlert() {
      n.showDialog(
        context: context,
        builder: (context) => n.Alert(
          title: "Alert".n,
          content: "This is an alert".n,
          actions: [
            n.Button("Cancel".n)
              ..onPressed = pop
              ..color = Colors.red
              ..splash = Colors.red.shade500.withOpacity(.05),
            n.Button("OK".n)..onPressed = pop
          ],
        ),
      );
    }

    return n.Column([
      n.Slider(sliderValue.value)
        ..max = 100
        ..onChanged = (value) {
          sliderValue.value = value;
        },
      n.Switch()
        ..value = switchValue.value
        ..onChanged = (value) {
          switchValue.value = value;
        },
      n.Button.tonal("Show Alert".n)..onPressed = showAlert,
      n.Row([
        n.Button.tonal("Show date picker".n)
          ..onPressed = () {
            showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2007),
              lastDate: DateTime(2025),
            );
          },
        n.Button.tonal("Show time picker".n)
          ..onPressed = () {
            showTimePicker(
              context: context,
              initialTime: TimeOfDay.now(),
            );
          }
      ])
        ..center
        ..gap = 16
        ..mt = 8,
      n.TextFormField.label("Form")
        ..isFilled
        ..textInputAction = TextInputAction.done
    ])
      ..center
      ..wFull
      ..gap = 8
      ..px = 16;
  }
}

class M3About extends StatelessWidget {
  const M3About({Key? key}) : super(key: key);

  @override
  build(context) {
    return Scaffold(
      appBar: AppBar(title: 'Back'.n),
      body: "New Page".displaySmall..n.center,
    );
  }
}
