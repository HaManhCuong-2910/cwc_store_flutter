import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:collection/collection.dart';

class PlayMusicState {
  PlayMusicState({required this.id});

  String id;
}

class PlayMusicStateNotifier extends ChangeNotifier {
  final List<PlayMusicState> data = [];

  onToggleAddRemove(String id) {
    final PlayMusicState? findItem =
        data.firstWhereOrNull((element) => element.id == id);
    if (findItem != null) {
      data.removeWhere((element) => element.id == findItem.id);
    } else {
      data.add(PlayMusicState(id: id));
    }
    notifyListeners();
  }
}

final playMusicStateProvider =
    ChangeNotifierProvider<PlayMusicStateNotifier>((ref) {
  return PlayMusicStateNotifier();
});
