import 'package:flutter/material.dart';

abstract class KeyboardTypeMacro {
  TextInputType? keyboardType;

  void get datetimeKeyboard => keyboardType = TextInputType.datetime;
  void get emailKeyboard => keyboardType = TextInputType.emailAddress;
  void get multilineKeyboard => keyboardType = TextInputType.multiline;
  void get nameKeyboard => keyboardType = TextInputType.name;
  void get numberKeynoard => keyboardType = TextInputType.number;
  void get phoneKeybaord => keyboardType = TextInputType.phone;
  void get addressKeyboard => keyboardType = TextInputType.streetAddress;
  void get textKeyboard => keyboardType = TextInputType.text;
  void get urlKeyboard => keyboardType = TextInputType.url;
  void get passwordKeyboard => keyboardType = TextInputType.visiblePassword;
  void get noKeyboard => keyboardType = TextInputType.none;

  void get decimal =>
      keyboardType = TextInputType.numberWithOptions(decimal: true);
}
