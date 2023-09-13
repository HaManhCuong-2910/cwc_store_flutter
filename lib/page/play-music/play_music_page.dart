import 'package:cwc_store/components/common/text_common_component.dart';
import 'package:cwc_store/components/play-music/body_play_component.dart';
import 'package:cwc_store/config/icons.dart';
import 'package:cwc_store/provider/play-music/play_music_provider.dart';
import 'package:cwc_store/theme/app_theme.dart';
import 'package:cwc_store/theme/text_style.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:collection/collection.dart';

class PlayMusicPage extends ConsumerStatefulWidget {
  const PlayMusicPage({super.key});

  @override
  ConsumerState<PlayMusicPage> createState() => _PlayMusicPageState();
}

class _PlayMusicPageState extends ConsumerState<PlayMusicPage>
    with TickerProviderStateMixin {
  static const int numLike = 1560;
  static const String currentId = 'test123';
  bool _isExistInLibrary = false;
  late AnimationController _heartAnimationController;
  late Animation _heartAnimation;

  void onSetHeart(List<PlayMusicState> data) {
    setState(() {
      _isExistInLibrary =
          data.firstWhereOrNull((element) => element.id == currentId) != null;
    });
  }

  @override
  void initState() {
    super.initState();

    _heartAnimationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1000));
    _heartAnimation = Tween(begin: 15.0, end: 17.0).animate(CurvedAnimation(
        curve: Curves.bounceOut, parent: _heartAnimationController));

    _heartAnimationController.addStatusListener((AnimationStatus status) {
      if (status == AnimationStatus.completed) {
        _heartAnimationController.reset();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final PlayMusicStateNotifier dataState = ref.watch(playMusicStateProvider);

    void onAddLibrary() {
      dataState.onToggleAddRemove(currentId);
      _heartAnimationController.forward();
    }

    ref.listen(playMusicStateProvider, (previous, next) {
      onSetHeart(next.data);
    });

    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.black,
            body: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      image: AssetImage(ImagesCommon.anhTest),
                      fit: BoxFit.cover)),
              child: const BodyPlayMusic(),
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: onAddLibrary,
                        child: Row(
                          children: [
                            AnimatedBuilder(
                                animation: _heartAnimationController,
                                builder: (context, child) {
                                  return Icon(
                                    _isExistInLibrary
                                        ? IconCustom.heart
                                        : IconCustom.heart_empty,
                                    size: _heartAnimation.value,
                                    color: _isExistInLibrary
                                        ? Colors.redAccent
                                        : Colors.white,
                                  );
                                }),
                            const SizedBox(width: 8),
                            TextCommon(
                              (_isExistInLibrary ? numLike + 1 : numLike)
                                  .toString(),
                              style: TextStyleConstant.textWhite
                                  .merge(TextStyleConstant.small),
                            )
                          ],
                        ),
                      )
                    ],
                  )),
            )));
  }
}
