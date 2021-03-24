import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:niku/niku.dart';

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
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final baseText = NikuText("")
    ..color(Colors.white)
    ..fontSize(21);

  final baseButton = NikuButton(Placeholder())
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
      body: Column(
        children: [
          TextButton(
            child: Text("Text Button").asNiku()
              ..apply(baseText)
              ..color(Theme.of(context).primaryColor),
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
            child: Text("Elevated Button").asNiku()..apply(baseText),
            onPressed: () {
              print("Elevated Button");
            },
          ).asNiku()
            ..apply(baseButton)
            ..overlay(Colors.white12)
            ..elevation(base: 2),
          OutlinedButton(
            child: Text("Outlined Button")
                .asNiku()
                .apply(baseText)
                .color(Theme.of(context).primaryColor),
            onPressed: () {
              print("Outlined Button");
            },
          ).asNiku()
            ..apply(baseButton)
            ..bc(Colors.blue),
          Stack(children: [
            Text("Text in Niku Stack"),
            Text("Text with Niku Property").niku()..mt(40),
          ]).asNiku().topCenter().niku().maxHeight(100),
          Niku()
            ..size(40, 40)
            ..bg(Theme.of(context).primaryColor)
            ..rounded()
            ..my(20)
        ],
      )
          .asNiku()
          .justifyCenter()
          .prepend(
            Text("Niku").asNiku()
              ..fontSize(21)
              ..w600()
              ..color(Theme.of(context).primaryColor)
              ..mb(20),
          )
          .append(
            TextField()
                .asNiku()
                .label("Niku Text Field")
                .allowSelectAll(false)
                .prefixIcon(
                  Icon(Icons.edit),
                )
                .suffixIcon(
                  IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {},
                  )
                      .asNiku()
                      .highlight(Colors.transparent)
                      .splash(Colors.transparent),
                )
                .color(Colors.black87)
                .border(
                  OutlineInputBorder(
                    borderSide: BorderSide(width: 2),
                  ),
                )
                .niku()
                  ..maxWidth(320)
                  ..my(20),
          )
          .niku()
            ..my(40)
            ..scrollable()
            ..fullWidth()
            ..center(),
    );
  }
}
