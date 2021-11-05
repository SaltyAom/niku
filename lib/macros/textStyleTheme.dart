import 'package:flutter/material.dart';

import '../objects/textStyle.dart';

abstract class TextStyleThemeMacro {
  set apply(NikuTextStyle? style);

  set h1(BuildContext context) =>
      apply = Theme.of(context).textTheme.headline1?.niku;
  set h2(BuildContext context) =>
      apply = Theme.of(context).textTheme.headline2?.niku;
  set h3(BuildContext context) =>
      apply = Theme.of(context).textTheme.headline3?.niku;
  set h4(BuildContext context) =>
      apply = Theme.of(context).textTheme.headline4?.niku;
  set h5(BuildContext context) =>
      apply = Theme.of(context).textTheme.headline5?.niku;
  set h6(BuildContext context) =>
      apply = Theme.of(context).textTheme.headline6?.niku;
  set body1(BuildContext context) =>
      apply = Theme.of(context).textTheme.bodyText1?.niku;
  set body2(BuildContext context) =>
      apply = Theme.of(context).textTheme.bodyText2?.niku;
  set subtitle1(BuildContext context) =>
      apply = Theme.of(context).textTheme.subtitle1?.niku;
  set subtitle2(BuildContext context) =>
      apply = Theme.of(context).textTheme.subtitle2?.niku;
  set overline(BuildContext context) =>
      apply = Theme.of(context).textTheme.overline?.niku;
  set button(BuildContext context) =>
      apply = Theme.of(context).textTheme.button?.niku;
}
