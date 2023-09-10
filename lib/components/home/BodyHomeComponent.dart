// ignore: file_names
import 'package:flutter/material.dart';

import 'helper/TitleAndCardComponent.dart';

class BodyHomeComponent extends StatelessWidget {
  const BodyHomeComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(16.0, 20.0, 0, 0),
          child: const TitleAndCardComponent(
              title: 'More of what you like', listChild: []),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(16.0, 20.0, 0, 0),
          child: const TitleAndCardComponent(
              title: 'More of what you like', listChild: []),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(16.0, 20.0, 0, 0),
          child: const TitleAndCardComponent(
              title: 'More of what you like', listChild: []),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(16.0, 20.0, 0, 0),
          child: const TitleAndCardComponent(
              title: 'More of what you like', listChild: []),
        )
      ],
    );
  }
}
