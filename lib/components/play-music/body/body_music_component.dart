import 'dart:io';
import 'package:audio_waveforms/audio_waveforms.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:cwc_store/components/home/helper/text_padding_black.dart';
import 'package:cwc_store/constant/index.dart';
import 'package:cwc_store/provider/play-music/sound_data_provider.dart';
import 'package:cwc_store/theme/app_theme.dart';
import 'package:cwc_store/theme/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:path_provider/path_provider.dart';

class BodyMusicComponent extends ConsumerStatefulWidget {
  const BodyMusicComponent({super.key});

  @override
  ConsumerState<BodyMusicComponent> createState() => _BodyMusicComponentState();
}

String convertNumberToDurationLabel(int duration) {
  int shours = Duration(milliseconds: duration).inHours;
  int sminutes = Duration(milliseconds: duration).inMinutes;
  int sseconds = Duration(milliseconds: duration).inSeconds;

  int rhours = shours;
  int rminutes = sminutes - (shours * 60);
  int rseconds = sseconds - (sminutes * 60 + shours * 60 * 60);

  return "${rhours > 0 ? '${formatTwoNumber(rhours)}:' : ''}${formatTwoNumber(rminutes)}:${formatTwoNumber(rseconds)}";
}

class _BodyMusicComponentState extends ConsumerState<BodyMusicComponent> {
  int maxDuration = 100;
  int currentpos = 0;
  String currentpostlabel = "00:00";
  AudioPlayer player = AudioPlayer();

  PlayerController controller = PlayerController();

  String path = '';
  late Directory appDirectory;

  @override
  void initState() {
    Future.delayed(Duration.zero, () async {
      final SoundStateNotifier dataState = ref.watch(soundStateProvider);
      final Directory directory = await getApplicationDocumentsDirectory();
      const String assetName = "Can-Lam-Tra-My-Idol-Hoang-Rapper.mp3";
      final File file = File("${directory.path}/$assetName");
      final ByteData byteData =
          await rootBundle.load('assets/${AudioCommon.canLam}');
      await file.writeAsBytes(byteData.buffer.asUint8List());
      path = file.path;

      await controller.preparePlayer(
        path: path,
        shouldExtractWaveform: false,
      );

      controller.onCurrentDurationChanged.listen((currentpos) async {
        maxDuration = await controller.getDuration(DurationType.max);

        currentpostlabel = convertNumberToDurationLabel(currentpos);

        dataState.calculatePercentPlaySound((currentpos / maxDuration) * 100);

        setState(() {});
      });

      controller.onCompletion.listen((event) async {
        await controller.pausePlayer();
      });
      //================
    });
    super.initState();
  }

  @override
  void dispose() async {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final SoundStateNotifier dataState = ref.watch(soundStateProvider);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AudioFileWaveforms(
          size: Size(MediaQuery.of(context).size.width, 100.0),
          playerController: controller,
          enableSeekGesture: true,
          waveformType: WaveformType.long,
          waveformData: listWaveTest,
          playerWaveStyle: const PlayerWaveStyle(
              fixedWaveColor: Colors.white54,
              liveWaveColor: ColorsCommon.colorOrange,
              spacing: 6,
              seekLineColor: ColorsCommon.colorOrange,
              showSeekLine: true,
              scrollScale: 0.5,
              scaleFactor: 200),
        ),
        const SizedBox(height: 20),
        TextPaddingBlack(
            title:
                "${currentpostlabel}/${convertNumberToDurationLabel(maxDuration)}",
            style: const TextStyle(fontSize: 14)
                .merge(TextStyleConstant.textWhite)),
        Wrap(
          spacing: 10,
          children: [
            ElevatedButton.icon(
                onPressed: () async {
                  dataState.togglePlay(true);
                  await controller.startPlayer(
                      finishMode: FinishMode.loop, forceRefresh: false);
                },
                icon: const Icon(Icons.play_arrow),
                label: const Text("Play")),
            ElevatedButton.icon(
                onPressed: () async {
                  dataState.togglePlay(false);
                  await controller.pausePlayer();
                },
                icon: const Icon(Icons.pause),
                label: const Text("pause"))
          ],
        )
      ],
    );
  }
}
