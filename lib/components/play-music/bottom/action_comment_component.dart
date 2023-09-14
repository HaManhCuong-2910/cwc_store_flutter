import 'package:cwc_store/components/common/text_common_component.dart';
import 'package:cwc_store/components/play-music/sheet/bottom_sheet_comment.dart';
import 'package:cwc_store/constant/index.dart';
import 'package:cwc_store/theme/text_style.dart';
import 'package:flutter/material.dart';

class ActionCommentComponent extends StatelessWidget {
  const ActionCommentComponent({super.key, required this.numComment});

  final int numComment;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onShowBottomSheetCustom(context, const BottomSheetComment());
      },
      child: Row(
        children: [
          const Icon(
            Icons.insert_comment_outlined,
            size: 16,
            color: Colors.white,
          ),
          const SizedBox(width: 6),
          TextCommon(
            numComment.toString(),
            style: TextStyleConstant.textWhite.merge(TextStyleConstant.small),
          )
        ],
      ),
    );
  }
}
