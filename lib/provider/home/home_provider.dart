// The state of our StateNotifier should be immutable.
// We could also use packages like Freezed to help with the implementation.
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SoundState {
  SoundState({required this.isPlay});

  bool isPlay;
}

// The StateNotifier class that will be passed to our StateNotifierProvider.
// This class should not expose state outside of its "state" property, which means
// no public getters/properties!
// The public methods on this class will be what allow the UI to modify the state.
class SoundStateNotifier extends ChangeNotifier {
  final SoundState data = SoundState(isPlay: false);

  toggle(bool value) {
    data.isPlay = value;
    notifyListeners();
  }
}

// Finally, we are using StateNotifierProvider to allow the UI to interact with
// our SoundStateNotifier class.
final soundStateProvider = ChangeNotifierProvider<SoundStateNotifier>((ref) {
  return SoundStateNotifier();
});
