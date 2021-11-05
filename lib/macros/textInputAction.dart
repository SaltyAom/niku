import 'package:flutter/material.dart';

abstract class TextInputActionMacro {
  TextInputAction? textInputAction;

  void get continueAction => textInputAction = TextInputAction.continueAction;
  void get doneAction => textInputAction = TextInputAction.done;
  void get emergencyCallAction =>
      textInputAction = TextInputAction.emergencyCall;
  void get goAction => textInputAction = TextInputAction.go;
  void get joinAction => textInputAction = TextInputAction.join;
  void get newLineAction => textInputAction = TextInputAction.newline;
  void get nextAction => textInputAction = TextInputAction.next;
  void get noneAction => textInputAction = TextInputAction.none;
  void get previousAction => textInputAction = TextInputAction.previous;
  void get routeAction => textInputAction = TextInputAction.route;
  void get searchAction => textInputAction = TextInputAction.search;
  void get sendAction => textInputAction = TextInputAction.send;
  void get unspecifiedAction => textInputAction = TextInputAction.unspecified;
}
