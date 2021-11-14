import 'package:circle/widgets/app_bar_widget.dart';
import 'package:circle/widgets/floating_action_button_widget.dart';
import 'package:circle/widgets/fractionally_sized_box.dart';
import 'package:circle/widgets/posted_card_widget.dart';
import 'package:circle/widgets/safe_area_widget.dart';
import 'package:circle/widgets/single_child_scroll_view_widget.dart';
import 'package:circle/widgets/text_form_field_widget.dart';
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
        title: Text(
          "circle".trArgs(['John']),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.mark_email_unread_outlined,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.calendar_today_outlined,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add_alert_rounded,
            ),
          ),
          const CircleAvatar(
            radius: 20,
            backgroundColor: Colors.white,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButtonWidget(
        onPressed: () {
          print('add new');
        },
      ),
      body: SingleChildScrollViewWidget(
        child: SafeAreaWidget(
          child: WrapWidget(
            children: [
              Container(),
              Center(
                child: FractionallySizedBoxWidget(
                  child: TextFormFieldWidget(
                    labelText: 'Search',
                    onChanged: (String string) {
                      print(string);
                    },
                  ),
                ),
              ),
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
