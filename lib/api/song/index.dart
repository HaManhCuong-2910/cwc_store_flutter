import 'dart:convert';

import 'package:cwc_store/api/instance.dart';
import 'package:cwc_store/models/play-music/state_song.dart';

Future<InfoSong> fetchSong() async {
  final response = await Instance().get('test');
  final parsed = InfoSong.fromMap(json.decode(response.body));
  return parsed;
}
