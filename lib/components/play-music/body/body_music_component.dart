import 'dart:io';

import 'package:audio_waveforms/audio_waveforms.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:cwc_store/provider/play-music/sound_data_provider.dart';
import 'package:cwc_store/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BodyMusicComponent extends ConsumerStatefulWidget {
  const BodyMusicComponent({super.key});

  @override
  ConsumerState<BodyMusicComponent> createState() => _BodyMusicComponentState();
}

class _BodyMusicComponentState extends ConsumerState<BodyMusicComponent> {
  int maxDuration = 100;
  int currentpos = 0;
  String currentpostlabel = "00:00";
  bool isplaying = false;
  bool audioplayed = false;
  AudioPlayer player = AudioPlayer();

  PlayerController controller = PlayerController();
  late Directory appDirectory;

  @override
  void initState() {
    Future.delayed(Duration.zero, () async {
      final SoundStateNotifier dataState = ref.watch(soundStateProvider);

      await player.setSource(AssetSource(AudioCommon.canLam));

      player.onDurationChanged.listen((Duration d) {
        //get the duration of audio
        maxDuration = d.inMilliseconds;
        setState(() {});
      });

      player.onPositionChanged.listen((Duration p) {
        currentpos =
            p.inMilliseconds; //get the current position of playing audio

        //generating the duration label
        int shours = Duration(milliseconds: currentpos).inHours;
        int sminutes = Duration(milliseconds: currentpos).inMinutes;
        int sseconds = Duration(milliseconds: currentpos).inSeconds;

        int rhours = shours;
        int rminutes = sminutes - (shours * 60);
        int rseconds = sseconds - (sminutes * 60 + shours * 60 * 60);

        currentpostlabel = "$rhours:$rminutes:$rseconds";

        dataState.calculatePercentPlaySound((currentpos / maxDuration) * 100);

        setState(() {
          //refresh the UI
        });
      });

      await controller.preparePlayer(
        path: AudioCommon.canLam,
        shouldExtractWaveform: true,
        noOfSamples: 100,
        volume: 1.0,
      );

      //================
    });
    super.initState();
  }

  @override
  void dispose() async {
    super.dispose();
    await player.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: AudioFileWaveforms(
            size: Size(MediaQuery.of(context).size.width, 100.0),
            playerController: controller,
            enableSeekGesture: true,
            waveformType: WaveformType.long,
            waveformData: [],
            playerWaveStyle: const PlayerWaveStyle(
              fixedWaveColor: Colors.white54,
              liveWaveColor: Colors.blueAccent,
              spacing: 6,
            ),
          ),
        ),
        Container(
          child: Text(
            currentpostlabel,
            style: TextStyle(fontSize: 25),
          ),
        ),
        Container(
            child: Slider(
          value: double.parse(currentpos.toString()),
          min: 0,
          max: double.parse(maxDuration.toString()),
          divisions: maxDuration,
          label: currentpostlabel,
          onChanged: (double value) async {
            int seekval = value.round();
            await player.seek(Duration(milliseconds: seekval));
            await controller.seekTo(seekval);
          },
        )),
        Container(
          child: Wrap(
            spacing: 10,
            children: [
              ElevatedButton.icon(
                  onPressed: () async {
                    await player.play(AssetSource(AudioCommon.canLam));
                    await controller.startPlayer(finishMode: FinishMode.stop);
                  },
                  icon: const Icon(Icons.play_arrow),
                  label: const Text("Play")),
            ],
          ),
        )
      ],
    );
  }
}
