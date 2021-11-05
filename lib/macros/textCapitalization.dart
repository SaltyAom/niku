import 'package:flutter/material.dart';

abstract class TextCapitalizationMacro {
  TextCapitalization? textCapitalization;

  void get capitalWords => textCapitalization = TextCapitalization.words;
  void get capitalCharacters =>
      textCapitalization = TextCapitalization.characters;
  void get capitalNone => textCapitalization = TextCapitalization.none;
  void get capitalSentences =>
      textCapitalization = TextCapitalization.sentences;
}
