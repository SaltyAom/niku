import 'package:flutter/material.dart';

// Use for parent builder to get latest rounded value for inheritance:
class NikuRounded extends StatelessWidget {
  const NikuRounded({
    Key? key,
    required this.child,
    required this.rounded,
  }) : super(key: key);

  final Widget child;
  final double rounded;

  build(context) => ClipRRect(
        borderRadius: BorderRadius.all(
          Radius.circular(rounded),
        ),
        child: child,
      );
}
