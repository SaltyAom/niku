import 'package:flutter/material.dart';

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
  final baseText = NikuText("").color(Colors.white).fontSize(21);

  build(context) {
    return Scaffold(
        appBar: AppBar(title: Text("Niku")),
        body: NikuColumn([])
            .justifyCenter()
            .children([
              NikuFlatButton(NikuText("Flat Button")
                      .apply(baseText)
                      .color(Colors.blue)
                      .build())
                  .onPressed(() {})
                  .splash(Colors.blueAccent.withOpacity(.125))
                  .highlight(Colors.blueAccent.withOpacity(.125))
                  .rounded(8)
                  .my(20)
                  .build(),
              NikuRaisedButton(NikuText("Raised Button").style(baseText))
                  .onPressed(() {})
                  .px(40)
                  .py(20)
                  .bg(Colors.blue)
                  .splash(Colors.white.withOpacity(.25))
                  .highlight(Colors.white.withOpacity(.125))
                  .rounded(8)
                  .my(20)
                  .build(),
              NikuOutlineButton(
                NikuText("Outline Button")
                    .apply(baseText)
                    .color(Colors.blue)
                    .build(),
              )
                  .onPressed(() {})
                  .px(40)
                  .py(20)
                  .splash(Colors.blueAccent.withOpacity(.25))
                  .highlight(Colors.blueAccent.withOpacity(.125))
                  .rounded(8)
                  .my(20)
                  .build(),
              NikuText("Container")
                  .fontSize(21)
                  .color(Colors.white)
                  .niku()
                  .px(40)
                  .py(20)
                  .bg(Colors.blue)
                  .rounded(8)
                  .my(20)
                  .build(),
            ])
            .prepend(NikuText("Niku")
                .fontSize(21)
                .w600()
                .color(Colors.blue[400])
                .niku()
                .mb(20)
                .build())
            .append(NikuTextField("Niku Text Field")
                .prefixIcon(Icon(Icons.edit))
                .color(Colors.black87)
                .border(OutlineInputBorder(borderSide: BorderSide(width: 2)))
                .focusedBorder(OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 2)))
                .niku()
                .maxWidth(320)
                .my(20)
                .build())
            .niku()
            .fullWidth()
            .center()
            .build());
  }
}
