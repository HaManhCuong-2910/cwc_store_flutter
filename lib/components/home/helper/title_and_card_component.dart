import 'package:cwc_store/components/common/text_common_component.dart';
import 'package:cwc_store/components/home/helper/card_component.dart';
import 'package:flutter/material.dart';

class TitleAndCardComponent extends StatefulWidget {
  const TitleAndCardComponent(
      {super.key, this.title = '', this.listChild = const []});
  final String title;
  final List<dynamic> listChild;
  @override
  State<TitleAndCardComponent> createState() => _TitleAndCardComponent();
}

class _TitleAndCardComponent extends State<TitleAndCardComponent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextCommon(
          widget.title,
          style: const TextStyle(fontSize: 20.0),
        ),
        Container(
          margin: const EdgeInsets.only(top: 16),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              for (int x = 1; x <= 3; x++) const CardComponent(),
            ]),
          ),
        )
      ],
    );
  }
}
