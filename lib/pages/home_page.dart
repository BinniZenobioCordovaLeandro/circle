import 'package:circle/widgets/app_bar_widget.dart';
import 'package:circle/widgets/fractionally_sized_box.dart';
import 'package:circle/widgets/posted_card_widget.dart';
import 'package:circle/widgets/safe_area_widget.dart';
import 'package:circle/widgets/single_child_scroll_view_widget.dart';
import 'package:circle/widgets/wrap_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: Text("circle".trArgs(['John'])),
      ),
      body: SingleChildScrollViewWidget(
        child: SafeAreaWidget(
          child: WrapWidget(
            children: [
              for (var i = 0; i < 15; i++)
                const Center(
                  child: FractionallySizedBoxWidget(
                    child: PostedCardWidget(),
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
