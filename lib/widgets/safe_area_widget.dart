import 'package:flutter/material.dart';

class SafeAreaWidget extends StatelessWidget {
  final bool left;
  final bool right;
  final bool top;
  final bool bottom;
  final EdgeInsets minimum;
  final Widget child;
  final bool maintainBottomViewPadding;

  const SafeAreaWidget({
    Key? key,
    this.left = true,
    this.right = true,
    this.top = true,
    this.bottom = true,
    this.minimum = EdgeInsets.zero,
    required this.child,
    this.maintainBottomViewPadding = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      left: left,
      top: top,
      right: right,
      bottom: bottom,
      minimum: minimum,
      maintainBottomViewPadding: maintainBottomViewPadding,
      child: child,
    );
  }
}
