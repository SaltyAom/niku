import 'package:flutter/material.dart';

import 'package:niku/niku.dart';

extension NikuStringTransform on String {
  NikuText get n => NikuText(this);
  NikuText get asNiku => NikuText(this);

  NikuText get h1 => n..h1;
  NikuText get h2 => n..h2;
  NikuText get h3 => n..h3;
  NikuText get h4 => n..h4;
  NikuText get h5 => n..h5;
  NikuText get h6 => n..h6;
  NikuText get body1 => n..body1;
  NikuText get body2 => n..body2;
  NikuText get subtitle1 => n..subtitle1;
  NikuText get subtitle2 => n..subtitle2;
  NikuText get overline => n..overline;
  NikuText get button => n..button;

  NikuText get displayLarge => n..displayLarge;
  NikuText get displayMedium => n..displayMedium;
  NikuText get displaySmall => n..displaySmall;
  NikuText get titleLarge => n..titleLarge;
  NikuText get titleMedium => n..titleMedium;
  NikuText get titleSmall => n..titleSmall;
  NikuText get bodyLarge => n..bodyLarge;
  NikuText get bodyMedium => n..bodyMedium;
  NikuText get bodySmall => n..bodySmall;
  NikuText get labelLarge => n..labelLarge;
  NikuText get labelMedium => n..labelMedium;
  NikuText get labelSmall => n..labelSmall;
}

class _NikuListTransform {
  final List<Widget> data;

  _NikuListTransform(this.data);

  NikuColumn get col => NikuColumn(data);
  NikuRow get row => NikuRow(data);
  NikuWrap get wrap => NikuWrap(data);
  NikuStack get stack => NikuStack(data);
  _NikuListTransformBuilder get list => _NikuListTransformBuilder(data);
}

class _NikuListTransformBuilder {
  final List<Widget> data;

  _NikuListTransformBuilder(this.data);

  Widget get builder => NikuListView.builder()
    ..itemCount = data.length
    ..useItemBuilder(
      (context, index) => data[index].niku
        ..key = Key(
          index.toString(),
        ),
    );

  Widget get separated => NikuListView.separated()
    ..itemCount = data.length
    ..useItemBuilder(
      (context, index) => data[index].niku
        ..key = Key(
          index.toString(),
        ),
    );
}

extension NikuListTransform on List<Widget> {
  _NikuListTransform get n => _NikuListTransform(this);
  _NikuListTransform get asNiku => _NikuListTransform(this);
}

extension NikuIconDataTransform on IconData {
  NikuIcon get n => NikuIcon(this);
  NikuIcon get asNiku => NikuIcon(this);
}
