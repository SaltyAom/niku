import 'package:flutter/material.dart' show BuildContext;

import 'niku.dart';
import 'widget/niku.dart' as N;

export 'niku.dart';

typedef Box = N.Niku;
typedef Niku = N.Niku;
typedef Parent = Niku;

typedef On = NikuOn;

typedef Alert = NikuAlert;
typedef Button = NikuButton;
typedef Column = NikuColumn;
typedef DropdownButton<T> = NikuDropdownButton<T>;
typedef GridView = NikuGridView;
typedef IconButton = NikuIconButton;
typedef Image = NikuImage;
typedef RangeSlider = NikuRangeSlider;
typedef Row = NikuRow;
typedef SelectableText = NikuSelectableText;
typedef Slider = NikuSlider;
typedef Stack = NikuStack;
typedef Switch = NikuSwitch;
typedef Text = NikuText;
typedef TextFormField = NikuTextFormField;
typedef Wrap = NikuWrap;

typedef BoxConstraints = NikuBoxConstraints;
typedef ButtonStyle = NikuButtonStyle;
typedef EdgeInsets = NikuEdgeInsets;
typedef InputBorder = NikuInputBorder;
typedef InputDecoration = NikuInputDecoration;
typedef State = NikuState;
typedef StrutStyle = NikuStrutStyle;
typedef TextStyle = NikuTextStyle;

Future<void> showDialog({
  required BuildContext context,
  required NikuAlert Function(BuildContext) builder,
  String? barrierLabel,
  bool useRootNavigator = true,
  bool? barrierDismissible,
}) =>
    showNikuDialog(
      context: context,
      builder: builder,
      barrierLabel: barrierLabel,
      barrierDismissible: barrierDismissible,
      useRootNavigator: useRootNavigator,
    );
