import 'package:cwc_store/components/common/text_common_component.dart';
import 'package:cwc_store/models/play-music/comment_song.dart';
import 'package:flutter/material.dart';
import 'package:moment_dart/moment_dart.dart';

class ItemsComment extends StatelessWidget {
  const ItemsComment({super.key, required this.data});

  final CommentSongModel data;

  @override
  Widget build(BuildContext context) {
    final String _timeAt = Moment(data.timeComment).format('HH:mm DD/MM/YYYY');

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(data.avatar),
        ),
        const SizedBox(width: 6),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                TextCommon(
                  data.name,
                  style: const TextStyle(fontSize: 12),
                ),
                const SizedBox(width: 2),
                TextCommon('at $_timeAt',
                    style: const TextStyle(
                        fontSize: 12, fontWeight: FontWeight.w400))
              ],
            ),
            const SizedBox(height: 6),
            TextCommon(data.comment,
                style:
                    const TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
            const SizedBox(height: 10),
            GestureDetector(
              child: const TextCommon(
                'Trả lời',
                style: TextStyle(fontSize: 12),
              ),
            )
          ],
        )
      ],
    );
  }
}
