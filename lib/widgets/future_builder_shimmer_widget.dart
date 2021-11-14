import 'package:circle/widgets/shimmer_widget.dart';
import 'package:flutter/material.dart';

class FutureBuilderShimmerWidget extends StatelessWidget {
  final Future? future;
  final dynamic initialData;
  final Widget Function(BuildContext context, AsyncSnapshot snapshot) builder;

  const FutureBuilderShimmerWidget({
    Key? key,
    required this.future,
    required this.initialData,
    required this.builder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: future,
      initialData: initialData,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return ShimmerWidget(
          enabled: !(snapshot.connectionState == ConnectionState.done),
          child: builder(context, snapshot),
        );
      },
    );
  }
}
