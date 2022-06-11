import 'dart:async';

import 'package:flutter/material.dart';
import 'package:niku/namespace.dart' as n;
import 'package:flutter_hooks/flutter_hooks.dart';

class AnimatedHookPage extends HookWidget {
  const AnimatedHookPage({Key? key}) : super(key: key);

  @override
  build(context) {
    final frame = useState(0);

    useEffect(() {
      final timer = Timer.periodic(Duration(milliseconds: 17), (_) {
        frame.value++;
      });

      return () {
        timer.cancel();
      };
    }, []);

    return Scaffold(
      body: n.Column([
        for (int i = 0; i <= 1000; i++)
          "${frame.value}".n
            ..color = Colors.blue
            ..bold
            ..my = 8
            ..mx = 16
            ..n.bg = Colors.blue.shade50
            ..n.rounded = 8
            ..my = 4,
      ])
        ..center
        ..w100
        ..safe
        ..scrollable,
    );
  }
}

class AnimatedStatefulPage extends StatefulWidget {
  const AnimatedStatefulPage({Key? key}) : super(key: key);

  @override
  State<AnimatedStatefulPage> createState() => _AnimatedStatefulPageState();
}

class _AnimatedStatefulPageState extends State<AnimatedStatefulPage> {
  late final Timer timer;
  int frame = 0;

  @override
  void initState() {
    timer = Timer.periodic(Duration(milliseconds: 17), (_) {
      setState(() {
        frame++;
      });
    });

    super.initState();
  }

  @override
  void dispose() {
    timer.cancel();

    super.dispose();
  }

  @override
  build(context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                for (int i = 0; i <= 1000; i++)
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: ColoredBox(
                      color: Colors.blue.shade50,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                        child: Text(
                          "$frame",
                          style: const TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
