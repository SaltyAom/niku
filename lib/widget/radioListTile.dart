import 'package:flutter/material.dart';

import 'package:niku/macros/macros.dart';
import 'package:niku/objects/objects.dart';

// ignore: must_be_immutable
class NikuRadioListTile<T> extends StatelessWidget
    with
        NikuBuildMacro<NikuRadioListTile>,
        UseQueryMacro<NikuRadioListTile>,
        ContentPaddingMacro {
  NikuRadioListTile(
    this.value, {
    this.key,
    this.groupValue,
    this.onChanged,
    this.toggleable,
    this.activeColor,
    this.title,
    this.subtitle,
    this.secondary,
    this.isThreeLine,
    this.dense,
    this.selected,
    this.controlAffinity,
    this.autofocus,
    this.contentPadding,
    this.shape,
    this.tileColor,
    this.selectedTileColor,
    this.visualDensity,
    this.focusNode,
    this.enableFeedback,
  }) : super(key: key);

  Key? key;
  T? value;
  T? groupValue;
  ValueChanged<T?>? onChanged;
  bool? toggleable;
  Color? activeColor;
  Widget? title;
  Widget? subtitle;
  Widget? secondary;
  bool? isThreeLine;
  bool? dense;
  bool? selected;
  ListTileControlAffinity? controlAffinity;
  bool? autofocus;
  NikuEdgeInsets? contentPadding;
  ShapeBorder? shape;
  Color? tileColor;
  Color? selectedTileColor;
  VisualDensity? visualDensity;
  FocusNode? focusNode;
  bool? enableFeedback;

  bool get checked => value == groupValue;

  NikuRadioListTile get self => this;

  set apply(NikuRadioListTile? v) {
    if (v == null) return;

    value = v.value ?? value;
    groupValue = v.groupValue ?? groupValue;
    onChanged = v.onChanged ?? onChanged;
    toggleable = v.toggleable ?? toggleable;
    activeColor = v.activeColor ?? activeColor;
    title = v.title ?? title;
    subtitle = v.subtitle ?? subtitle;
    secondary = v.secondary ?? secondary;
    isThreeLine = v.isThreeLine ?? isThreeLine;
    dense = v.dense ?? dense;
    selected = v.selected ?? selected;
    controlAffinity = v.controlAffinity ?? controlAffinity;
    autofocus = v.autofocus ?? autofocus;
    contentPadding = v.contentPadding ?? contentPadding;
    shape = v.shape ?? shape;
    tileColor = v.tileColor ?? tileColor;
    selectedTileColor = v.selectedTileColor ?? selectedTileColor;
    visualDensity = v.visualDensity ?? visualDensity;
    focusNode = v.focusNode ?? focusNode;
    enableFeedback = v.enableFeedback ?? enableFeedback;

    $internalParent..addAll(v.$internalParent);
  }

  NikuRadioListTile get copied => NikuRadioListTile<T>(
        value,
        groupValue: groupValue,
        onChanged: onChanged,
        toggleable: toggleable,
        activeColor: activeColor,
        title: title,
        subtitle: subtitle,
        secondary: secondary,
        isThreeLine: isThreeLine,
        dense: dense,
        selected: selected,
        controlAffinity: controlAffinity,
        autofocus: autofocus,
        contentPadding: contentPadding,
        shape: shape,
        tileColor: tileColor,
        selectedTileColor: selectedTileColor,
        visualDensity: visualDensity,
        focusNode: focusNode,
        enableFeedback: enableFeedback,
      )..$internalParent.addAll($internalParent);

  RadioListTile get widget => RadioListTile<T>(
        value: value!,
        groupValue: groupValue,
        onChanged: onChanged ?? (_) {},
        toggleable: toggleable ?? false,
        activeColor: activeColor,
        title: title,
        subtitle: subtitle,
        secondary: secondary,
        isThreeLine: isThreeLine ?? false,
        dense: dense,
        selected: selected ?? false,
        controlAffinity: controlAffinity ?? ListTileControlAffinity.platform,
        autofocus: autofocus ?? false,
        contentPadding: contentPadding?.value,
        shape: shape,
        tileColor: tileColor,
        selectedTileColor: selectedTileColor,
        visualDensity: visualDensity,
        focusNode: focusNode,
        enableFeedback: enableFeedback,
      );
}
