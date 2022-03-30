import 'package:flutter/material.dart';

import '../objects/objects.dart';
import '../macros/macros.dart';

// ignore: must_be_immutable
class NikuCheckboxListTile extends StatelessWidget
    with
        NikuBuildMacro<NikuCheckboxListTile>,
        ContentPaddingMacro,
        FocusNodeMacro,
        ListTileControlAffinityMacro {
  bool? value;
  ValueChanged<bool?>? onChanged;
  Color? activeColor;
  Color? checkColor;
  Color? tileColor;
  Widget? title;
  Widget? subtitle;
  Widget? secondary;
  bool? isThreeLine;
  bool? dense;
  bool? selected;
  ListTileControlAffinity? controlAffinity;
  bool? autofocus;
  NikuEdgeInsets? contentPadding;
  bool? tristate;
  ShapeBorder? shape;
  Color? selectedTileColor;
  VisualDensity? visualDensity;
  FocusNode? focusNode;
  bool? enableFeedback;

  Color? splashColor;
  Color? highlightColor;
  Color? hoverColor;
  Color? focusColor;

  NikuCheckboxListTile(
    this.value, {
    Key? key,
    this.onChanged,
    this.activeColor,
    this.checkColor,
    this.tileColor,
    this.title,
    this.subtitle,
    this.isThreeLine,
    this.dense,
    this.secondary,
    this.selected,
    this.controlAffinity,
    this.autofocus,
    this.contentPadding,
    this.tristate,
    this.shape,
    this.selectedTileColor,
    this.visualDensity,
    this.focusNode,
    this.enableFeedback,
    this.splashColor,
    this.highlightColor,
    this.hoverColor,
    this.focusColor,
  }) : super(key: key);

  void get threeLine => isThreeLine = true;
  void get isDense => dense = true;

  NikuCheckboxListTile get self => this;

  set apply(NikuCheckboxListTile? v) {
    if (v == null) return;

    onChanged = v.onChanged ?? onChanged;
    activeColor = v.activeColor ?? activeColor;
    checkColor = v.checkColor ?? checkColor;
    tileColor = v.tileColor ?? tileColor;
    title = v.title ?? title;
    subtitle = v.subtitle ?? subtitle;
    isThreeLine = v.isThreeLine ?? isThreeLine;
    dense = v.dense ?? dense;
    secondary = v.secondary ?? secondary;
    selected = v.selected ?? selected;
    controlAffinity = v.controlAffinity ?? controlAffinity;
    autofocus = v.autofocus ?? autofocus;
    contentPadding = v.contentPadding ?? contentPadding;
    tristate = v.tristate ?? tristate;
    shape = v.shape ?? shape;
    selectedTileColor = v.selectedTileColor ?? selectedTileColor;
    visualDensity = v.visualDensity ?? visualDensity;
    focusNode = v.focusNode ?? focusNode;
    enableFeedback = v.enableFeedback ?? enableFeedback;

    splashColor = v.splashColor ?? splashColor;
    highlightColor = v.highlightColor ?? highlightColor;
    hoverColor = v.hoverColor ?? hoverColor;
    focusColor = v.focusColor ?? focusColor;
    $internalParent..$merge(v.$internalParent);
  }

  NikuCheckboxListTile get copied => NikuCheckboxListTile(
        value,
        onChanged: onChanged,
        activeColor: activeColor,
        checkColor: checkColor,
        tileColor: tileColor,
        title: title,
        subtitle: subtitle,
        isThreeLine: isThreeLine,
        dense: dense,
        secondary: secondary,
        selected: selected,
        controlAffinity: controlAffinity,
        autofocus: autofocus,
        contentPadding: contentPadding,
        tristate: tristate,
        shape: shape,
        selectedTileColor: selectedTileColor,
        visualDensity: visualDensity,
        focusNode: focusNode,
        enableFeedback: enableFeedback,
        splashColor: splashColor,
        highlightColor: highlightColor,
        hoverColor: hoverColor,
        focusColor: focusColor,
      )..$internalParent.$merge($internalParent);

  Widget get widget => Builder(
        builder: (context) => Theme(
          data: Theme.of(context).copyWith(
            splashColor: splashColor,
            highlightColor: highlightColor,
            hoverColor: hoverColor,
            focusColor: focusColor,
          ),
          child: CheckboxListTile(
            key: key,
            value: value,
            onChanged: onChanged,
            activeColor: activeColor,
            checkColor: checkColor,
            tileColor: tileColor,
            title: title,
            subtitle: subtitle,
            isThreeLine: isThreeLine ?? false,
            dense: dense,
            secondary: secondary,
            selected: selected ?? false,
            controlAffinity:
                controlAffinity ?? ListTileControlAffinity.platform,
            autofocus: autofocus ?? false,
            contentPadding: contentPadding?.value,
            tristate: tristate ?? false,
            shape: shape,
            selectedTileColor: selectedTileColor,
            visualDensity: visualDensity,
            focusNode: focusNode,
            enableFeedback: enableFeedback,
          ),
        ),
      );
}
