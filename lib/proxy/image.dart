import 'package:niku/niku.dart';

extension NikuImageProxy on NikuImage {
  double get rounded {
    useParent((v) => v..rounded);

    return 99999;
  }

  set rounded(double radius) => useParent((v) => v..rounded = radius);
}
