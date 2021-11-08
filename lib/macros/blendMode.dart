import 'package:flutter/material.dart';

abstract class ColorBlendModeMacro {
  BlendMode? colorBlendMode;

  void get clear => colorBlendMode = BlendMode.clear;
  void get src => colorBlendMode = BlendMode.src;
  void get dst => colorBlendMode = BlendMode.dst;
  void get srcOver => colorBlendMode = BlendMode.srcOver;
  void get dstOver => colorBlendMode = BlendMode.dstOver;
  void get srcIn => colorBlendMode = BlendMode.srcIn;
  void get dstIn => colorBlendMode = BlendMode.dstIn;
  void get srcOut => colorBlendMode = BlendMode.srcOut;
  void get dstOut => colorBlendMode = BlendMode.dstOut;
  void get srcATop => colorBlendMode = BlendMode.srcATop;
  void get dstATop => colorBlendMode = BlendMode.dstATop;
  void get xor => colorBlendMode = BlendMode.xor;
  void get plus => colorBlendMode = BlendMode.plus;
  void get modulate => colorBlendMode = BlendMode.modulate;
  void get screen => colorBlendMode = BlendMode.screen;
  void get overlay => colorBlendMode = BlendMode.overlay;
  void get darken => colorBlendMode = BlendMode.darken;
  void get lighten => colorBlendMode = BlendMode.lighten;
  void get colorDodge => colorBlendMode = BlendMode.colorDodge;
  void get colorBurn => colorBlendMode = BlendMode.colorBurn;
  void get hardLight => colorBlendMode = BlendMode.hardLight;
  void get softLight => colorBlendMode = BlendMode.softLight;
  void get difference => colorBlendMode = BlendMode.difference;
  void get exclusion => colorBlendMode = BlendMode.exclusion;
  void get multiply => colorBlendMode = BlendMode.multiply;
  void get hue => colorBlendMode = BlendMode.hue;
  void get saturation => colorBlendMode = BlendMode.saturation;
  void get color => colorBlendMode = BlendMode.color;
  void get luminosity => colorBlendMode = BlendMode.luminosity;
}
