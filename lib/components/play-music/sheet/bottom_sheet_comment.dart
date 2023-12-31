import 'package:cwc_store/components/play-music/sheet/body_sheet.dart';
import 'package:cwc_store/components/play-music/sheet/header_sheet.dart';
import 'package:cwc_store/components/play-music/sheet/input_comment.dart';
import 'package:flutter/material.dart';

class BottomSheetComment extends StatefulWidget {
  const BottomSheetComment(
      {super.key, required this.title, required this.author});

  final String title;
  final String author;

  @override
  State<BottomSheetComment> createState() => _BottomSheetCommentState();
}

class _BottomSheetCommentState extends State<BottomSheetComment> {
  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.9,
      child: SafeArea(
          child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            HeaderSheet(title: widget.title, author: widget.author),
            BodySheetComment(),
            const InputComment(),
          ],
        ),
      )),
    );
  }
}
