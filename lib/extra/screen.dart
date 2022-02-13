import 'package:flutter/material.dart';

import 'package:niku/widget/niku.dart';

class NikuScreen extends StatelessWidget {
  final Widget child;
  final Widget Function(Niku)? base;
  final Widget Function(Niku)? xs;
  final Widget Function(Niku)? sm;
  final Widget Function(Niku)? md;
  final Widget Function(Niku)? lg;
  final Widget Function(Niku)? xl;

  const NikuScreen({
    Key? key,
    required this.child,
    this.base,
    this.xs,
    this.sm,
    this.md,
    this.lg,
    this.xl,
  }) : super(key: key);

  build(context) {
    final _w = child.niku;

    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;

        if (width < 568) {
          if (base != null) return base!(_w);

          return child;
        }

        if (width < 640) {
          if (xs != null) return xs!(_w);
          if (base != null) return base!(_w);

          return child;
        }

        if (width < 720) {
          if (sm != null) return sm!(_w);
          if (xs != null) return xs!(_w);
          if (base != null) return base!(_w);

          return child;
        }

        if (width < 920) {
          if (md != null) return md!(_w);
          if (sm != null) return sm!(_w);
          if (xs != null) return xs!(_w);
          if (base != null) return base!(_w);

          return child;
        }

        if (width < 1024) {
          if (lg != null) return lg!(_w);
          if (md != null) return md!(_w);
          if (sm != null) return sm!(_w);
          if (xs != null) return xs!(_w);
          if (base != null) return base!(_w);

          return child;
        }

        if (xl != null) return xl!(_w);
        if (lg != null) return lg!(_w);
        if (md != null) return md!(_w);
        if (sm != null) return sm!(_w);
        if (xs != null) return xs!(_w);
        if (base != null) return base!(_w);

        return child;
      },
    );
  }
}
