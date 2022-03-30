import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../macros/macros.dart';
import '../objects/objects.dart';

enum NikuSliderType { material, adaptive, cupertino }

// ignore: must_be_immutable
class NikuSlider extends StatelessWidget
    with
        NikuBuildMacro<NikuSlider>,
        ApplyTextMacro,
        ApplyValueIndicatorTextStyleMacro,
        FocusNodeMacro {
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

  NikuSlider get self => this;

  set apply(NikuSlider? v) {
    if (v == null) return;
    if (valueIndicatorTextStyle == null)
      valueIndicatorTextStyle = NikuTextStyle();

    sliderType = v.sliderType ?? sliderType;
    onChanged = v.onChanged ?? onChanged;
    onChangeStart = v.onChangeStart ?? onChangeStart;
    onChangeEnd = v.onChangeEnd ?? onChangeEnd;
    min = v.min ?? min;
    max = v.max ?? max;
    divisions = v.divisions ?? divisions;
    label = v.label ?? label;
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
    valueIndicatorTextStyle?.apply = v.valueIndicatorTextStyle;
    minThumbSeparation = v.minThumbSeparation ?? minThumbSeparation;
    thumbSelector = v.thumbSelector ?? thumbSelector;

    $parent..$merge(v.$parent);
  }

  NikuSlider get copied => NikuSlider(
        data,
        key: key,
        sliderType: sliderType,
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
      )..$parent.$merge($parent);

  SliderTheme get widget => SliderTheme(
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
                    ),
                  )
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
