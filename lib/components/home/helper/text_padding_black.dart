import 'package:cwc_store/components/common/text_common_component.dart';
import 'package:cwc_store/theme/text_style.dart';
import 'package:flutter/material.dart';

class TextPaddingBlack extends StatelessWidget {
  const TextPaddingBlack({super.key, required this.title, this.style});

  final String title;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
      color: Colors.black,
      child: TextCommon(title, style: style ?? TextStyleConstant.textWhite),
    );
  }
}
