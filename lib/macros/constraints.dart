abstract class ConstraintsMacro {
  double? minWidth;
  double? maxWidth;
  double? minHeight;
  double? maxHeight;

  void get fullWidth {
    minWidth = double.infinity;
    maxWidth = double.infinity;
  }

  void get fullHeight {
    maxHeight = double.infinity;
    maxHeight = double.infinity;
  }

  void get fullSize {
    minWidth = double.infinity;
    maxWidth = double.infinity;
  }

  set minSize(List<double> list) {
    minWidth = list[0];
    minHeight = list[1];
  }

  set maxSize(List<double> list) {
    maxWidth = list[0];
    maxHeight = list[1];
  }
}
