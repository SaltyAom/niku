import 'package:flutter/material.dart';

import 'package:niku/macros/macros.dart';

// ignore: must_be_immutable
class NikuIcon extends StatelessWidget
    with NikuBuildMacro, UseQueryMacro<NikuIcon>, TextAlignMacro {
  IconData? icon;
  double? size;
  Color? color;
  String? semanticLabel;
  TextDirection? textDirection;

  NikuIcon(
    this.icon, {
    Key? key,
    this.size,
    this.color,
    this.semanticLabel,
    this.textDirection,
  }) : super(key: key);

  NikuIcon get copied => NikuIcon(
        icon,
        key: key,
        size: size,
        color: color,
        semanticLabel: semanticLabel,
        textDirection: textDirection,
      );

  Icon get widget => Icon(
        icon,
        size: size,
        color: color,
        semanticLabel: semanticLabel,
        textDirection: textDirection,
      );
}

extension TransformNikuIconData on IconData {
  NikuIcon get asNiku => NikuIcon(this);
}
