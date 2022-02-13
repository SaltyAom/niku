import 'dart:ui';

import 'package:flutter/material.dart';

class JapanStyleNative extends StatelessWidget {
  const JapanStyleNative({Key? key}) : super(key: key);

  @override
  build(context) {
    return Scaffold(
      body: const Home(),
    );
  }
}

// Native Flutter
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  build(context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 80),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              width: 20,
              child: Text(
                'ウエルカム',
                style: const TextStyle(
                  color: const Color(0xff44517F),
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            GestureDetector(
              onTap: () => showBottomSheet(
                context: context,
                backgroundColor: Colors.transparent,
                builder: (context) => const BottomSheet(),
              ),
              child: ClipOval(
                child: ColoredBox(
                  color: const Color(0xffFF6160),
                  child: SizedBox(
                    width: 200,
                    height: 200,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Native Flutter
class BottomSheet extends StatelessWidget {
  const BottomSheet({Key? key}) : super(key: key);

  @override
  build(context) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 20,
          sigmaY: 20,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SizedBox(
            width: double.infinity,
            height: 280,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(35),
                    ),
                    child: ColoredBox(
                      color: const Color(0xff41508D),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 30,
                        ),
                        child: Text(
                          'サイナップ',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: Text(
                    'サインイン',
                    style: const TextStyle(
                      fontSize: 18,
                      color: const Color(0xff455178),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
