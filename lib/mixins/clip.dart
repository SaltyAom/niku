import 'package:flutter/material.dart';

abstract class ClipMixin {
  Clip? clip;

  void get noClip => clip = Clip.none;
  void get hardEdge => clip = Clip.hardEdge;
  void get antiAlias => clip = Clip.antiAlias;
  void get antiAliasWithSaveLayer => clip = Clip.antiAliasWithSaveLayer;
}
