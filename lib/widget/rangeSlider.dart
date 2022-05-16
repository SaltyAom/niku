import 'package:flutter/material.dart';

import '../macros/macros.dart';
import '../objects/objects.dart';

// ignore: must_be_immutable
class NikuRangeSlider extends StatelessWidget
    with
        NikuBuildMacro<NikuRangeSlider>,
        ApplyTextMacro,
        ApplyValueIndicatorTextStyleMacro,
        FocusNodeMacro {
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

  NikuRangeSlider get self => this;

  set apply(NikuRangeSlider? v) {
    if (v == null) return;
    if (valueIndicatorTextStyle == null)
      valueIndicatorTextStyle = NikuTextStyle();

    onChanged = v.onChanged ?? onChanged;
    onChangeStart = v.onChangeStart ?? onChangeStart;
    onChangeEnd = v.onChangeEnd ?? onChangeEnd;
    min = v.min ?? min;
    max = v.max ?? max;
    divisions = v.divisions ?? divisions;
    labels = v.labels ?? labels;
    activeColor = v.activeColor ?? activeColor;
    inactiveColor = v.inactiveColor ?? inactiveColor;
    thumbColor = v.thumbColor ?? thumbColor;
    mouseCursor = v.mouseCursor ?? mouseCursor;
    semanticFormatterCallback =
        v.semanticFormatterCallback ?? semanticFormatterCallback;
    focusNode = v.focusNode ?? focusNode;
    autofocus = v.autofocus ?? autofocus;
    trackHeight = v.trackHeight ?? trackHeight;
    activeTrackColor = v.activeTrackColor ?? activeTrackColor;
    inactiveTrackColor = v.inactiveTrackColor ?? inactiveTrackColor;
    disabledActiveTrackColor =
        v.disabledActiveTrackColor ?? disabledActiveTrackColor;
    disabledInactiveTrackColor =
        v.disabledInactiveTrackColor ?? disabledInactiveTrackColor;
    activeTickMarkColor = v.activeTickMarkColor ?? activeTickMarkColor;
    inactiveTickMarkColor = v.inactiveTickMarkColor ?? inactiveTickMarkColor;
    disabledActiveTickMarkColor =
        v.disabledActiveTickMarkColor ?? disabledActiveTickMarkColor;
    disabledInactiveTickMarkColor =
        v.disabledInactiveTickMarkColor ?? disabledInactiveTickMarkColor;
    overlappingShapeStrokeColor =
        v.overlappingShapeStrokeColor ?? overlappingShapeStrokeColor;
    disabledThumbColor = v.disabledThumbColor ?? disabledThumbColor;
    overlayColor = v.overlayColor ?? overlayColor;
    valueIndicatorColor = v.valueIndicatorColor ?? valueIndicatorColor;
    overlayShape = v.overlayShape ?? overlayShape;
    tickMarkShape = v.tickMarkShape ?? tickMarkShape;
    thumbShape = v.thumbShape ?? thumbShape;
    trackShape = v.trackShape ?? trackShape;
    valueIndicatorShape = v.valueIndicatorShape ?? valueIndicatorShape;
    rangeTickMarkShape = v.rangeTickMarkShape ?? rangeTickMarkShape;
    rangeThumbShape = v.rangeThumbShape ?? rangeThumbShape;
    rangeTrackShape = v.rangeTrackShape ?? rangeTrackShape;
    rangeValueIndicatorShape =
        v.rangeValueIndicatorShape ?? rangeValueIndicatorShape;
    showValueIndicator = v.showValueIndicator ?? showValueIndicator;
    valueIndicatorTextStyle?.apply =
        v.valueIndicatorTextStyle ?? valueIndicatorTextStyle;
    minThumbSeparation = v.minThumbSeparation ?? minThumbSeparation;
    thumbSelector = v.thumbSelector ?? thumbSelector;
    $parent..$merge(v.$parent);
  }

  NikuRangeSlider get copied => NikuRangeSlider(
        data,
        key: key,
        onChanged: onChanged,
        onChangeStart: onChangeStart,
        onChangeEnd: onChangeEnd,
        min: min,
        max: max,
        divisions: divisions,
        labels: labels,
        activeColor: activeColor,
        inactiveColor: inactiveColor,
        thumbColor: thumbColor,
        mouseCursor: mouseCursor,
        semanticFormatterCallback: semanticFormatterCallback,
        focusNode: focusNode,
        autofocus: autofocus,
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
        valueIndicatorTextStyle: valueIndicatorTextStyle,
        minThumbSeparation: minThumbSeparation,
        thumbSelector: thumbSelector,
      )..$parent.$merge($parent);

  widget(context) => SliderTheme(
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
