import 'package:flutter/material.dart';

import 'package:niku/niku.dart';
import 'package:niku/namespace.dart' as n;

class S {
  static final inline = n.ListView()
    ..shrinkWrap = true
    ..neverScroll;
}

class G11ListView extends StatelessWidget {
  const G11ListView();

  @override
  build(context) {
    return Scaffold(
      body: n.Column([
        n.Column([
          n.Text("Niku 2.1")
            ..fontSize = 36
            ..w500,
          n.Text("Featuring List View")
            ..color = Colors.blue
            ..fontSize = 14,
        ])
          ..center
          ..w100
          ..gap = 8
          ..my = 48,
        n.Text("List View")
          ..color = Colors.grey
          ..ml = 16,
        n.ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              title: n.Text('Item $index'),
            );
          },
        )
          ..apply = S.inline
          ..total = 100
      ])
        ..crossStart
        ..gap = 8
        ..w100
        ..scrollable
        ..useParent((v) => v..safeTop),
    );
  }
}

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

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
