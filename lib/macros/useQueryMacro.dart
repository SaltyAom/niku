import 'package:flutter/material.dart';

abstract class UseQueryMacro<T extends Widget> {
  set apply(T? v) {}

  T get copied {
    return SizedBox.shrink() as T;
  }

  void useQuery(BuildContext context, T Function(T, MediaQueryData) builder) {
    apply = builder(copied, MediaQuery.of(context));
  }

  void useSize(BuildContext context, T Function(T, Size) builder) {
    apply = builder(copied, MediaQuery.of(context).size);
  }

  void useDarkMode(BuildContext context, T Function(T, bool) builder) {
    apply = builder(copied, Theme.of(context).brightness == Brightness.dark);
  }

  /// ```dart
  /// void useScreen({
  ///   // > 568px
  ///   Widget Function(Niku)? base,
  ///   // 568 - 640px
  ///   Widget Function(Niku)? xs,
  ///   // 640 - 768px
  ///   Widget Function(Niku)? sm,
  ///   // 768 - 920px
  ///   Widget Function(Niku)? md,
  ///   // 920 - 1024px
  ///   Widget Function(Niku)? lg,
  ///   // > 1024px
  ///   Widget Function(Niku)? xl,
  /// })
  /// ```
  void useScreen(
    BuildContext context, {
    // > 568px
    T Function(T)? base,
    // 568 - 640px
    T Function(T)? xs,
    // 640 - 768px
    T Function(T)? sm,
    // 768 - 920px
    T Function(T)? md,
    // 920 - 1024px
    T Function(T)? lg,
    // > 1024px
    T Function(T)? xl,
  }) {
    final width = MediaQuery.of(context).size.width;

    if (width < 568) {
      if (base != null) {
        apply = base(copied);

        return;
      }

      apply = copied;
    }

    if (width < 640) {
      if (xs != null) {
        apply = xs(copied);
        return;
      }
      if (base != null) {
        apply = base(copied);
        return;
      }

      apply = copied;
    }

    if (width < 720) {
      if (sm != null) {
        apply = sm(copied);
        return;
      }
      if (xs != null) {
        apply = xs(copied);
        return;
      }
      if (base != null) {
        apply = base(copied);
        return;
      }

      apply = copied;
    }

    if (width < 920) {
      if (md != null) {
        apply = md(copied);
        return;
      }
      if (sm != null) {
        apply = sm(copied);
        return;
      }
      if (xs != null) {
        apply = xs(copied);
        return;
      }
      if (base != null) {
        apply = base(copied);
        return;
      }

      apply = copied;
    }

    if (width < 1024) {
      if (lg != null) {
        apply = lg(copied);
        return;
      }
      if (md != null) {
        apply = md(copied);
        return;
      }
      if (sm != null) {
        apply = sm(copied);
        return;
      }
      if (xs != null) {
        apply = xs(copied);
        return;
      }
      if (base != null) {
        apply = base(copied);
        return;
      }

      apply = copied;
    }

    if (xl != null) {
      apply = xl(copied);
      return;
    }
    if (lg != null) {
      apply = lg(copied);
      return;
    }
    if (md != null) {
      apply = md(copied);
      return;
    }
    if (sm != null) {
      apply = sm(copied);
      return;
    }
    if (xs != null) {
      apply = xs(copied);
      return;
    }
    if (base != null) {
      apply = base(copied);
      return;
    }
  }
}
