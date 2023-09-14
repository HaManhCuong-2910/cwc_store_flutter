import 'package:cwc_store/components/play-music/sheet/header_sheet.dart';
import 'package:flutter/material.dart';

class BottomSheetComment extends StatefulWidget {
  const BottomSheetComment({super.key});

  @override
  State<BottomSheetComment> createState() => _BottomSheetCommentState();
}

class _BottomSheetCommentState extends State<BottomSheetComment> {
  @override
  Widget build(BuildContext context) {
    return const FractionallySizedBox(
      heightFactor: 0.9,
      child: SafeArea(child: HeaderSheet()),
    );
  }
}
