import 'package:flutter/material.dart';

class FloatingActionButtonWidget extends StatelessWidget {
  final Function()? onPressed;

  const FloatingActionButtonWidget({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(
        Icons.add_circle_outline_sharp,
      ),
      onPressed: onPressed,
    );
  }
}
