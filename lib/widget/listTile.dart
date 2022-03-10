import 'package:flutter/material.dart';

import 'package:niku/macros/macros.dart';
import 'package:niku/objects/objects.dart';

// ignore: must_be_immutable
class NikuListTile extends StatelessWidget
    with
        NikuBuildMacro<NikuListTile>,
        UseQueryMacro<NikuListTile>,
        ContentPaddingMacro {
  Key? key;
  Widget? leading;
  Widget? title;
  Widget? subtitle;
  Widget? trailing;
  bool? isThreeLine;
  bool? dense;
  VisualDensity? visualDensity;
  ShapeBorder? shape;
  Color? selectedColor;
  Color? iconColor;
  Color? textColor;
  ListTileStyle? style;
  NikuEdgeInsets? contentPadding;
  bool? enabled;
  GestureTapCallback? onTap;
  GestureLongPressCallback? onLongPress;
  MouseCursor? mouseCursor;
  bool? selected;
  Color? focusColor;
  Color? hoverColor;
  FocusNode? focusNode;
  bool? autofocus;
  Color? tileColor;
  Color? selectedTileColor;
  bool? enableFeedback;
  double? horizontalTitleGap;
  double? minVerticalPadding;
  double? minLeadingWidth;

  NikuListTile({
    this.key,
    this.leading,
    this.title,
    this.subtitle,
    this.trailing,
    this.isThreeLine,
    this.dense,
    this.visualDensity,
    this.shape,
    this.selectedColor,
    this.iconColor,
    this.textColor,
    this.style,
    this.contentPadding,
    this.enabled,
    this.onTap,
    this.onLongPress,
    this.mouseCursor,
    this.selected,
    this.focusColor,
    this.hoverColor,
    this.focusNode,
    this.autofocus,
    this.tileColor,
    this.selectedTileColor,
    this.enableFeedback,
    this.horizontalTitleGap,
    this.minVerticalPadding,
    this.minLeadingWidth,
  }) : super(key: key);

  set apply(NikuListTile? v) {
    if (v == null) return;

    key = v.key ?? key;
    leading = v.leading ?? leading;
    title = v.title ?? title;
    subtitle = v.subtitle ?? subtitle;
    trailing = v.trailing ?? trailing;
    isThreeLine = v.isThreeLine ?? isThreeLine;
    dense = v.dense ?? dense;
    visualDensity = v.visualDensity ?? visualDensity;
    shape = v.shape ?? shape;
    selectedColor = v.selectedColor ?? selectedColor;
    iconColor = v.iconColor ?? iconColor;
    textColor = v.textColor ?? textColor;
    style = v.style ?? style;
    contentPadding = v.contentPadding ?? contentPadding;
    enabled = v.enabled ?? enabled;
    onTap = v.onTap ?? onTap;
    onLongPress = v.onLongPress ?? onLongPress;
    mouseCursor = v.mouseCursor ?? mouseCursor;
    selected = v.selected ?? selected;
    focusColor = v.focusColor ?? focusColor;
    hoverColor = v.hoverColor ?? hoverColor;
    focusNode = v.focusNode ?? focusNode;
    autofocus = v.autofocus ?? autofocus;
    tileColor = v.tileColor ?? tileColor;
    selectedTileColor = v.selectedTileColor ?? selectedTileColor;
    enableFeedback = v.enableFeedback ?? enableFeedback;
    horizontalTitleGap = v.horizontalTitleGap ?? horizontalTitleGap;
    minVerticalPadding = v.minVerticalPadding ?? minVerticalPadding;
    minLeadingWidth = v.minLeadingWidth ?? minLeadingWidth;

    $internalParent.addAll($internalParent);
  }

  NikuListTile get copied => NikuListTile(
        key: key,
        leading: leading,
        title: title,
        subtitle: subtitle,
        trailing: trailing,
        isThreeLine: isThreeLine,
        dense: dense,
        visualDensity: visualDensity,
        shape: shape,
        selectedColor: selectedColor,
        iconColor: iconColor,
        textColor: textColor,
        style: style,
        contentPadding: contentPadding,
        enabled: enabled,
        onTap: onTap,
        onLongPress: onLongPress,
        mouseCursor: mouseCursor,
        selected: selected,
        focusColor: focusColor,
        hoverColor: hoverColor,
        focusNode: focusNode,
        autofocus: autofocus,
        tileColor: tileColor,
        selectedTileColor: selectedTileColor,
        enableFeedback: enableFeedback,
        horizontalTitleGap: horizontalTitleGap,
        minVerticalPadding: minVerticalPadding,
        minLeadingWidth: minLeadingWidth,
      )..$internalParent.addAll($internalParent);

  ListTile get widget => ListTile(
        key: key,
        leading: leading,
        title: title,
        subtitle: subtitle,
        trailing: trailing,
        isThreeLine: isThreeLine ?? false,
        dense: dense,
        visualDensity: visualDensity,
        shape: shape,
        selectedColor: selectedColor,
        iconColor: iconColor,
        textColor: textColor,
        style: style,
        contentPadding: contentPadding?.value,
        enabled: enabled ?? true,
        onTap: onTap,
        onLongPress: onLongPress,
        mouseCursor: mouseCursor,
        selected: selected ?? false,
        focusColor: focusColor,
        hoverColor: hoverColor,
        focusNode: focusNode,
        autofocus: autofocus ?? false,
        tileColor: tileColor,
        selectedTileColor: selectedTileColor,
        enableFeedback: enableFeedback,
        horizontalTitleGap: horizontalTitleGap,
        minVerticalPadding: minVerticalPadding,
        minLeadingWidth: minLeadingWidth,
      );
}
