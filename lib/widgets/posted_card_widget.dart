import 'package:circle/widgets/card_widget.dart';
import 'package:circle/widgets/fractionally_sized_box.dart';
import 'package:flutter/material.dart';

class PostedCardWidget extends StatelessWidget {
  final Function()? onTap;

  const PostedCardWidget({
    Key? key,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CardWidget(
      child: InkWell(
        onTap: () {},
        child: FractionallySizedBoxWidget(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 16.0,
            ),
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    'title 1',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ),
                Flex(
                  direction: Axis.horizontal,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Stack(
                        children: [
                          for (var i = 0; i < 5; i++)
                            Opacity(
                              opacity: 0.1,
                              child: CircleAvatar(
                                radius: 20 + i.toDouble(),
                                backgroundColor: Colors.green,
                              ),
                            )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 8,
                      child: Column(
                        children: [
                          Text(
                            'title 2',
                            style: Theme.of(context).textTheme.subtitle2,
                          ),
                          Text(
                            'body 2',
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
