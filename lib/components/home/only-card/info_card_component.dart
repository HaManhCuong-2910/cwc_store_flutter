import 'package:cwc_store/components/home/helper/text_padding_black.dart';
import 'package:flutter/material.dart';

class InfoCardComponent extends StatelessWidget {
  const InfoCardComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextPaddingBlack(title: 'Ten Bai dsdasda'),
        TextPaddingBlack(title: '16 tracks'),
      ],
    );
  }
}
