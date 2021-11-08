import 'package:flutter/material.dart';

import '../macros/macros.dart';
import '../objects/objects.dart';

// ignore: must_be_immutable
class NikuRangeSlider extends StatelessWidget
    with NikuBuildMacro, ApplyTextMacro, ApplyValueIndicatorTextStyleMacro {
  RangeValues data;

  void Function(RangeValues)? onChanged;
  void Function(RangeValues)? onChangeStart;
  void Function(RangeValues)? onChangeEnd;
  double? min;
  double? max;
  int? divisions;
  RangeLabels? labels;
  Color? activeColor;
  Color? inactiveColor;
  Color? thumbColor;
  MouseCursor? mouseCursor;
  SemanticFormatterCallback? semanticFormatterCallback;
  FocusNode? focusNode;
  bool? autofocus;

  // Slider Theme
  double? trackHeight;
  Color? activeTrackColor;
  Color? inactiveTrackColor;
  Color? disabledActiveTrackColor;
  Color? disabledInactiveTrackColor;
  Color? activeTickMarkColor;
  Color? inactiveTickMarkColor;
  Color? disabledActiveTickMarkColor;
  Color? disabledInactiveTickMarkColor;
  Color? overlappingShapeStrokeColor;
  Color? disabledThumbColor;
  Color? overlayColor;
  Color? valueIndicatorColor;
  SliderComponentShape? overlayShape;
  SliderTickMarkShape? tickMarkShape;
  SliderComponentShape? thumbShape;
  SliderTrackShape? trackShape;
  SliderComponentShape? valueIndicatorShape;
  RangeSliderTickMarkShape? rangeTickMarkShape;
  RangeSliderThumbShape? rangeThumbShape;
  RangeSliderTrackShape? rangeTrackShape;
  RangeSliderValueIndicatorShape? rangeValueIndicatorShape;
  ShowValueIndicator? showValueIndicator;
  NikuTextStyle? valueIndicatorTextStyle;
  double? minThumbSeparation;
  RangeThumbSelector? thumbSelector;

  void get noOverlay => overlayShape = SliderComponentShape.noOverlay;

  void get noTickMark => tickMarkShape = SliderTickMarkShape.noTickMark;
  void get roundRangeSliderTickMark =>
      rangeTickMarkShape = RoundRangeSliderTickMarkShape();

  NikuRangeSlider(
    this.data, {
    Key? key,
    this.onChanged,
    this.onChangeStart,
    this.onChangeEnd,
    this.min,
    this.max,
    this.divisions,
    this.labels,
    this.activeColor,
    this.inactiveColor,
    this.thumbColor,
    this.mouseCursor,
    this.semanticFormatterCallback,
    this.focusNode,
    this.autofocus,
    this.trackHeight,
    this.activeTrackColor,
    this.inactiveTrackColor,
    this.disabledActiveTrackColor,
    this.disabledInactiveTrackColor,
    this.activeTickMarkColor,
    this.inactiveTickMarkColor,
    this.disabledActiveTickMarkColor,
    this.disabledInactiveTickMarkColor,
    this.overlappingShapeStrokeColor,
    this.disabledThumbColor,
    this.overlayColor,
    this.valueIndicatorColor,
    this.overlayShape,
    this.tickMarkShape,
    this.thumbShape,
    this.trackShape,
    this.valueIndicatorShape,
    this.rangeTickMarkShape,
    this.rangeThumbShape,
    this.rangeTrackShape,
    this.rangeValueIndicatorShape,
    this.showValueIndicator,
    this.valueIndicatorTextStyle,
    this.minThumbSeparation,
    this.thumbSelector,
  }) : super(key: key);

  set apply(NikuRangeSlider? v) {
    if (v == null) return;
    if (valueIndicatorTextStyle == null)
      valueIndicatorTextStyle = NikuTextStyle();

    onChanged ??= v.onChanged;
    onChangeStart ??= v.onChangeStart;
    onChangeEnd ??= v.onChangeEnd;
    min ??= v.min;
    max ??= v.max;
    divisions ??= v.divisions;
    labels ??= v.labels;
    activeColor ??= v.activeColor;
    inactiveColor ??= v.inactiveColor;
    thumbColor ??= v.thumbColor;
    mouseCursor ??= v.mouseCursor;
    semanticFormatterCallback ??= v.semanticFormatterCallback;
    focusNode ??= v.focusNode;
    autofocus ??= v.autofocus;
    trackHeight ??= v.trackHeight;
    activeTrackColor ??= v.activeTrackColor;
    inactiveTrackColor ??= v.inactiveTrackColor;
    disabledActiveTrackColor ??= v.disabledActiveTrackColor;
    disabledInactiveTrackColor ??= v.disabledInactiveTrackColor;
    activeTickMarkColor ??= v.activeTickMarkColor;
    inactiveTickMarkColor ??= v.inactiveTickMarkColor;
    disabledActiveTickMarkColor ??= v.disabledActiveTickMarkColor;
    disabledInactiveTickMarkColor ??= v.disabledInactiveTickMarkColor;
    overlappingShapeStrokeColor ??= v.overlappingShapeStrokeColor;
    disabledThumbColor ??= v.disabledThumbColor;
    overlayColor ??= v.overlayColor;
    valueIndicatorColor ??= v.valueIndicatorColor;
    overlayShape ??= v.overlayShape;
    tickMarkShape ??= v.tickMarkShape;
    thumbShape ??= v.thumbShape;
    trackShape ??= v.trackShape;
    valueIndicatorShape ??= v.valueIndicatorShape;
    rangeTickMarkShape ??= v.rangeTickMarkShape;
    rangeThumbShape ??= v.rangeThumbShape;
    rangeTrackShape ??= v.rangeTrackShape;
    rangeValueIndicatorShape ??= v.rangeValueIndicatorShape;
    showValueIndicator ??= v.showValueIndicator;
    valueIndicatorTextStyle?.apply = v.valueIndicatorTextStyle;
    minThumbSeparation ??= v.minThumbSeparation;
    thumbSelector ??= v.thumbSelector;
  }

  SliderTheme get value => SliderTheme(
        data: SliderThemeData(
          trackHeight: trackHeight,
          activeTrackColor: activeTrackColor,
          inactiveTrackColor: inactiveTrackColor,
          disabledActiveTrackColor: disabledActiveTrackColor,
          disabledInactiveTrackColor: disabledInactiveTrackColor,
          activeTickMarkColor: activeTickMarkColor,
          inactiveTickMarkColor: inactiveTickMarkColor,
          disabledActiveTickMarkColor: disabledActiveTickMarkColor,
          disabledInactiveTickMarkColor: disabledInactiveTickMarkColor,
          overlappingShapeStrokeColor: overlappingShapeStrokeColor,
          disabledThumbColor: disabledThumbColor,
          overlayColor: overlayColor,
          valueIndicatorColor: valueIndicatorColor,
          overlayShape: overlayShape,
          tickMarkShape: tickMarkShape,
          thumbShape: thumbShape,
          trackShape: trackShape,
          valueIndicatorShape: valueIndicatorShape,
          rangeTickMarkShape: rangeTickMarkShape,
          rangeThumbShape: rangeThumbShape,
          rangeTrackShape: rangeTrackShape,
          rangeValueIndicatorShape: rangeValueIndicatorShape,
          showValueIndicator: showValueIndicator,
          valueIndicatorTextStyle: valueIndicatorTextStyle?.value,
          minThumbSeparation: minThumbSeparation,
          thumbSelector: thumbSelector,
        ),
        child: RangeSlider(
          values: data,
          onChanged: onChanged,
          onChangeStart: onChangeStart,
          onChangeEnd: onChangeEnd,
          min: min ?? 0,
          max: max ?? 1,
          divisions: divisions,
          labels: labels,
          activeColor: activeColor,
          inactiveColor: inactiveColor,
          semanticFormatterCallback: semanticFormatterCallback,
        ),
      );
}
