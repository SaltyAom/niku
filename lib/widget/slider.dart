import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../macros/macros.dart';
import '../objects/objects.dart';

enum NikuSliderType { material, adaptive, cupertino }

// ignore: must_be_immutable
class NikuSlider extends StatelessWidget
    with NikuBuildMacro, ApplyTextMacro, ApplyValueIndicatorTextStyleMacro {
  double data;

  NikuSliderType? sliderType;
  ValueChanged<double>? onChanged;
  ValueChanged<double>? onChangeStart;
  ValueChanged<double>? onChangeEnd;
  double? min;
  double? max;
  int? divisions;
  String? label;
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

  NikuSlider(
    this.data, {
    Key? key,
    this.sliderType,
    this.onChanged,
    this.onChangeStart,
    this.onChangeEnd,
    this.min,
    this.max,
    this.divisions,
    this.label,
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

  factory NikuSlider.adaptive(
    double data, {
    Key? key,
    ValueChanged<double>? onChanged,
    ValueChanged<double>? onChangeStart,
    ValueChanged<double>? onChangeEnd,
    double? min,
    double? max,
    int? divisions,
    String? label,
    Color? activeColor,
    Color? inactiveColor,
    Color? thumbColor,
    MouseCursor? mouseCursor,
    SemanticFormatterCallback? semanticFormatterCallback,
    FocusNode? focusNode,
    bool? autofocus,
    double? trackHeight,
    Color? activeTrackColor,
    Color? inactiveTrackColor,
    Color? disabledActiveTrackColor,
    Color? disabledInactiveTrackColor,
    Color? activeTickMarkColor,
    Color? inactiveTickMarkColor,
    Color? disabledActiveTickMarkColor,
    Color? disabledInactiveTickMarkColor,
    Color? overlappingShapeStrokeColor,
    Color? disabledThumbColor,
    Color? overlayColor,
    Color? valueIndicatorColor,
    SliderComponentShape? overlayShape,
    SliderTickMarkShape? tickMarkShape,
    SliderComponentShape? thumbShape,
    SliderTrackShape? trackShape,
    SliderComponentShape? valueIndicatorShape,
    RangeSliderTickMarkShape? rangeTickMarkShape,
    RangeSliderThumbShape? rangeThumbShape,
    RangeSliderTrackShape? rangeTrackShape,
    RangeSliderValueIndicatorShape? rangeValueIndicatorShape,
    ShowValueIndicator? showValueIndicator,
    NikuTextStyle? valueIndicatorTextStyle,
    double? minThumbSeparation,
    RangeThumbSelector? thumbSelector,
  }) =>
      NikuSlider(
        data,
        key: key,
        sliderType: NikuSliderType.adaptive,
        onChanged: onChanged,
        onChangeStart: onChangeStart,
        onChangeEnd: onChangeEnd,
        min: min,
        max: max,
        divisions: divisions,
        label: label,
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
      );

  factory NikuSlider.cupertino(
    double data, {
    Key? key,
    ValueChanged<double>? onChanged,
    ValueChanged<double>? onChangeStart,
    ValueChanged<double>? onChangeEnd,
    double? min,
    double? max,
    int? divisions,
    String? label,
    Color? activeColor,
    Color? inactiveColor,
    Color? thumbColor,
    MouseCursor? mouseCursor,
    SemanticFormatterCallback? semanticFormatterCallback,
    FocusNode? focusNode,
    bool? autofocus,
    double? trackHeight,
    Color? activeTrackColor,
    Color? inactiveTrackColor,
    Color? disabledActiveTrackColor,
    Color? disabledInactiveTrackColor,
    Color? activeTickMarkColor,
    Color? inactiveTickMarkColor,
    Color? disabledActiveTickMarkColor,
    Color? disabledInactiveTickMarkColor,
    Color? overlappingShapeStrokeColor,
    Color? disabledThumbColor,
    Color? overlayColor,
    Color? valueIndicatorColor,
    SliderComponentShape? overlayShape,
    SliderTickMarkShape? tickMarkShape,
    SliderComponentShape? thumbShape,
    SliderTrackShape? trackShape,
    SliderComponentShape? valueIndicatorShape,
    RangeSliderTickMarkShape? rangeTickMarkShape,
    RangeSliderThumbShape? rangeThumbShape,
    RangeSliderTrackShape? rangeTrackShape,
    RangeSliderValueIndicatorShape? rangeValueIndicatorShape,
    ShowValueIndicator? showValueIndicator,
    NikuTextStyle? valueIndicatorTextStyle,
    double? minThumbSeparation,
    RangeThumbSelector? thumbSelector,
  }) =>
      NikuSlider(
        data,
        key: key,
        sliderType: NikuSliderType.cupertino,
        onChanged: onChanged,
        onChangeStart: onChangeStart,
        onChangeEnd: onChangeEnd,
        min: min,
        max: max,
        divisions: divisions,
        label: label,
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
      );

  set apply(NikuSlider? v) {
    if (v == null) return;
    if (valueIndicatorTextStyle == null)
      valueIndicatorTextStyle = NikuTextStyle();

    sliderType ??= v.sliderType;
    onChanged ??= v.onChanged;
    onChangeStart ??= v.onChangeStart;
    onChangeEnd ??= v.onChangeEnd;
    min ??= v.min;
    max ??= v.max;
    divisions ??= v.divisions;
    label ??= v.label;
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
        child: sliderType == NikuSliderType.adaptive
            ? Slider.adaptive(
                value: data,
                onChanged: onChanged,
                onChangeStart: onChangeStart,
                onChangeEnd: onChangeEnd,
                min: min ?? 0,
                max: max ?? 1,
                divisions: divisions,
                label: label,
                activeColor: activeColor,
                inactiveColor: inactiveColor,
                thumbColor: thumbColor,
                mouseCursor: mouseCursor,
                semanticFormatterCallback: semanticFormatterCallback,
                focusNode: focusNode,
                autofocus: autofocus ?? false,
              )
            : sliderType == NikuSliderType.cupertino
                ? SizedBox(
                    // Copy from RangeSlider _buildCupertinoSlider
                    width: double.infinity,
                    child: CupertinoSlider(
                      value: data,
                      onChanged: onChanged,
                      onChangeStart: onChangeStart,
                      onChangeEnd: onChangeEnd,
                      min: min ?? 0,
                      max: max ?? 1,
                      divisions: divisions,
                      activeColor: activeColor,
                      thumbColor: thumbColor ?? CupertinoColors.white,
                    ))
                : Slider(
                    value: data,
                    onChanged: onChanged,
                    onChangeStart: onChangeStart,
                    onChangeEnd: onChangeEnd,
                    min: min ?? 0,
                    max: max ?? 1,
                    divisions: divisions,
                    label: label,
                    activeColor: activeColor,
                    inactiveColor: inactiveColor,
                    thumbColor: thumbColor,
                    mouseCursor: mouseCursor,
                    semanticFormatterCallback: semanticFormatterCallback,
                    focusNode: focusNode,
                    autofocus: autofocus ?? false,
                  ),
      );
}
