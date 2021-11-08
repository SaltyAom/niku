import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:niku/niku.dart';

class Style {
  static final subIcon = NikuIconButton(null)
    ..onPressed = () {}
    ..iconSize = 32
    ..color = Colors.grey.shade600
    ..highlightColor = Colors.white.withOpacity(.0875)
    ..splashColor = Colors.transparent;

  static final icon = subIcon.apply = subIcon.copy
    ..iconSize = 48
    ..color = Colors.grey.shade100;

  static final sideIcon = subIcon.apply = subIcon.copy..iconSize = 24;
}

class Music extends HookWidget {
  const Music({Key? key}) : super(key: key);

  build(context) {
    final time = useState<double>(73);

    return Scaffold(
      backgroundColor: Color(0xff3b1b29),
      appBar: AppBar(
        backgroundColor: Color(0xff3b1b29),
        shadowColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.keyboard_arrow_down_rounded),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert_rounded),
            onPressed: () {},
          ),
        ],
      ),
      body: NikuColumn([
        NikuImage.network(
          "https://static.wikia.nocookie.net/iowiro/images/c/c5/News_10202019a.jpg/revision/latest/scale-to-width-down/500?cb=20191021035255",
        )
          ..circleProgress = Colors.white
          ..cover
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
            ..mb = 36),
        //
        NikuRow([
          NikuIconButton(Icons.thumb_down_alt_outlined)..apply = Style.sideIcon,
          NikuColumn([
            NikuText("Paradise")
              ..color = Colors.white
              ..w600
              ..fontSize = 24,
            NikuText("Sound Souler")
              ..fontSize = 18
              ..color = Colors.grey.shade500,
          ])
            ..gap = 8,
          NikuIconButton(Icons.thumb_up_alt_outlined)..apply = Style.sideIcon,
        ])
          ..mainBetween
          ..crossStart,
        //
        NikuSlider(time.value)
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
          ..useParent((v) => v..my = 8),
        NikuRow([
          NikuIconButton(Icons.shuffle_rounded)..apply = Style.subIcon,
          NikuIconButton(Icons.skip_previous_rounded)..apply = Style.icon,
          NikuIconButton(Icons.play_arrow_rounded)..apply = Style.icon,
          NikuIconButton(Icons.skip_next_rounded)..apply = Style.icon,
          NikuIconButton(Icons.repeat_rounded)..apply = Style.subIcon,
        ])
          ..spaceBetween
          ..crossCenter,
      ])
        ..mainCenter
        ..useParent((v) => v
          ..px = 32
          ..safeArea),
    );
  }
}
