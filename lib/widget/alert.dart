// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'base.dart';
import 'core.dart';
import 'textField.dart';

class NikuAlertDialog extends NikuCore {
  final Key? key;
  final Widget title;
  final Widget? content;

  EdgeInsets contentPadding = const EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 24.0);
  List<Widget>? actions;
  EdgeInsets actionsPadding = EdgeInsets.zero;
  MainAxisAlignment? mainAxisAlignment;
  VerticalDirection? actionsOverflowDirection;

  NikuAlertDialog(this.title, {this.key, this.content});

  build(context) => internalBuild(AlertDialog());
}
