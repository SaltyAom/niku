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

class NTHomePage extends StatelessWidget {
  build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello World"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          NikuText("Hello World").fontSize(32),
          NikuButton.outlinedIcon(Icon(Icons.home))
              .label(Text("Icon"))
              .onPressed(() {})
              .my(8)
              .px(8)
              .bc(Colors.blue)
        ],
      ).niku().width(300).center(),
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
      body: NikuColumn(
        [
          NikuButton(
            NikuText("Text Button")
                .apply(baseText)
                .color(Theme.of(context).primaryColor),
          )
              .apply(baseButton)
              .onPressed(() {
                print("Text Button");
              })
              .overlay(Theme.of(context).primaryColor.withOpacity(.125))
              .highlight(Theme.of(context).primaryColor.withOpacity(.075)),
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
              .my(8),
          NikuButton.elevated(
            NikuText("Elevated Button").apply(baseText),
          )
              .apply(baseButton)
              .onPressed(() {
                print("Elevated Button");
              })
              .overlay(Colors.white12)
              .elevation(base: 2),
          NikuButton.outlined(
            NikuText("Outlined Button")
                .apply(baseText)
                .color(Theme.of(context).primaryColor),
          ).apply(baseButton).onPressed(() {
            print("Outlined Button");
          }).bc(Colors.blue),
          NikuStack([
            Text("Text in Niku Stack"),
            Text("Text with Niku Property").niku().mt(40),
          ]).topCenter().niku().maxHeight(100),
          Niku()
              .size(40, 40)
              .bg(Theme.of(context).primaryColor)
              .rounded()
              .my(20)
        ],
      )
          .justifyCenter()
          .prepend(
            NikuText("Niku")
                .fontSize(21)
                .w600()
                .color(Theme.of(context).primaryColor)
                .niku()
                .mb(20),
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
                      .splash(Colors.transparent),
                )
                .color(Colors.black87)
                .border(
                  OutlineInputBorder(
                    borderSide: BorderSide(width: 2),
                  ),
                )
                .niku()
                .maxWidth(320)
                .my(20),
          )
          .niku()
          .my(40)
          .scrollable()
          .fullWidth()
          .center(),
    );
  }
}
