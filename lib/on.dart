import 'package:flutter/material.dart';

import 'package:collection/collection.dart';

class NikuOn extends StatefulWidget {
  static Widget empty() => SizedBox.shrink();

  final Widget Function() _buildWidget;
  final List<dynamic> _dependencies;

  const NikuOn([
    this._buildWidget = empty,
    this._dependencies = const [],
  ]);

  @override
  _NikuOnState createState() => _NikuOnState();
}

class _NikuOnState extends State<NikuOn> {
  Widget? oldWidget;
  List<dynamic> previousDependencies = [];

  double _prevWidth = 0;

  static final Function eq = const ListEquality().equals;

  @override
  Widget build(context) {
    final width = MediaQuery.of(context).size.width;

    if (_prevWidth != width) {
      oldWidget = widget._buildWidget();
      _prevWidth = width;

      return oldWidget!;
    }

    if (oldWidget == null) {
      oldWidget = widget._buildWidget();

      return oldWidget!;
    }

    if (super.widget._dependencies.isEmpty) return oldWidget!;

    if (!eq(previousDependencies, super.widget._dependencies)) {
      previousDependencies = super.widget._dependencies;
      oldWidget = widget._buildWidget();

      return oldWidget!;
    }

    return oldWidget!;
  }
}
