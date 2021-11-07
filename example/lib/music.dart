import 'package:flutter/material.dart';
import 'package:niku/niku.dart';

class Music extends StatelessWidget {
  const Music({Key? key}) : super(key: key);

  @override
  build(context) {
    return Scaffold(
      backgroundColor: Color(0xff3b1b29),
      appBar: AppBar(
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
        Image.network(
          "https://static.wikia.nocookie.net/iowiro/images/c/c5/News_10202019a.jpg/revision/latest/scale-to-width-down/500?cb=20191021035255",
          fit: BoxFit.cover,
        ).niku
          ..aspectRatio = 1
          ..rounded = 8
          ..shadows = [
            BoxShadow(
              color: Colors.black.withOpacity(.25),
              offset: Offset(0, 8),
              blurRadius: 24,
            )
          ],
        NikuRow([
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.thumb_down_alt_outlined,
              color: Colors.grey.shade600,
            ),
          ),
          NikuColumn([
            NikuText("Paradise")
              ..useStyle((v) => v
                ..color = Colors.white
                ..w600
                ..fontSize = 24),
            NikuText("Sound Souler")
              ..useStyle((v) => v
                ..fontSize = 18
                ..color = Colors.grey.shade500),
          ])
            ..gap = 8,
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.thumb_up_alt_outlined,
              color: Colors.grey.shade600,
            ),
          ),
        ])
          ..mainBetween
          ..crossStart,
        Slider(
          value: 0,
          onChanged: (v) {},
          min: 0,
          max: 146,
          thumbColor: Colors.white,
        ),
        NikuRow([
          IconButton(
            onPressed: () {},
            padding: NikuEdgeInsets().value,
            icon: Icon(
              Icons.shuffle_rounded,
              size: 32,
              color: Colors.grey.shade600,
            ),
          ),
          IconButton(
            onPressed: () {},
            padding: NikuEdgeInsets().value,
            icon: Icon(
              Icons.skip_previous_rounded,
              size: 48,
              color: Colors.grey.shade300,
            ),
          ),
          IconButton(
            onPressed: () {},
            padding: NikuEdgeInsets().value,
            icon: Icon(
              Icons.play_arrow_rounded,
              size: 48,
              color: Colors.grey.shade300,
            ),
          ),
          IconButton(
            onPressed: () {},
            padding: NikuEdgeInsets().value,
            icon: Icon(
              Icons.skip_next_rounded,
              size: 48,
              color: Colors.grey.shade300,
            ),
          ),
          IconButton(
            onPressed: () {},
            padding: NikuEdgeInsets().value,
            icon: Icon(
              Icons.repeat_rounded,
              size: 32,
              color: Colors.grey.shade600,
            ),
          ),
        ])
          ..spaceBetween
          ..crossCenter,
      ])
        ..mainCenter
        ..gap = 24
        ..useParent((v) => v..px = 32),
    ).niku
      ..theme = ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xff3b1b29),
          shadowColor: Colors.transparent,
        ),
      );
  }
}
