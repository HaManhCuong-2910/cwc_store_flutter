import 'package:cwc_store/components/play-music/body_play_component.dart';
import 'package:cwc_store/components/play-music/bottom/action_comment_component.dart';
import 'package:cwc_store/components/play-music/bottom/action_like_component.dart';
import 'package:cwc_store/models/play-music/state_song.dart';
import 'package:cwc_store/provider/play-music/sound_data_provider.dart';
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
  double positionImage = 0.0;

  @override
  Widget build(BuildContext context) {
    ref.listen(soundStateProvider, (previous, next) {
      positionImage = next.data.percentConvert;
      setState(() {});
    });

    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.black,
            body: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: const AssetImage(ImagesCommon.anhTest),
                      fit: BoxFit.cover,
                      alignment: Alignment(positionImage, 0))),
              child: BodyPlayMusic(data: _data),
            ),
            bottomNavigationBar: Theme(
              data: ThemeData(
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
              ),
              child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 22, horizontal: 16),
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
