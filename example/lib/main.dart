import 'package:flutter/material.dart';

import 'example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  build(context) {
    // return Material3App();

    return MaterialApp(
      title: "Niku",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
        primarySwatch: Colors.blue,
        useMaterial3: true,
        // splashFactory: InkSparkle.splashFactory,
      ),
      home: Yorugao(),
    );
  }
}
