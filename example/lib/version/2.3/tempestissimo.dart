import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:niku/niku.dart';
import 'package:niku/namespace.dart' as n;

class Tempestissimo extends HookWidget {
  const Tempestissimo({Key? key}) : super(key: key);

  static const bebe =
      "https://images.goodsmile.info/cgm/images/product/20140224/4234/27973/large/a9a3bd5d81789533b036353e3c7e460f.jpg";

  @override
  build(context) {
    final options = ["Option 1", "Option 2", "Option 3"];
    final option = useState(options[0]);

    final page = useState(0);

    return Scaffold(
      appBar: AppBar(
        title: "Hi".n,
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          page.value = index;
        },
        selectedIndex: page.value,
        backgroundColor: Colors.blue.shade50,
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          NavigationDestination(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
      body: n.Column([
        n.Image.network(bebe)
          ..key = Key("cover")
          ..cover
          ..aspect = 4 / 5
          ..n.bg = Colors.grey.shade100
          ..rounded = 16
          // ? Using Explict Parent Builder by `n` prefix
          ..n.useShadow(
            color: Colors.black.withOpacity(.25),
            blurRadius: 16,
            offset: Offset(0, 4),
          )
          ..mx = 40
          ..my = 16,
        // Testing Tempest Engine
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
          ..splash = Colors.white.withOpacity(.25)
          ..highlight = Colors.transparent
          ..hover = Colors.blue.shade100
          ..focus = Colors.blue.shade100
          ..material
          ..bg = Colors.blue
          ..rounded = 16
          ..shadow = BoxShadow(
            color: Colors.black.withOpacity(.125),
            blurRadius: 8,
            offset: Offset(0, 8),
          )
          ..mt = 20
          ..mb = 12,
        n.DropdownButtonFormField<String>.label("Hi")
          ..p = 0
          ..value = option.value
          ..labelText = "Hi"
          ..itemsValue = options
          ..onChanged = (v) {
            if (v != null) option.value = v;
          }
          ..elevation = 1
          ..wFactor = .9
          ..wMax = 450,
        "Rich Text: ".n.rich
          ..useSpan((w) => w
            ..text = "Span "
            ..color = Colors.black
            ..children = [
              "with ".n.span,
              "underline".n.span..underline,
              " and ".n.span,
              "italic".n.span..italic,
            ])
      ])
        ..key = Key("Column")
        ..center
        ..w100
        ..safe
        ..scrollable
        ..h100,
    );

    // return Scaffold(
    //   body: n.Column([
    //     // * Primitive Transform
    //     "Primitive Transform".n
    //       ..fontSize = 24
    //       ..bold,
    //     // * Explict Parent Builder
    //     n.Image.network(bebe)
    //       ..cover
    //       ..rounded = 16
    //       // ? Using Explict Parent Builder by `n` prefix
    //       ..n.shadow = BoxShadow(
    //         color: Colors.black.withOpacity(.4),
    //         blurRadius: 16,
    //         offset: Offset(0, 4),
    //       )
    //       ..mx = 40
    //       ..my = 16,
    //     "Explict Parent Builder".n
    //       ..fontSize = 16
    //       ..color = Colors.grey,
    //     n.RichText(
    //       n.TextSpan("Rich Text: ")
    //         ..color = Colors.black
    //         ..children = [
    //           n.TextSpan("with "),
    //           n.TextSpan("underline")..underline,
    //           n.TextSpan(" and "),
    //           n.TextSpan("italic")..italic,
    //         ],
    //     )..mt = 16,
    //     n.Box()
    //       ..key = Key("Box")
    //       ..wFull
    //       ..hFull
    //       ..minH = 25
    //       ..maxH = 50
    //       ..maxW = 50
    //       ..p = 10
    //       ..px = 10
    //       ..py = 10
    //       ..pt = 10
    //       ..pb = 10
    //       ..pl = 10
    //       ..pr = 10
    //       ..bg = Colors.blue
    //       ..rounded = 16
    //       ..mt = 20
    //       ..mb = 12
    //   ])
    //     ..center
    //     ..fill,
    // );
  }
}
