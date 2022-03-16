import 'package:flutter/material.dart';

abstract class DismissDirectionMacro {
  DismissDirection? direction;

  void get vertical => direction == DismissDirection.vertical;
  void get horizontal => direction == DismissDirection.horizontal;
  void get endToStart => direction == DismissDirection.endToStart;
  void get startToEnd => direction == DismissDirection.startToEnd;
  void get up => direction == DismissDirection.up;
  void get down => direction == DismissDirection.down;
  void get noDissmiss => direction == DismissDirection.none;
}
