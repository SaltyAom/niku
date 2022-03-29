import 'package:flutter/material.dart';

import 'package:niku/niku.dart';
import 'package:niku/namespace.dart' as n;

class Tempestissimo extends StatelessWidget {
  const Tempestissimo({Key? key}) : super(key: key);

  static const bebe =
      "https://images.goodsmile.info/cgm/images/product/20140224/4234/27973/large/a9a3bd5d81789533b036353e3c7e460f.jpg";

  @override
  build(context) {
    return Scaffold(
      body: n.Column([
        // * Primitive Transform
        "Primitive Transform".n
          ..fontSize = 24
          ..bold,
        // * Explict Parent Builder
        n.Image.network(bebe)
          ..cover
          ..rounded = 16
          // ? Using Explict Parent Builder by `n` prefix
          ..n.useShadow(
            color: Colors.black.withOpacity(.4),
            blurRadius: 16,
            offset: Offset(0, 4),
          )
          ..mx = 40
          ..my = 16,
        "Explict Parent Builder".n
          ..fontSize = 16
          ..color = Colors.grey,
        n.RichText(
          n.TextSpan("Rich Text: ")
            ..color = Colors.black
            ..children = [
              n.TextSpan("with "),
              n.TextSpan("underline")..underline,
              n.TextSpan(" and "),
              n.TextSpan("italic")..italic,
            ],
        )..mt = 16,
        n.Box()
          ..key = Key("Box")
          ..wFull
          ..hFull
          ..minH = 25
          ..maxH = 50
          ..maxW = 50
          ..p = 10
          ..px = 10
          ..py = 10
          ..pt = 10
          ..pb = 10
          ..pl = 10
          ..pr = 10
          ..bg = Colors.blue
          ..rounded = 16
          ..mt = 20
          ..mb = 12
      ])
        ..center
        ..fill,
    );
  }
}
