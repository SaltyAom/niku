// Equivalent to styled widget's Japan Style example
// @see https://github.com/ReinBentdal/styled_widget/wiki/japan-style-example
import 'package:flutter/material.dart';

import 'package:niku/niku.dart';
import 'package:niku/namespace.dart' as n;

class JapanStyle extends StatelessWidget {
  const JapanStyle({Key? key}) : super(key: key);

  @override
  build(context) {
    return Scaffold(
      body: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  build(context) {
    return n.Column([
      n.Text('ウエルカム')
        ..color = Color(0xff44517F)
        ..fontSize = 28
        ..bold
        ..useParent((v) => v..w = 20),
      n.Box()
        ..size = [200, 200]
        ..bg = Color(0xffFF6160)
        ..rounded
        ..useGesture(
          tap: () => showBottomSheet(
            context: context,
            backgroundColor: Colors.transparent,
            builder: (context) => BottomSheet(),
          ),
        ),
    ])
      ..mainEvenly
      ..crossCenter
      ..useParent((v) => v
        ..py = 80
        ..topCenter);
  }
}

class BottomSheet extends StatelessWidget {
  const BottomSheet({Key? key}) : super(key: key);

  @override
  build(context) {
    return n.Column([
      n.Text('サインアップ') // button
        ..color = Colors.white
        ..fontSize = 24
        ..useParent((v) => v
          ..px = 30
          ..py = 15
          ..bg = Color(0xff41508D)
          ..rounded = 35
          ..useGesture(tap: () => Navigator.pop(context))),
      n.Text('サインイン') // bottom description
        ..fontSize = 18
        ..color = Color(0xff455178)
        ..useParent((v) => v..p = 30)
    ])
      ..mainEnd
      ..crossCenter
      ..useParent((v) => v
        ..h = 280
        ..fullWidth
        ..p = 10
        ..bgBlur = 20
        ..rect);
  }
}
