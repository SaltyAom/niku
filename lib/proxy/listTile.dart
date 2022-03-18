import 'package:flutter/material.dart';

import 'package:niku/niku.dart';

extension ListTileProxy on NikuListTile {
  void useDismiss(Key key, NikuDismissible Function(NikuDismissible) builder) {
    useParent((child) => builder(NikuDismissible(key, child: child)));
  }
}
