import 'package:flutter/material.dart';

import 'package:niku/niku.dart';

extension NikuStringTransform on String {
  NikuText get n => NikuText(this);
  NikuText get asNiku => NikuText(this);

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
