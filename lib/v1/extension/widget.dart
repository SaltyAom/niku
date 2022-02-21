import 'package:flutter/material.dart';

import 'package:niku/v1/widget/widget.dart';

extension NikuTextBuilder on Text {
  NikuText asNiku() => NikuText(data ?? "");
}

extension NikuTextButtonBuilder on TextButton {
  NikuButton asNiku() => NikuButton(
        child ?? SizedBox.shrink(),
      )..onPressed(onPressed!);

  NikuButton asNikuIcon() => NikuButton.icon(
        child ?? SizedBox.shrink(),
      )..onPressed(onPressed!);
}

extension NikuElevatedButtonBuilder on ElevatedButton {
  NikuButton asNiku() => NikuButton.elevated(
        child ?? SizedBox.shrink(),
      )..onPressed(onPressed!);

  NikuButton asNikuIcon() => NikuButton.elevatedIcon(
        child ?? SizedBox.shrink(),
      )..onPressed(onPressed!);
}

extension NikuOutlinedButtonBuilder on OutlinedButton {
  NikuButton asNiku() => NikuButton.outlined(
        child ?? SizedBox.shrink(),
      )..onPressed(onPressed!);

  NikuButton asNikuIcon() => NikuButton.outlinedIcon(
        child ?? SizedBox.shrink(),
      )..onPressed(onPressed!);
}

extension NikuTextFieldBuilder on TextField {
  NikuTextField asNiku() => NikuTextField(
        decoration?.labelText ?? "",
      );
}

extension NikuIconButtonBuilder on IconButton {
  NikuIconButton asNiku() => NikuIconButton(icon)..onPressed(onPressed!);
}

extension NikuRowBuilder on Row {
  NikuRow asNiku() => NikuRow(children);
}

extension NikuColumnBuilder on Column {
  NikuColumn asNiku() => NikuColumn(children);
}

extension NikuStackBuilder on Stack {
  NikuStack asNiku() => NikuStack(children);
}

extension NikuWrapBuilder on Wrap {
  NikuWrap asNiku() => NikuWrap(children);
}
