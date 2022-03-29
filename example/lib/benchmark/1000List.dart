import 'package:flutter/material.dart';

import 'package:niku/namespace.dart' as n;

const total = 10000;

/// For benchmark purpose only.
/// Do not use ListView.children for long list, instead use ListView.builder.
class ThousandList extends StatelessWidget {
  const ThousandList({Key? key}) : super(key: key);

  @override
  build(context) {
    // return Scaffold(
    //   body: Center(
    //     child: "Thousand List".n..h4 = context,
    //   ),
    // );

    return Scaffold(
      body: n.Column([
        n.ListView.children([
          for (int i = 0; i < total; i++)
            n.ListTile(
              title: n.Text('$i'),
            )..useParent((v) => v
              ..key = Key('$i')
              ..wFull
              ..minH = 25
              ..maxH = 50
              ..p = 10
              ..px = 10
              ..py = 10
              ..pt = 10
              ..pb = 10
              ..pl = 10
              ..pr = 10
              ..bg = Colors.blue
              ..rounded = 4
              ..mt = 20
              ..mb = 12),
        ])
          ..shrinkWrap = true
          ..neverScroll
      ])
        ..scrollable,
    );
  }
}
