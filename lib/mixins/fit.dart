import 'package:flutter/material.dart';

abstract class FitMixin {
  StackFit? fit;

  void get expand => fit = StackFit.expand;
  void get loose => fit = StackFit.loose;
  void get passthrough => fit = StackFit.passthrough;
}
