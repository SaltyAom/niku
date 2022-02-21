import 'package:flutter/material.dart';

import 'package:niku/v1/niku.dart';
import 'package:niku/namespace.dart' as n;

class Compat extends StatelessWidget {
  const Compat({Key? key}) : super(key: key);

  @override
  build(context) {
    return Scaffold(
        body: NikuColumn([
      NikuText("Niku Compat").w500().color(Colors.blue).fontSize(24),
      n.Text("With Niku v2")
        ..color = Colors.grey.shade500
        ..fontSize = 16
    ]).mainCenter().crossCenter().niku().fullWidth());
  }
}
