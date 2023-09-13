import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SoundState {
  SoundState({required this.isPlay});

  bool isPlay;
}

class SoundStateNotifier extends ChangeNotifier {
  final SoundState data = SoundState(isPlay: false);

  toggle(bool value) {
    data.isPlay = value;
    notifyListeners();
  }
}

final soundStateProvider = ChangeNotifierProvider<SoundStateNotifier>((ref) {
  return SoundStateNotifier();
});
