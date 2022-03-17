import 'package:flutter/material.dart';
import 'package:niku/proxy/proxy.dart';

import '../objects/objects.dart';
import '../macros/macros.dart';

enum NikuButtonType { Text, Elevated, Outlined }

// ignore: must_be_immutable
class NikuButton extends StatelessWidget
    with
        NikuBuildMacro<NikuButton>,
        UseQueryMacro<NikuButton>,
        ApplyButtonStyleMacro,
        ClipMacro,
        ButtonStyleTextStyleProxy {
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
    this.autofocus,

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

  void useTextStyle(NikuTextStyle Function(NikuTextStyle) cb) {
    if (style == null) style = NikuButtonStyle();

    style!.apply = NikuButtonStyle(textStyle: cb(NikuTextStyle()));
  }

  void applyTextStyle(NikuTextStyle v) {
    if (style == null) style = NikuButtonStyle();

    style!.apply = NikuButtonStyle(textStyle: v);
  }

  NikuButton get self => this;

  set apply(NikuButton? v) {
    if (v == null) return;

    if (style == null && v.style != null) style = NikuButtonStyle();

    type = v.type ?? type;
    onPressed = v.onPressed ?? onPressed;
    onLongPress = v.onLongPress ?? onLongPress;
    style?.apply = v.style ?? style;
    focusNode = v.focusNode ?? focusNode;
    clipBehavior = v.clipBehavior ?? clipBehavior;
    icon = v.icon ?? icon;
    label = v.label ?? label;
    enable = v.enable;
    $internalParent..addAll(v.$internalParent);
  }

  NikuButton get copied => NikuButton(
        child,
        key: key,
        type: type,
        onPressed: onPressed,
        onLongPress: onLongPress,
        style: style,
        focusNode: focusNode,
        clipBehavior: clipBehavior,
        icon: icon,
        label: label,
        enable: enable,
      )..$internalParent.addAll($internalParent);

  Widget get widget {
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
