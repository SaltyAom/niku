import 'package:flutter/material.dart';

import 'package:niku/namespace.dart' as n;

import 'package:flutter_hooks/flutter_hooks.dart';

class Styles {
  static final subIcon = n.IconButton(null)
    ..onPressed = () {}
    ..iconSize = 32
    ..color = Colors.grey.shade600
    ..highlightColor = Colors.white.withOpacity(.0875)
    ..splashColor = Colors.transparent;

  static final icon = subIcon.copied
    ..apply = subIcon
    ..iconSize = 48
    ..color = Colors.grey.shade100;

  static final sideIcon = subIcon.copied
    ..apply = subIcon
    ..iconSize = 24;
}

class Music extends HookWidget {
  final String cover;

  const Music({
    Key? key,
    this.cover =
        "https://static.wikia.nocookie.net/iowiro/images/c/c5/News_10202019a.jpg",
  }) : super(key: key);

  build(context) {
    final time = useState<double>(73);

    return Scaffold(
      backgroundColor: Color(0xff3b1b29),
      appBar: AppBar(
        backgroundColor: Color(0xff3b1b29),
        shadowColor: Colors.transparent,
        leading: n.IconButton(
          Icons.keyboard_arrow_down_rounded,
          onPressed: () {},
        ),
        actions: [
          n.IconButton(Icons.more_vert_rounded)..onPressed = () {},
        ],
      ),
      body: n.Column([
        n.Image.network(cover)
          ..cover
          ..circleProgress(
            (progress) => CircularProgressIndicator(
              value: progress,
              color: Colors.white,
            ),
          )
          ..useParent((v) => v
            ..aspectRatio = 1
            ..rounded = 8
            ..shadows = [
              BoxShadow(
                color: Colors.black.withOpacity(.25),
                offset: Offset(0, 8),
                blurRadius: 24,
              )
            ]
            ..mb = 36
            ..freezed),
        //
        n.Row([
          n.IconButton(Icons.thumb_down_alt_outlined)..apply = Styles.sideIcon,
          n.Column([
            n.Text("Paradise")
              ..color = Colors.white
              ..w600
              ..fontSize = 24,
            n.Text("Sound Souler")
              ..fontSize = 18
              ..color = Colors.grey.shade500,
          ])
            ..gap = 8,
          n.IconButton(Icons.thumb_up_alt_outlined)..apply = Styles.sideIcon,
        ])
          ..mainBetween
          ..crossStart
          ..freezed,
        //
        n.Slider(time.value)
          ..onChanged = (v) {
            time.value = v;
          }
          ..min = 0
          ..max = 146
          ..thumbColor = Colors.white
          ..overlayColor = Colors.white.withOpacity(.125)
          ..activeTrackColor = Colors.white.withOpacity(.75)
          ..inactiveTrackColor = Colors.white.withOpacity(.25)
          ..trackHeight = 2
          ..thumbShape = RoundSliderThumbShape(enabledThumbRadius: 6)
          ..my = 8,
        n.Row([
          n.IconButton(Icons.shuffle_rounded)..apply = Styles.subIcon,
          n.IconButton(Icons.skip_previous_rounded)..apply = Styles.icon,
          n.IconButton(Icons.play_arrow_rounded)..apply = Styles.icon,
          n.IconButton(Icons.skip_next_rounded)..apply = Styles.icon,
          n.IconButton(Icons.repeat_rounded)..apply = Styles.subIcon,
        ])
          ..spaceBetween
          ..crossCenter
          ..freezed,
      ])
        ..mainCenter
        ..px = 32
        ..safeArea,
    );
  }
}
