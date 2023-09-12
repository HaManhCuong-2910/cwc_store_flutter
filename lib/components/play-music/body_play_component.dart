import 'package:cwc_store/components/play-music/header_play_component.dart';
import 'package:flutter/material.dart';

class BodyPlayMusic extends StatelessWidget {
  const BodyPlayMusic({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(top: 0, child: HeaderPlayComponent()),
      ],
    );
  }
}
