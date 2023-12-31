import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SoundState {
  SoundState({this.percentConvert = 0, this.isPlay = false});

  double percentConvert;
  bool isPlay;
}

convertNumber(double num) {
  double numPercent = num / 100;
  return (numPercent - 0.5) / 0.5;
}

class SoundStateNotifier extends ChangeNotifier {
  final SoundState data = SoundState();

  calculatePercentPlaySound(double currentPercent) {
    switch (currentPercent) {
      case 0:
        data.percentConvert = -1.0;
        break;
      case < 50:
        data.percentConvert = convertNumber(currentPercent);
      case >= 50:
        data.percentConvert = convertNumber(currentPercent);
        break;
      default:
        data.percentConvert = -1.0;
        break;
    }
    notifyListeners();
  }

  togglePlay(bool value) {
    data.isPlay = value;
    notifyListeners();
  }
}

final soundStateProvider =
    ChangeNotifierProvider.autoDispose<SoundStateNotifier>((ref) {
  return SoundStateNotifier();
});
