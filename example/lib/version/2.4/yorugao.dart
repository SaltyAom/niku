import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:niku/niku.dart';
import 'package:niku/namespace.dart' as n;

class Yorugao extends HookWidget {
  const Yorugao({Key? key}) : super(key: key);

  @override
  build(context) {
    final listTile = useState(false);

    return Scaffold(
      body: n.Column([
        n.Row([
          n.Button.tonal("Tonal Button".n)..onPressed = () {},
          n.Button.filled("Filled Button".n)..onPressed = () {},
        ])
          ..center
          ..gap = 8,
        n.Row([
          n.IconButton.outlined(Icons.nightlight)..onPressed = () {},
          n.IconButton.tonal(Icons.nightlight)..onPressed = () {},
          n.IconButton.filled(Icons.nightlight)..onPressed = () {},
        ])
          ..center
          ..gap = 8,
        n.ActionChip.icon(Icons.question_answer, "Hello".n)
          ..onPressed = () {}
          ..fontSize = 16
          ..n.badge = "",
        n.SwitchListTile(listTile.value)
          ..title = "Switch List Tile".n
          ..useThumbIcon(
            base: Icon(Icons.sunny),
            selected: Icon(Icons.nightlight),
          )
          ..onChanged = (value) {
            listTile.value = value;
          },
      ])
        ..gap = 8
        ..center
        ..fullSize
        ..safeArea,
    );
  }
}
