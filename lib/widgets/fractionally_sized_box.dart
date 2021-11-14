import 'package:flutter/material.dart';

class FractionallySizedBoxWidget extends StatelessWidget {
  final double? widthFactor;
  final Widget? child;

  const FractionallySizedBoxWidget({
    Key? key,
    this.widthFactor = 0.9,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: widthFactor,
      child: child,
    );
  }
}
