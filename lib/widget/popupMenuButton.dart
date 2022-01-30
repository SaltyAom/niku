import 'package:flutter/material.dart';

import '../macros/macros.dart';
import '../objects/objects.dart';

// ignore: must_be_immutable
class NikuPopupMenuButton<T> extends StatelessWidget
    with NikuBuildMacro, UseQueryMacro<NikuPopupMenuButton>, PaddingMacro {
  NikuPopupMenuButton(
    this.child, {
    Key? key,
    this.initialValue,
    this.onSelected,
    this.onCanceled,
    this.tooltip,
    this.elevation,
    this.padding,
    this.icon,
    this.offset,
    this.enabled,
    this.shape,
    this.color,
    this.enableFeedback,
    this.iconSize,
    this.items,
    this.itemBuilder,
  }) : super(key: key);

  List<T>? items;
  PopupMenuItemBuilder<T>? itemBuilder;
  T? initialValue;
  PopupMenuItemSelected<T>? onSelected;
  PopupMenuCanceled? onCanceled;
  String? tooltip;
  double? elevation;
  NikuEdgeInsets? padding;
  Widget? child;
  Widget? icon;
  Offset? offset;
  bool? enabled;
  ShapeBorder? shape;
  Color? color;
  bool? enableFeedback;
  double? iconSize;

  set apply(NikuPopupMenuButton? v) {
    if (v == null) return;

    initialValue = v.initialValue ?? initialValue;
    onSelected = v.onSelected ?? onSelected;
    onCanceled = v.onCanceled ?? onCanceled;
    tooltip = v.tooltip ?? tooltip;
    elevation = v.elevation ?? elevation;
    padding = v.padding ?? padding;
    icon = v.icon ?? icon;
    offset = v.offset ?? offset;
    enabled = v.enabled ?? enabled;
    shape = v.shape ?? shape;
    color = v.color ?? color;
    enableFeedback = v.enableFeedback ?? enableFeedback;
    iconSize = v.iconSize ?? iconSize;
  }

  NikuPopupMenuButton<T> get copied => NikuPopupMenuButton<T>(
        child,
        key: key,
        initialValue: initialValue,
        onSelected: onSelected,
        onCanceled: onCanceled,
        tooltip: tooltip,
        elevation: elevation,
        padding: padding,
        icon: icon,
        offset: offset,
        enabled: enabled,
        shape: shape,
        color: color,
        enableFeedback: enableFeedback,
        iconSize: iconSize,
        items: items,
        itemBuilder: itemBuilder,
      );

  PopupMenuButton get widget => PopupMenuButton<T>(
        initialValue: initialValue,
        itemBuilder: itemBuilder ??
            (items != null
                ? (_) => items!
                    .map(
                      (v) => PopupMenuItem(
                        child: Text(v.toString()),
                        value: v,
                      ),
                    )
                    .toList()
                : null) ??
            (_) => [],
        onSelected: onSelected ?? (T _) {},
        onCanceled: onCanceled,
        tooltip: tooltip,
        elevation: elevation,
        padding: padding?.value ?? const EdgeInsets.all(8.0),
        child: child,
        icon: icon,
        offset: offset ?? Offset.zero,
        enabled: enabled ?? true,
        shape: shape,
        color: color,
        enableFeedback: enableFeedback,
        iconSize: iconSize,
      );
}
