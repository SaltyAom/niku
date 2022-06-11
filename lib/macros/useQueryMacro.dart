import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

abstract class UseQueryMacro<T extends Widget> {
  T get self => this as T;
  T get copied {
    return SizedBox.shrink() as T;
  }

  void useQuery(BuildContext context, T Function(T, MediaQueryData) builder) {
    builder(self, MediaQuery.of(context));
  }

  void useSize(BuildContext context, T Function(T, Size) builder) {
    builder(self, MediaQuery.of(context).size);
  }

  void useDarkMode(BuildContext context, T Function(T, bool) builder) {
    builder(self, Theme.of(context).brightness == Brightness.dark);
  }

  void useThemeSelector(
    BuildContext context, {
    required T Function(T) light,
    required T Function(T) dark,
  }) {
    Theme.of(context).brightness == Brightness.dark ? dark(self) : light(self);
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
      if (base != null) base(copied);

      return;
    }

    if (width < 640) {
      if (xs != null)
        xs(self);
      else if (base != null) base(self);

      return;
    }

    if (width < 720) {
      if (sm != null)
        sm(self);
      else if (xs != null)
        xs(self);
      else if (base != null) base(self);

      return;
    }

    if (width < 920) {
      if (md != null)
        md(self);
      else if (sm != null)
        sm(self);
      else if (xs != null)
        xs(self);
      else if (base != null) base(self);

      return;
    }

    if (width < 1024) {
      if (lg != null)
        lg(self);
      else if (md != null)
        md(self);
      else if (sm != null)
        sm(self);
      else if (xs != null)
        xs(self);
      else if (base != null) base(self);
    }

    if (xl != null)
      xl(self);
    else if (lg != null)
      lg(self);
    else if (md != null)
      md(self);
    else if (sm != null)
      sm(self);
    else if (xs != null)
      xs(self);
    else if (base != null) base(self);
  }

  void usePlatform(
    BuildContext context, {
    T Function(T)? android,
    T Function(T)? iOS,
    T Function(T)? fuchsia,
    T Function(T)? linux,
    T Function(T)? macOS,
    T Function(T)? windows,
    T Function(T)? web,
  }) {
    fallback(T Function(T)? builder) {
      if (builder != null) builder(self);
    }

    if (kIsWeb)
      fallback(web);
    else
      switch (Theme.of(context).platform) {
        case TargetPlatform.android:
          fallback(android);
          break;

        case TargetPlatform.iOS:
          fallback(iOS);
          break;

        case TargetPlatform.fuchsia:
          fallback(fuchsia);
          break;

        case TargetPlatform.linux:
          fallback(linux);
          break;

        case TargetPlatform.macOS:
          fallback(macOS);
          break;

        case TargetPlatform.windows:
          fallback(windows);
          break;
      }
  }
}
