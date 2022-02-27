import 'package:flutter/material.dart';

import 'package:niku/niku.dart';
import 'package:niku/namespace.dart' as n;

class S {
  static final inline = n.ListView()
    ..shrinkWrap = true
    ..neverScroll
    ..useSeparatorBuilder((context, index) => Divider(height: 1));

  static final listBuilder = (String title) => n.ListView()
    ..useItemBuilder(
      (context, index) => n.ListTile()
        ..title = n.Text('${title} $index')
        ..dense = true,
    )
    ..useSeparatorBuilder((context, index) => Divider(height: 1));

  static final grouped = n.ListView()
    ..p = 0
    ..useParent((v) => v
      ..bg = Colors.white
      ..rounded = 8
      ..p = 8);

  static final inlineGroup = n.ListView()
    ..use([inline, grouped])
    ..mb = 16;

  static final listHeader = n.Text("")
    ..color = Colors.grey
    ..ml = 16;

  static final header = n.Column([])
    ..center
    ..w100
    ..gap = 4
    ..my = 48;

  static final mainCol = n.Column([])
    ..crossStart
    ..w100
    ..px = 8
    ..scrollable
    ..safeTop;
}

class G11ListView extends StatelessWidget {
  const G11ListView();

  @override
  build(context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: n.Column([
        n.Column([
          n.Text("Niku 2.1")
            ..fontSize = 36
            ..w500,
          n.Text("Featuring List View")
            ..fontSize = 14
            ..color = Colors.blue,
        ])
          ..of(S.header),
        n.Text("Table of Content")..of(S.listHeader),
        n.ListView.separated()
          ..total = 5
          ..use([S.inlineGroup, S.listBuilder('Title')]),
        n.Text("List View")..of(S.listHeader),
        n.ListView.separated()
          ..total = 100
          ..use([S.inlineGroup, S.listBuilder('Item')]),
      ])
        ..of(S.mainCol),
    );
  }
}

class G11Comparison extends StatelessWidget {
  const G11Comparison({Key? key}) : super(key: key);

  @override
  build(context) {
    return Scaffold(
      body: n.Column([
        // * 1
        Container(
          margin: const EdgeInsets.symmetric(vertical: 6),
          child: TextButton(
            child: Text("Native Flutter"),
            onPressed: () {},
            style: ButtonStyle(
              padding: MaterialStateProperty.all(
                EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              ),
              foregroundColor: MaterialStateProperty.all(Colors.red),
              textStyle: MaterialStateProperty.all(
                TextStyle(
                  fontSize: 24,
                  color: Colors.red,
                ),
              ),
              overlayColor: MaterialStateProperty.all(Colors.red.shade100),
              backgroundColor: MaterialStateProperty.all(Colors.red.shade50),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(99999),
                ),
              ),
            ),
          ),
        ),
        // * 2
        n.Button(Text("2.0 Heaven and Earth"))
          ..onPressed = () {}
          ..useTextStyle((v) => v
            ..color = Colors.amber
            ..fontSize = 24)
          ..useButtonStyle((v) => v
            ..px = 24
            ..py = 12
            ..bg = Colors.amber.shade50
            ..splash = Colors.amber.shade100
            ..rounded)
          ..useParent((v) => v..my = 6),
        // * 3
        n.Button(Text("2.1 Ga1ahad"))
          ..onPressed = () {}
          ..fontSize = 24
          ..useColor(base: Colors.blue, pressed: Colors.red)
          ..bg = Colors.blue.shade50
          ..splash = Colors.blue.shade100
          ..px = 24
          ..py = 12
          ..rounded
          ..my = 6,
        n.Button(n.Row([])
          ..mainBetween
          ..crossCenter)
          ..onPressed = () {}
          ..splash = Colors.grey.shade200
          ..p = 0
          ..color = Colors.black,
        n.GridView.count()
          ..children = [n.Text("1"), n.Text("1"), n.Text("1")]
          ..grid = 3
          ..aspectRatio = 16 / 9
          ..shrinkWrap = true,
        n.TextFormField("2.1 Ga1ahad")
          ..fontSize = 18
          ..color = Colors.grey.shade800
          ..outlined
          ..rounded
          ..bg = Colors.grey.shade200
          ..borderColor = Colors.transparent
          ..neverFloat
          ..p = 16
          ..mt = 20
      ])
        ..mainCenter
        ..crossCenter
        ..useParent((v) => v
          ..w100
          ..px = 16),
    );
  }
}
