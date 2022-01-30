import 'package:flutter/material.dart';

abstract class ListTileControlAffinityMacro {
  ListTileControlAffinity? controlAffinity;

  void get leading => controlAffinity = ListTileControlAffinity.leading;
  void get platform => controlAffinity = ListTileControlAffinity.platform;
  void get trailing => controlAffinity = ListTileControlAffinity.trailing;
}
