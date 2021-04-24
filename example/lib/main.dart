import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:niku/niku.dart';

import 'dart:math' as Math;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  build(context) {
    return MaterialApp(
      title: "Niku",
      theme: ThemeData(
        primaryColor: Colors.blue,
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(
          brightness: Brightness.dark,
        ),
      ),
      home: HomePage(),
    );
  }
}

class NikuTextFieldPage extends HookWidget {
  final style = NikuTextField("Hello")
    ..outlined()
    ..borderColor(
      focused: Colors.blue,
    )
    ..labelW600()
    ..mb(20);

  final String? Function(String?) Function(String) validator = (label) =>
      (value) {
        if (value == null) return "Something went wrong";

        if (value.isEmpty) return "$label can't be empty";
        if (value.length <= 5) return "$label must have more than 5 characters";
      };

  @override
  build(context) {
    final username = useTextEditingController();
    final password = useTextEditingController();

    final form = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        title: Text("Hello World"),
      ),
      body: Form(
        key: form,
        child: NikuColumn([
          NikuTextField("Username")
            ..apply(style)
            ..controller(username)
            ..validator(validator("Username"))
            ..prefixIcon(Icon(Icons.supervised_user_circle)),
          NikuTextField("Password")
            ..apply(style)
            ..controller(password)
            ..asPassword()
            ..validator(validator("Password"))
            ..prefixIcon(Icon(Icons.lock)),
          NikuButton.elevated(Text("Login"))
            ..onPressed(() {})
            ..bg(Colors.blue)
            ..fg(Colors.white)
            ..fontSize(18)
            ..bold()
            ..rounded(8)
            ..py(16)
            ..onPressed(() {
              if (!form.currentState!.validate()) return;

              print("Username: ${username.value.text}");
              print("Password: ${password.value.text}");
            }),
        ]).mainCenter().stretch().niku()
          ..px(20),
      ),
    );
  }
}

class AnimationPage extends HookWidget {
  build(context) {
    final controller = useAnimationController(
      initialValue: 5,
      lowerBound: 0,
      upperBound: 10,
    );

    return Scaffold(
      appBar: AppBar(),
      body: NikuColumn([
        NikuButton(Text("Random Width"))
          ..onPressed(() {
            final value = Math.Random().nextInt(10);

            controller.animateTo(
              value.toDouble(),
              duration: const Duration(milliseconds: 200),
            );
          }),
        Niku()
          ..bg(Colors.blue)
          ..rounded()
          ..height(10)
          ..animated(
            controller,
            (context, child) =>
                Niku(child)..widthPercent(controller.value * 10),
          )
      ])
        ..mainCenter()
        ..stretch(),
    );
  }
}

class HomePage extends StatelessWidget {
  final baseButton = NikuButton(Placeholder())
    ..fontSize(21)
    ..fg(Colors.blue)
    ..rounded(8)
    ..px(40)
    ..py(20)
    ..my(20);

  build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Niku"),
        brightness: Brightness.dark,
      ),
      body: Niku(Column(
        children: [
          NikuText("Hi")
            ..theme(
              context,
              (theme) => theme.headline1,
            ),
          TextButton(
            child: Text("Text Button"),
            onPressed: () {
              print("Text Button");
            },
          ).asNiku()
            ..apply(baseButton)
            ..overlay(Theme.of(context).primaryColor.withOpacity(.125))
            ..highlight(Theme.of(context).primaryColor.withOpacity(.075)),
          IconButton(
              icon: Icon(Icons.image),
              onPressed: () {
                print("Icon Button");
              }).asNiku()
            ..setColor(
              color: Theme.of(context).primaryColor,
              highlight: Theme.of(context).primaryColor.withOpacity(.1),
              splash: Theme.of(context).primaryColor.withOpacity(.2),
            )
            ..onPressed(() {})
            ..tooltip("Image")
            ..my(8),
          ElevatedButton(
            child: Text("Elevated Button"),
            onPressed: () {
              print("Elevated Button");
            },
          ).asNiku()
            ..apply(baseButton)
            ..fg(Colors.white)
            ..overlay(Colors.white12)
            ..elevation(base: 2),
          OutlinedButton(
            child: Text("Outlined Button"),
            onPressed: () {
              print("Outlined Button");
            },
          ).asNiku()
            ..apply(baseButton)
            ..rounded(8)
            ..fontSize(21)
            ..bc(Colors.blue),
          Niku(Stack(children: [
            Text("Text in Niku Stack"),
            NikuText("Text with Niku Property")..mt(40),
          ]).asNiku()
            ..topCenter())
            ..maxHeight(100),
          Niku()
            ..size(40, 40)
            ..bg(Theme.of(context).primaryColor)
            ..rounded()
            ..my(20)
        ],
      ).asNiku()
        ..justifyCenter()
        ..prepend(
          Text("Niku").asNiku()
            ..fontSize(21)
            ..w600()
            ..color(Theme.of(context).primaryColor)
            ..mb(20),
        )
        ..append(
          Niku(TextField().asNiku()
            ..label("Niku Text Field")
            ..allowSelectAll(false)
            ..prefixIcon(
              Icon(Icons.edit),
            )
            ..suffixIcon(
              IconButton(
                icon: Icon(Icons.delete),
                onPressed: () {},
              )
                  .asNiku()
                  .highlight(Colors.transparent)
                  .splash(Colors.transparent),
            )
            ..color(Colors.black87)
            ..outlined(width: 1)
            ..borderColor(enabled: Colors.blue))
            ..maxWidth(320)
            ..my(20),
        ))
        ..my(40)
        ..scrollable()
        ..scrollbar()
        ..fullWidth()
        ..center(),
    );
  }
}
