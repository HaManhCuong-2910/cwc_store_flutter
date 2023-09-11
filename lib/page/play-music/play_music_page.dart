import 'package:cwc_store/components/play-music/header_play_component.dart';
import 'package:flutter/material.dart';

class PlayMusicPage extends StatefulWidget {
  const PlayMusicPage({super.key});

  @override
  State<PlayMusicPage> createState() => _PlayMusicPageState();
}

class _PlayMusicPageState extends State<PlayMusicPage> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Column(
      children: [HeaderPlayComponent()],
    ));
  }
}
