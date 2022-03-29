import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../macros/macros.dart';
import 'niku.dart';

// ignore: must_be_immutable
class NikuDismissible extends StatelessWidget
    with NikuBuildMacro<NikuDismissible>, DismissDirectionMacro {
  NikuDismissible(
    this.key, {
    this.child,
    this.background,
    this.secondaryBackground,
    this.confirmDismiss,
    this.onResize,
    this.onUpdate,
    this.onDismissed,
    this.direction,
    this.resizeDuration,
    this.dismissThresholds,
    this.movementDuration,
    this.crossAxisEndOffset,
    this.dragStartBehavior,
    this.behavior,
  }) : super(key: key);

  Key key;
  Widget? child;
  Widget? background;
  Widget? secondaryBackground;
  Future<bool?> Function(DismissDirection)? confirmDismiss;
  void Function()? onResize;
  void Function(DismissUpdateDetails)? onUpdate;
  void Function(DismissDirection)? onDismissed;
  DismissDirection? direction;
  Duration? resizeDuration;
  Map<DismissDirection, double>? dismissThresholds;
  Duration? movementDuration;
  double? crossAxisEndOffset;
  DragStartBehavior? dragStartBehavior;
  HitTestBehavior? behavior;

  void useChild(Widget Function(Niku) callback) {
    child = callback(Niku());
  }

  void useBackground(Widget Function(Niku) callback) {
    background = callback(Niku());
  }

  void useBg(Widget Function(Niku) callback) {
    background = callback(Niku());
  }

  void useSecondaryBackground(Widget Function(Niku) callback) {
    secondaryBackground = callback(Niku());
  }

  void useSecondBg(Widget Function(Niku) callback) {
    secondaryBackground = callback(Niku());
  }

  NikuDismissible get self => this;

  set apply(NikuDismissible? v) {
    if (v == null) return;

    background = v.background ?? background;
    secondaryBackground = v.secondaryBackground ?? secondaryBackground;
    confirmDismiss = v.confirmDismiss ?? confirmDismiss;
    onResize = v.onResize ?? onResize;
    onUpdate = v.onUpdate ?? onUpdate;
    onDismissed = v.onDismissed ?? onDismissed;
    direction = v.direction ?? direction;
    resizeDuration = v.resizeDuration ?? resizeDuration;
    dismissThresholds = v.dismissThresholds ?? dismissThresholds;
    movementDuration = v.movementDuration ?? movementDuration;
    crossAxisEndOffset = v.crossAxisEndOffset ?? crossAxisEndOffset;
    dragStartBehavior = v.dragStartBehavior ?? dragStartBehavior;
    behavior = v.behavior ?? behavior;
  }

  Dismissible get widget => Dismissible(
        key: key,
        child: child ?? SizedBox.shrink(),
        background: background,
        secondaryBackground: secondaryBackground,
        confirmDismiss: confirmDismiss,
        onResize: onResize,
        onUpdate: onUpdate,
        onDismissed: onDismissed,
        direction: direction ?? DismissDirection.horizontal,
        resizeDuration: resizeDuration,
        dismissThresholds: dismissThresholds ?? <DismissDirection, double>{},
        movementDuration: movementDuration ?? const Duration(milliseconds: 200),
        crossAxisEndOffset: crossAxisEndOffset ?? 0.0,
        dragStartBehavior: dragStartBehavior ?? DragStartBehavior.start,
        behavior: behavior ?? HitTestBehavior.opaque,
      );
}
