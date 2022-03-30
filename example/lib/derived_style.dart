import 'package:flutter/material.dart';

import 'package:niku/namespace.dart' as n;

class DerivedStyles {
  static final title = n.Text("")
    ..fontSize = 24
    ..color = Colors.blue
    ..useParent((v) => v
      ..p = 12
      ..bg = Colors.blue.shade50);

  static final rounded = n.Text("")
    ..w500
    ..useParent((v) => v
      ..bg = Colors.blue.shade50
      ..rounded = 8);

  static final roundedTitle = DerivedStyles.title.copied..apply = rounded;

  static final centerCol = n.Column([])
    ..center
    ..w100;
}

class DerivedStylesPage extends StatelessWidget {
  const DerivedStylesPage();

  @override
  build(context) {
    return Scaffold(
      body: n.Column([
        n.Text("Hello Niku")..apply = DerivedStyles.roundedTitle,
      ])
        ..apply = DerivedStyles.centerCol,
    );
  }
}
