import 'package:cwc_store/components/play-music/body_play_component.dart';
import 'package:cwc_store/theme/app_theme.dart';
import 'package:flutter/material.dart';

class PlayMusicPage extends StatefulWidget {
  const PlayMusicPage({super.key});

  @override
  State<PlayMusicPage> createState() => _PlayMusicPageState();
}

class _PlayMusicPageState extends State<PlayMusicPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(ImagesCommon.anhTestNhac),
                fit: BoxFit.cover)),
        child: const BodyPlayMusic(),
      ),
    ));
  }
}
