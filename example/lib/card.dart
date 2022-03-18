import 'package:flutter/material.dart';

import 'package:niku/namespace.dart' as n;

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  build(context) {
    return Scaffold(
      body: Icon(Icons.home_outlined, color: Colors.white).niku
        ..p = 10
        ..bg = Color(0xff7AC1E7)
        ..rounded
        ..p = 15
        ..bg = Color(0xffE8F2F7)
        ..rounded
        ..p = 20
        ..useChild(
          (child) => Card(
            elevation: 10,
            child: child,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        )
        ..center,
    );
  }
}
