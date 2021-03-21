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
      home: NTHomePage(),
    );
  }
}

class NTHomePage extends StatelessWidget {
  build(context) => Scaffold(
        appBar: AppBar(
          title: Text("Hello World"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 8),
              child: Text(
                "Text",
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.red,
                ),
              ),
            ),
            NikuText("Niku Text")
                .fontSize(28)
                .color(Colors.black)
                .niku()
                .my(8)
                .build(),
            NTNikuText("Niku Text NT")
              ..fontSize(28)
              ..color(Colors.blue)
              ..niku()
              ..my(8),
          ],
        ).ntNiku()
          ..width(300)
          ..center(),
      );
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
      body: NikuColumn(
        [
          NikuButton(
            NikuText("Text Button")
                .apply(baseText)
                .color(Theme.of(context).primaryColor)
                .build(),
          )
              .apply(baseButton)
              .onPressed(() {
                print("Text Button");
              })
              .overlay(Theme.of(context).primaryColor.withOpacity(.125))
              .highlight(Theme.of(context).primaryColor.withOpacity(.075))
              .build(),
          NikuIconButton(
            Icon(Icons.image),
          )
              .setColor(
                color: Theme.of(context).primaryColor,
                highlight: Theme.of(context).primaryColor.withOpacity(.1),
                splash: Theme.of(context).primaryColor.withOpacity(.2),
              )
              .onPressed(() {})
              .tooltip("Image")
              .niku()
              .my(8)
              .build(),
          NikuButton(
            NikuText("Elevated Button").style(baseText),
          )
              .apply(baseButton)
              .onPressed(() {
                print("Elevated Button");
              })
              .overlay(Colors.white12)
              .elevation(base: 2)
              .elevated(),
          NikuButton(
            NikuText("Outlined Button")
                .apply(baseText)
                .color(Theme.of(context).primaryColor)
                .build(),
          )
              .apply(baseButton)
              .onPressed(() {
                print("Outlined Button");
              })
              .borderColor(
                base: Colors.black12,
                selected: Theme.of(context).primaryColor,
              )
              .outlined(),
          NikuText("Material")
              .fontSize(21)
              .color(Colors.white)
              .niku()
              .px(40)
              .py(20)
              .on(tap: () {
                print("Material");
              })
              .inkwell(splash: Colors.white24, highlight: Colors.white24)
              .material(color: Theme.of(context).primaryColor)
              .rounded(8)
              .builder((child) {
                return Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 20,
                  ),
                  child: child,
                );
              })
              .build(),
          NikuStack([
            Text("Text in Niku Stack"),
            Text("Text with Niku Property").niku().mt(40).build(),
          ]).topCenter().niku().maxHeight(100).build(),
          Niku()
              .size(40, 40)
              .bg(Theme.of(context).primaryColor)
              .rounded()
              .my(20)
              .build()
        ],
      )
          .justifyCenter()
          .prepend(
            NikuText("Niku")
                .fontSize(21)
                .w600()
                .color(Theme.of(context).primaryColor)
                .niku()
                .mb(20)
                .build(),
          )
          .append(
            NikuTextField("Niku Text Field")
                .allowSelectAll(false)
                .prefixIcon(
                  Icon(Icons.edit),
                )
                .suffixIcon(
                  NikuIconButton(
                    Icon(Icons.delete),
                  )
                      .onPressed(() {})
                      .highlight(Colors.transparent)
                      .splash(Colors.transparent)
                      .build(),
                )
                .color(Colors.black87)
                .border(
                  OutlineInputBorder(
                    borderSide: BorderSide(width: 2),
                  ),
                )
                .niku()
                .maxWidth(320)
                .my(20)
                .build(),
          )
          .niku()
          .my(40)
          .scrollable()
          .fullWidth()
          .center()
          .build(),
    );
  }
}
