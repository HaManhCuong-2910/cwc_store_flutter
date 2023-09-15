import 'package:cwc_store/components/play-music/sheet/items_comment.dart';
import 'package:cwc_store/models/play-music/comment_song.dart';
import 'package:flutter/material.dart';

class BodySheetComment extends StatelessWidget {
  BodySheetComment({super.key});

  final List<CommentSongModel> _listComment = [
    CommentSongModel(),
    CommentSongModel(),
    CommentSongModel(),
    CommentSongModel(),
    CommentSongModel(),
    CommentSongModel(),
    CommentSongModel(),
    CommentSongModel()
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        width: double.infinity,
        child: ListView(
          padding: const EdgeInsets.only(bottom: 16),
          children: List.generate(
              _listComment.length,
              (index) => Container(
                    margin: EdgeInsets.only(top: index > 0 ? 25 : 16),
                    child: ItemsComment(data: _listComment[index]),
                  )),
        ),
      ),
    );
  }
}
