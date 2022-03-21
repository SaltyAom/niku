import 'package:flutter/material.dart';

abstract class FocusNodeMacro {
  FocusNode? focusNode;

  useFocus(
    FocusNode Function(FocusNode?) builder, {
    String? debugLabel,
    FocusOnKeyCallback? onKey,
    FocusOnKeyEventCallback? onKeyEvent,
    bool skipTraversal = false,
    bool canRequestFocus = true,
    bool descendantsAreFocusable = true,
  }) {
    useFocusNode(
      builder,
      debugLabel: debugLabel,
      onKey: onKey,
      onKeyEvent: onKeyEvent,
      skipTraversal: skipTraversal,
      canRequestFocus: canRequestFocus,
      descendantsAreFocusable: descendantsAreFocusable,
    );
  }

  useFocusNode(
    FocusNode Function(FocusNode?) builder, {
    String? debugLabel,
    FocusOnKeyCallback? onKey,
    FocusOnKeyEventCallback? onKeyEvent,
    bool skipTraversal = false,
    bool canRequestFocus = true,
    bool descendantsAreFocusable = true,
  }) {
    focusNode = builder(
      FocusNode(
        debugLabel: debugLabel,
        onKey: onKey,
        onKeyEvent: onKeyEvent,
        skipTraversal: skipTraversal,
        canRequestFocus: canRequestFocus,
        descendantsAreFocusable: descendantsAreFocusable,
      ),
    );
  }
}
