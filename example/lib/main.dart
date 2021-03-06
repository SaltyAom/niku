import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:niku/niku.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  build(context) {
    return MaterialApp(title: "Niku", home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  final baseText = NikuText("")
    ..color(Colors.white)
    ..fontSize(21);

  build(context) {
    return Scaffold(
        appBar: AppBar(title: Text("Niku")),
        body: NikuColumn([])
            .justifyCenter()
            .children([
              NikuButton(
                NikuText("Text Button")
                    .apply(baseText)
                    .color(Colors.blue)
                    .build(),
              )
                  .onPressed(() {})
                  .highlight(Colors.blueAccent.withOpacity(.075))
                  .overlay(Colors.blueAccent.withOpacity(.125))
                  .rounded(8)
                  .px(40)
                  .py(20)
                  .my(20)
                  .build(),
              NikuIconButton(
                Icon(Icons.image),
              )
                  .setColor(
                    color: Colors.blue,
                    highlight: Colors.blueAccent.withOpacity(.1),
                    splash: Colors.blueAccent.withOpacity(.2),
                  )
                  .onPressed(() {})
                  .tooltip("Image")
                  .niku()
                  .my(8)
                  .build(),
              NikuButton(
                NikuText("Elevated Button").style(baseText),
              )
                  .onPressed(() {})
                  .px(40)
                  .py(20)
                  .bg(Colors.blue)
                  .highlight(Colors.blue.shade500)
                  .overlay(Colors.white.withOpacity(.25))
                  .elevation(base: 2)
                  .rounded(8)
                  .my(20)
                  .elevated(),
              NikuButton(
                NikuText("Outlined Button")
                    .apply(baseText)
                    .color(Colors.blue)
                    .build(),
              )
                  .onPressed(() {})
                  .px(40)
                  .py(20)
                  .borderColor(
                    base: Colors.black12,
                    selected: Colors.blue,
                  )
                  .overlay(Colors.blueAccent.withOpacity(.125))
                  .rounded(8)
                  .my(20)
                  .outlined(),
              NikuText("Material")
                  .fontSize(21)
                  .color(Colors.white)
                  .niku()
                  .px(40)
                  .py(20)
                  .on(tap: () {
                    print("Clicked on Material");
                  })
                  .inkwell(splash: Colors.white24, highlight: Colors.white24)
                  .material(color: Colors.blue)
                  .rounded(8)
                  .my(20)
                  .build(),
              NikuStack([
                Text("Normal Text"),
                Text("Text with Niku Property").niku().mt(40).build(),
              ]).topCenter().niku().maxHeight(100).build()
            ])
            .prepend(
              NikuText("Niku")
                  .fontSize(21)
                  .w600()
                  .color(Colors.blue.shade400)
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
                  .border(OutlineInputBorder(borderSide: BorderSide(width: 2)))
                  .focusedBorder(OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 2)))
                  .niku()
                  .maxWidth(320)
                  .my(20)
                  .build(),
            )
            .niku()
            .fullWidth()
            .center()
            .build());
  }
}
