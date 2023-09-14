import 'package:cwc_store/components/common/text_common_component.dart';
import 'package:cwc_store/config/icons.dart';
import 'package:cwc_store/provider/play-music/play_music_provider.dart';
import 'package:cwc_store/theme/text_style.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:collection/collection.dart';

class ActionLikeComponent extends ConsumerStatefulWidget {
  const ActionLikeComponent(
      {super.key, required this.numLike, required this.currentId});

  final int numLike;
  final String currentId;

  @override
  ConsumerState<ActionLikeComponent> createState() =>
      _ActionLikeComponentState();
}

class _ActionLikeComponentState extends ConsumerState<ActionLikeComponent> {
  bool _isExistInLibrary = false;

  void onSetHeart(List<PlayMusicState> data) {
    setState(() {
      _isExistInLibrary =
          data.firstWhereOrNull((element) => element.id == widget.currentId) !=
              null;
    });
  }

  @override
  Widget build(BuildContext context) {
    final PlayMusicStateNotifier dataState = ref.watch(playMusicStateProvider);

    void onAddLibrary() {
      dataState.onToggleAddRemove(widget.currentId);
    }

    ref.listen(playMusicStateProvider, (previous, next) {
      onSetHeart(next.data);
    });

    return GestureDetector(
      onTap: onAddLibrary,
      child: Row(
        children: [
          Icon(
            _isExistInLibrary ? IconCustom.heart : IconCustom.heart_empty,
            size: 15,
            color: _isExistInLibrary ? Colors.redAccent : Colors.white,
          ),
          const SizedBox(width: 6),
          TextCommon(
            (_isExistInLibrary ? widget.numLike + 1 : widget.numLike)
                .toString(),
            style: TextStyleConstant.textWhite.merge(TextStyleConstant.small),
          )
        ],
      ),
    );
  }
}
