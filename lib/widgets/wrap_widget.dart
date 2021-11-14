import 'package:flutter/material.dart';

class WrapWidget extends StatelessWidget {
  final List<Widget> children;
  final double spacing;
  final double runSpacing;

  const WrapWidget({
    Key? key,
    required this.children,
    this.spacing = 16.0,
    this.runSpacing = 16.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      runAlignment: WrapAlignment.center,
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: spacing,
      runSpacing: runSpacing,
      children: children,
    );
  }
}
