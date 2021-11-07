import 'package:flutter/material.dart';

import '../macros/macros.dart';
import '../objects/objects.dart';

// ignore: must_be_immutable
class NikuAlert extends StatelessWidget
    with
        NikuBuildMacro,
        ActionPaddingMacro,
        ApplyTitleTextMacro,
        ApplyContentTextMacro,
        ButtonPaddingMacro,
        ClipMacro,
        ContentPaddingMacro,
        InsetPaddingMacro {
  Widget? title;
  NikuEdgeInsets? titlePadding;
  NikuTextStyle? titleTextStyle;
  Widget? content;
  NikuEdgeInsets? contentPadding;
  NikuTextStyle? contentTextStyle;
  List<Widget>? actions;
  NikuEdgeInsets? actionsPadding;
  MainAxisAlignment? actionsAlignment;
  VerticalDirection? actionsOverflowDirection;
  double? actionsOverflowButtonSpacing;
  NikuEdgeInsets? buttonPadding;
  Color? backgroundColor;
  double? elevation;
  String? semanticLabel;
  NikuEdgeInsets? insetPadding;
  Clip? clipBehavior;
  ShapeBorder? shape;
  bool? scrollable;

  NikuAlert({
    Key? key,
    this.title,
    this.titlePadding,
    this.titleTextStyle,
    this.content,
    this.contentPadding,
    this.contentTextStyle,
    this.actions,
    this.actionsPadding,
    this.actionsAlignment,
    this.actionsOverflowDirection,
    this.actionsOverflowButtonSpacing,
    this.buttonPadding,
    this.backgroundColor,
    this.elevation,
    this.semanticLabel,
    this.insetPadding,
    this.clipBehavior,
    this.shape,
    this.scrollable,
  }) : super(key: key);

  set apply(NikuAlert? v) {
    if (v == null) return;

    title ??= title;
    titlePadding?.apply = titlePadding;
    titleTextStyle ??= titleTextStyle;
    content ??= content;
    contentPadding?.apply = contentPadding;
    contentTextStyle ??= contentTextStyle;
    actions ??= actions;
    actionsPadding?.apply = actionsPadding;
    actionsAlignment ??= actionsAlignment;
    actionsOverflowDirection ??= actionsOverflowDirection;
    actionsOverflowButtonSpacing ??= actionsOverflowButtonSpacing;
    buttonPadding?.apply = buttonPadding;
    backgroundColor ??= backgroundColor;
    elevation ??= elevation;
    semanticLabel ??= semanticLabel;
    insetPadding?.apply = insetPadding;
    clipBehavior ??= clipBehavior;
    shape ??= shape;
    scrollable ??= scrollable;
  }

  AlertDialog get value => AlertDialog(
        key: key,
        title: title,
        titlePadding: titlePadding?.value,
        titleTextStyle: titleTextStyle?.value,
        content: content,
        contentPadding: contentPadding?.value ??
            const EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 24.0),
        contentTextStyle: contentTextStyle?.value,
        actions: actions,
        actionsPadding: actionPadding?.value ?? EdgeInsets.zero,
        actionsAlignment: actionsAlignment,
        actionsOverflowDirection: actionsOverflowDirection,
        actionsOverflowButtonSpacing: actionsOverflowButtonSpacing,
        buttonPadding: buttonPadding?.value,
        backgroundColor: backgroundColor,
        elevation: elevation,
        semanticLabel: semanticLabel,
        insetPadding: insetPadding?.value ??
            const EdgeInsets.symmetric(horizontal: 40.0, vertical: 24.0),
        clipBehavior: clipBehavior ?? Clip.none,
        shape: shape,
        scrollable: scrollable ?? false,
      );
}

extension TransformNikuAlert on AlertDialog {
  NikuAlert get asNiku => NikuAlert(
        title: title,
        titlePadding: titlePadding?.asNiku,
        titleTextStyle: titleTextStyle?.asNiku,
        content: content,
        contentPadding:
            contentPadding != const EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 24.0)
                ? contentPadding.asNiku
                : null,
        contentTextStyle: contentTextStyle?.asNiku,
        actions: actions,
        actionsPadding:
            actionsPadding != EdgeInsets.zero ? actionsPadding.asNiku : null,
        actionsAlignment: actionsAlignment,
        actionsOverflowDirection: actionsOverflowDirection,
        actionsOverflowButtonSpacing: actionsOverflowButtonSpacing,
        buttonPadding: buttonPadding?.asNiku,
        backgroundColor: backgroundColor,
        elevation: elevation,
        semanticLabel: semanticLabel,
        insetPadding: insetPadding !=
                const EdgeInsets.symmetric(horizontal: 40.0, vertical: 24.0)
            ? insetPadding.asNiku
            : null,
        clipBehavior: clipBehavior,
        shape: shape,
        scrollable: scrollable != false ? scrollable : null,
      );
}
