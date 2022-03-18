import 'package:flutter/material.dart';
import 'package:collection/collection.dart';

import 'package:niku/niku.dart';

class NikuAnimateds<T> extends StatefulWidget {
  NikuAnimateds({
    Key? key,
    required this.dependencies,
    required this.builder,
    required this.child,
    this.duration = const Duration(milliseconds: 200),
    this.curve = Curves.linear,
  }) : super(key: key);

  final List dependencies;
  final Widget Function(Niku niku, List value) builder;
  final T child;
  final Duration duration;
  final Curve curve;

  @override
  NikuAnimatedsState<T> createState() => NikuAnimatedsState<T>(this.builder);
}

class NikuAnimatedsState<T> extends State<NikuAnimateds>
    with TickerProviderStateMixin {
  NikuAnimatedsState(this.builder);

  final Widget Function(Niku niku, List value) builder;

  List? previous;

  late final AnimationController controller;
  List? animateds;

  static parse(dynamic v) {
    if (v is int) return v.toDouble();

    return v;
  }

  @override
  void initState() {
    super.initState();

    previous = [...widget.dependencies];
    animateds = [...widget.dependencies];

    controller = AnimationController(vsync: this, duration: widget.duration);
  }

  handleChange() {
    final deps = widget.dependencies;

    bool dirty = false;

    deps.forEachIndexed((index, current) {
      final prev = previous![index];

      if (current == prev) return;

      if (prev is Color) {
        final tween = ColorTween(begin: prev, end: current);
        final animation = tween.animate(CurvedAnimation(
          parent: controller,
          curve: widget.curve,
        ));

        controller.addListener(() {
          setState(() {
            animateds![index] = animation.value ?? prev;
          });
        });
      } else {
        final tween = Tween(begin: parse(prev), end: parse(current));
        final animation = tween.animate(CurvedAnimation(
          parent: controller,
          curve: widget.curve,
        ));

        controller.addListener(() {
          setState(() {
            animateds![index] = animation.value;
          });
        });
      }

      previous![index] = current;
      dirty = true;
    });

    if (dirty) {
      controller.reset();
      controller.forward();
    }
  }

  @override
  build(context) {
    handleChange();

    return builder(Niku(widget.child), animateds!);
  }
}
