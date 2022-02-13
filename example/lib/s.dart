import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Scaffold(
          body: Home(),
        ),
      );
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text('ウエルカム') // Vertical text
            .textColor(Color(0xff44517F))
            .fontSize(28)
            .bold()
            .width(20),
        Styled.widget() // red circle
            .backgroundColor(Color(0xffFF6160))
            .constrained(width: 200, height: 200)
            .clipOval()
            .gestures(
              onTap: () => showBottomSheet(
                context: context,
                backgroundColor: Colors.transparent,
                builder: (BuildContext context) => BottomSheet(),
              ),
            ),
      ],
    ).padding(vertical: 80).alignment(Alignment.topCenter);
  }
}

class BottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text('サインアップ') // button
            .textColor(Colors.white)
            .fontSize(24)
            .padding(vertical: 15, horizontal: 30)
            .decorated(
              color: Color(0xff41508D),
              borderRadius: BorderRadius.circular(35),
            )
            .gestures(onTap: () => Navigator.pop(context)),
        Text('サインイン') // bottom description
            .fontSize(18)
            .textColor(Color(0xff455178))
            .padding(vertical: 30),
      ],
    )
        .constrained(
          height: 280,
          width: MediaQuery.of(context).size.width,
        )
        .padding(all: 10)
        .backgroundBlur(20)
        .clipRect();
  }
}
