import 'package:flutter/material.dart';

import '../objects/objects.dart';
import '../macros/macros.dart';

enum NikuButtonType { Text, Elevated, Outlined }

// ignore: must_be_immutable
class NikuButton extends StatelessWidget with ClipMacro {
  Widget child;

  Widget? icon;
  Widget? label;

  NikuButtonType? type = NikuButtonType.Text;
  VoidCallback? onPressed;
  VoidCallback? onLongPress;
  NikuButtonStyle? style;
  FocusNode? focusNode;
  bool? autofocus;
  Clip? clipBehavior;

  NikuButton(
    this.child, {
    Key? key,
    this.type,
    this.onPressed,
    this.onLongPress,
    this.style,
    this.focusNode,
    this.clipBehavior,

    // For icon factory
    this.icon,
    this.label,
  }) : super(key: key);

  factory NikuButton.elevated(
    Widget child, {
    Key? key,
    VoidCallback? onPressed,
    VoidCallback? onLongPress,
    NikuButtonStyle? style,
    FocusNode? focusNode,
    bool? autofocus,
    Clip? clipBehavior,
  }) =>
      NikuButton(
        child,
        type: NikuButtonType.Elevated,
        onPressed: onPressed,
        onLongPress: onLongPress,
        style: style,
        focusNode: focusNode,
        clipBehavior: clipBehavior,
        key: key,
      );

  factory NikuButton.outlined(
    Widget child, {
    Key? key,
    VoidCallback? onPressed,
    VoidCallback? onLongPress,
    NikuButtonStyle? style,
    FocusNode? focusNode,
    bool? autofocus,
    Clip? clipBehavior,
  }) =>
      NikuButton(
        child,
        type: NikuButtonType.Outlined,
        onPressed: onPressed,
        onLongPress: onLongPress,
        style: style,
        focusNode: focusNode,
        clipBehavior: clipBehavior,
        key: key,
      );

  factory NikuButton.icon(
    Widget label,
    Widget icon, {
    VoidCallback? onPressed,
    VoidCallback? onLongPress,
    NikuButtonStyle? style,
    FocusNode? focusNode,
    bool? autofocus,
    Clip? clipBehavior,
  }) =>
      NikuButton(
        SizedBox.shrink(),
        onPressed: onPressed,
        onLongPress: onLongPress,
        style: style,
        focusNode: focusNode,
        clipBehavior: clipBehavior,
        label: label,
        icon: icon,
      );

  factory NikuButton.elevatedIcon(
    Widget label,
    Widget icon, {
    VoidCallback? onPressed,
    VoidCallback? onLongPress,
    NikuButtonStyle? style,
    FocusNode? focusNode,
    bool? autofocus,
    Clip? clipBehavior,
  }) =>
      NikuButton(
        SizedBox.shrink(),
        type: NikuButtonType.Elevated,
        onPressed: onPressed,
        onLongPress: onLongPress,
        style: style,
        focusNode: focusNode,
        clipBehavior: clipBehavior,
        label: label,
        icon: icon,
      );

  factory NikuButton.outlinedIcon(
    Widget label,
    Widget icon, {
    VoidCallback? onPressed,
    VoidCallback? onLongPress,
    NikuButtonStyle? style,
    FocusNode? focusNode,
    bool? autofocus,
    Clip? clipBehavior,
  }) =>
      NikuButton(
        SizedBox.shrink(),
        type: NikuButtonType.Outlined,
        onPressed: onPressed,
        onLongPress: onLongPress,
        style: style,
        focusNode: focusNode,
        clipBehavior: clipBehavior,
        label: label,
        icon: icon,
      );

  @override
  build(context) {
    if (type == NikuButtonType.Elevated)
      return (label != null && icon != null)
          ? ElevatedButton.icon(
              label: label!,
              icon: icon!,
              onPressed: onPressed,
              onLongPress: onLongPress,
              style: style?.value,
              focusNode: focusNode,
              autofocus: autofocus ?? false,
              clipBehavior: clipBehavior ?? Clip.none,
            )
          : ElevatedButton(
              child: child,
              onPressed: onPressed,
              onLongPress: onLongPress,
              style: style?.value,
              focusNode: focusNode,
              autofocus: autofocus ?? false,
              clipBehavior: clipBehavior ?? Clip.none,
            );

    if (type == NikuButtonType.Outlined)
      return (label != null && icon != null)
          ? OutlinedButton.icon(
              label: label!,
              icon: icon!,
              onPressed: onPressed,
              onLongPress: onLongPress,
              style: style?.value,
              focusNode: focusNode,
              autofocus: autofocus ?? false,
              clipBehavior: clipBehavior ?? Clip.none,
            )
          : OutlinedButton(
              child: child,
              onPressed: onPressed,
              onLongPress: onLongPress,
              style: style?.value,
              focusNode: focusNode,
              autofocus: autofocus ?? false,
              clipBehavior: clipBehavior ?? Clip.none,
            );

    return (label != null && icon != null)
        ? TextButton.icon(
            label: label!,
            icon: icon!,
            onPressed: onPressed,
            onLongPress: onLongPress,
            style: style?.value,
            focusNode: focusNode,
            autofocus: autofocus ?? false,
            clipBehavior: clipBehavior ?? Clip.none,
          )
        : TextButton(
            child: child,
            onPressed: onPressed,
            onLongPress: onLongPress,
            style: style?.value,
            focusNode: focusNode,
            autofocus: autofocus ?? false,
            clipBehavior: clipBehavior ?? Clip.none,
          );
  }
}

extension TransformNikuTextButton on TextButton {
  NikuButton get niku => NikuButton(
        child ?? SizedBox.shrink(),
        key: key,
        onPressed: onPressed,
        onLongPress: onLongPress,
        style: style?.niku,
        focusNode: focusNode,
        clipBehavior: clipBehavior,
      );
}

extension TransformNikuElevatedButton on ElevatedButton {
  NikuButton get niku => NikuButton.elevated(
        child ?? SizedBox.shrink(),
        key: key,
        onPressed: onPressed,
        onLongPress: onLongPress,
        style: style?.niku,
        focusNode: focusNode,
        clipBehavior: clipBehavior,
      );
}

extension TransformNikuOutlinedButton on OutlinedButton {
  NikuButton get niku => NikuButton.outlined(
        child ?? SizedBox.shrink(),
        key: key,
        onPressed: onPressed,
        onLongPress: onLongPress,
        style: style?.niku,
        focusNode: focusNode,
        clipBehavior: clipBehavior,
      );
}
