import 'package:flutter/material.dart';

import 'package:niku/namespace.dart' as n;

class Progress extends StatelessWidget {
  const Progress({
    Key? key,
    required this.progress,
    required this.color,
    required this.background,
  }) : super(key: key);

  final double progress;
  final Color color;
  final Color background;

  @override
  build(_) => n.Box()
    ..bg = color
    ..useTransition<double>(
      value: progress,
      builder: (c, v) => c..wFactor = v,
    )
    ..h = 3
    ..centerLeft
    ..bg = background
    ..wFull
    ..rounded;
}

// Native Flutter
// import 'package:flutter/material.dart';

// class Progress extends StatefulWidget {
//   const Progress({
//     Key key,
//     @required this.progress,
//   }) : super(key: key);

//   final double progress;

//   @override
//   _ProgressState createState() => _ProgressState();
// }

// class _ProgressState extends State<Progress>
//     with SingleTickerProviderStateMixin {
//   late final AnimationController animatedProgress;

//   @override
//   void initState() {
//     super.initState();
//     animatedProgress = AnimationController(
//       duration: const Duration(milliseconds: 500),
//       vsync: this,
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     final double progression = widget.progress.isNaN ? 1 : widget.progress;

//     animatedProgress.animateTo(progression, curve: Curves.easeOutBack);

//     return Container(
//       height: 3,
//       decoration: BoxDecoration(borderRadius: BorderRadius.circular(6)),
//       child: FractionallySizedBox(
//         widthFactor: 1,
//         child: ColoredBox(
//           color: Colors.grey.shade200,
//           child: Align(
//             alignment: Alignment.centerLeft,
//             child: SizedBox(
//               height: 3,
//               child: AnimatedBuilder(
//                 animation: animatedProgress,
//                 builder: (context, child) => FractionallySizedBox(
//                   widthFactor: animatedProgress.value,
//                   child: child,
//                 ),
//                 child: ColoredBox(
//                   color: Colors.blue,
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }