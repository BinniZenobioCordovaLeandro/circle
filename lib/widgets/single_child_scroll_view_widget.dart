import 'package:flutter/material.dart';

class SingleChildScrollViewWidget extends StatelessWidget {
  final Widget? child;
  final ScrollPhysics? physics;

  const SingleChildScrollViewWidget({
    Key? key,
    this.child,
    this.physics = const BouncingScrollPhysics(),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: physics,
      child: child,
    );
  }
}
