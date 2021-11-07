import 'package:flutter/material.dart';

import '../objects/textStyle.dart';

abstract class TextStyleThemeMacro {
  set apply(NikuTextStyle? style);

  set h1(BuildContext context) =>
      apply = Theme.of(context).textTheme.headline1?.asNiku;
  set h2(BuildContext context) =>
      apply = Theme.of(context).textTheme.headline2?.asNiku;
  set h3(BuildContext context) =>
      apply = Theme.of(context).textTheme.headline3?.asNiku;
  set h4(BuildContext context) =>
      apply = Theme.of(context).textTheme.headline4?.asNiku;
  set h5(BuildContext context) =>
      apply = Theme.of(context).textTheme.headline5?.asNiku;
  set h6(BuildContext context) =>
      apply = Theme.of(context).textTheme.headline6?.asNiku;
  set body1(BuildContext context) =>
      apply = Theme.of(context).textTheme.bodyText1?.asNiku;
  set body2(BuildContext context) =>
      apply = Theme.of(context).textTheme.bodyText2?.asNiku;
  set subtitle1(BuildContext context) =>
      apply = Theme.of(context).textTheme.subtitle1?.asNiku;
  set subtitle2(BuildContext context) =>
      apply = Theme.of(context).textTheme.subtitle2?.asNiku;
  set overline(BuildContext context) =>
      apply = Theme.of(context).textTheme.overline?.asNiku;
  set button(BuildContext context) =>
      apply = Theme.of(context).textTheme.button?.asNiku;
}
