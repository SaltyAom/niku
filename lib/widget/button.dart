import 'package:flutter/material.dart';

import '../objects/objects.dart';
import '../macros/macros.dart';

enum NikuButtonType { Text, Elevated, Outlined }

// ignore: must_be_immutable
class NikuButton extends StatelessWidget with ApplyButtonStyleMacro, ClipMacro {
  Widget child;

  Widget? icon;
  Widget? label;

  NikuButtonType? type = NikuButtonType.Text;
  NikuButtonStyle? style;
  VoidCallback? onPressed;
  VoidCallback? onLongPress;
  FocusNode? focusNode;
  bool? autofocus;
  Clip? clipBehavior;

  // Custom Properties
  bool enable = true;

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

    // Custom
    this.enable = true,
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
    bool enable = true,
  }) =>
      NikuButton(
        child,
        type: NikuButtonType.Elevated,
        onPressed: onPressed,
        onLongPress: onLongPress,
        style: style,
        focusNode: focusNode,
        clipBehavior: clipBehavior,
        enable: enable,
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
    bool enable = true,
  }) =>
      NikuButton(
        child,
        type: NikuButtonType.Outlined,
        onPressed: onPressed,
        onLongPress: onLongPress,
        style: style,
        focusNode: focusNode,
        clipBehavior: clipBehavior,
        enable: enable,
        key: key,
      );

  factory NikuButton.icon(
    Widget label,
    Widget icon, {
    Key? key,
    VoidCallback? onPressed,
    VoidCallback? onLongPress,
    NikuButtonStyle? style,
    FocusNode? focusNode,
    bool? autofocus,
    Clip? clipBehavior,
    bool enable = true,
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
        enable: enable,
        key: key,
      );

  factory NikuButton.elevatedIcon(
    Widget label,
    Widget icon, {
    Key? key,
    VoidCallback? onPressed,
    VoidCallback? onLongPress,
    NikuButtonStyle? style,
    FocusNode? focusNode,
    bool? autofocus,
    Clip? clipBehavior,
    bool enable = true,
  }) =>
      NikuButton(
        SizedBox.shrink(),
        key: key,
        type: NikuButtonType.Elevated,
        onPressed: onPressed,
        onLongPress: onLongPress,
        style: style,
        focusNode: focusNode,
        clipBehavior: clipBehavior,
        label: label,
        icon: icon,
        enable: enable,
      );

  factory NikuButton.outlinedIcon(
    Widget label,
    Widget icon, {
    Key? key,
    VoidCallback? onPressed,
    VoidCallback? onLongPress,
    NikuButtonStyle? style,
    FocusNode? focusNode,
    bool? autofocus,
    Clip? clipBehavior,
    bool enable = true,
  }) =>
      NikuButton(
        SizedBox.shrink(),
        key: key,
        type: NikuButtonType.Outlined,
        onPressed: onPressed,
        onLongPress: onLongPress,
        style: style,
        focusNode: focusNode,
        clipBehavior: clipBehavior,
        label: label,
        icon: icon,
        enable: enable,
      );

  set apply(NikuButton? v) {
    if (v == null) return;

    if (style == null && v.style != null) style = NikuButtonStyle();

    type = v.type ?? type;
    onPressed = v.onPressed ?? onPressed;
    onLongPress = v.onLongPress ?? onLongPress;
    style?.apply = v.style;
    focusNode = v.focusNode ?? focusNode;
    clipBehavior = v.clipBehavior ?? clipBehavior;
    icon = v.icon ?? icon;
    label = v.label ?? label;
    enable = v.enable;
  }

  @override
  build(context) {
    if (type == NikuButtonType.Elevated)
      return (label != null && icon != null)
          ? ElevatedButton.icon(
              label: label!,
              icon: icon!,
              onPressed: enable ? onPressed : null,
              onLongPress: enable ? onLongPress : null,
              style: style?.value,
              focusNode: focusNode,
              autofocus: autofocus ?? false,
              clipBehavior: clipBehavior ?? Clip.none,
            )
          : ElevatedButton(
              child: child,
              onPressed: enable ? onPressed : null,
              onLongPress: enable ? onLongPress : null,
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
              onPressed: enable ? onPressed : null,
              onLongPress: enable ? onLongPress : null,
              style: style?.value,
              focusNode: focusNode,
              autofocus: autofocus ?? false,
              clipBehavior: clipBehavior ?? Clip.none,
            )
          : OutlinedButton(
              child: child,
              onPressed: enable ? onPressed : null,
              onLongPress: enable ? onLongPress : null,
              style: style?.value,
              focusNode: focusNode,
              autofocus: autofocus ?? false,
              clipBehavior: clipBehavior ?? Clip.none,
            );

    return (label != null && icon != null)
        ? TextButton.icon(
            label: label!,
            icon: icon!,
            onPressed: enable ? onPressed : null,
            onLongPress: enable ? onLongPress : null,
            style: style?.value,
            focusNode: focusNode,
            autofocus: autofocus ?? false,
            clipBehavior: clipBehavior ?? Clip.none,
          )
        : TextButton(
            child: child,
            onPressed: enable ? onPressed : null,
            onLongPress: enable ? onLongPress : null,
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
