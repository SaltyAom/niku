import 'package:flutter/material.dart' show BuildContext, Widget;
import 'package:niku/widget/radio.dart';

import 'niku.dart';
import 'widget/niku.dart' as N;

export 'niku.dart';

typedef Box = N.Niku;
typedef Niku = N.Niku;
typedef Parent = Niku;

typedef On = NikuOn;
typedef Screen = NikuScreen;
typedef Animated<T> = NikuAnimated<T>;

typedef Alert = NikuAlert;
typedef Button = NikuButton;
typedef Checkbox = NikuCheckbox;
typedef CheckboxListTile = NikuCheckboxListTile;
typedef Column = NikuColumn;
typedef DropdownButton<T> = NikuDropdownButton<T>;
typedef GridView = NikuGridView;
typedef Icon = NikuIcon;
typedef IconButton = NikuIconButton;
typedef Image = NikuImage;
typedef ListTile = NikuListTile;
typedef ListView = NikuListView;
typedef PopupMenuButton = NikuPopupMenuButton;
typedef RangeSlider = NikuRangeSlider;
typedef Radio<T> = NikuRadio<T>;
typedef RadioListTile<T> = NikuRadioListTile<T>;
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
  required Widget Function(BuildContext) builder,
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
