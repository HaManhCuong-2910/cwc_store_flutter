import 'package:cwc_store/components/play-music/body_play_component.dart';
import 'package:cwc_store/components/play-music/bottom/action_comment_component.dart';
import 'package:cwc_store/components/play-music/bottom/action_like_component.dart';
import 'package:cwc_store/models/play-music/state_song.dart';
import 'package:cwc_store/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PlayMusicPage extends ConsumerStatefulWidget {
  const PlayMusicPage({super.key});

  @override
  ConsumerState<PlayMusicPage> createState() => _PlayMusicPageState();
}

class _PlayMusicPageState extends ConsumerState<PlayMusicPage> {
  final InfoSong _data = InfoSong();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.black,
            body: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      image: AssetImage(ImagesCommon.anhTest),
                      fit: BoxFit.cover)),
              child: BodyPlayMusic(data: _data),
            ),
            bottomNavigationBar: Theme(
              data: ThemeData(
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
              ),
              child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ActionLikeComponent(
                          numLike: _data.numLike, currentId: _data.currentId),
                      ActionCommentComponent(
                          numComment: _data.numComment,
                          nameSong: _data.nameSong,
                          author: _data.author)
                    ],
                  )),
            )));
  }
}
