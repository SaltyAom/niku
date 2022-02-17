import 'package:flutter/material.dart';

import 'music.dart';
import 'general.dart';
import 'japan.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  build(context) {
    return MaterialApp(
      title: "Niku",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      darkTheme: ThemeData.dark(),
      home: Test(),
      // home: const Music(
      //   cover:
      //       "https://static.wikia.nocookie.net/iowiro/images/c/c5/News_10202019a.jpg",
      // ),
    );
  }
}
