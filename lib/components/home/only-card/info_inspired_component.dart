import 'package:cwc_store/components/common/text_common_component.dart';
import 'package:cwc_store/theme/text_style.dart';
import 'package:flutter/material.dart';

class InfoInspiredComponent extends StatelessWidget {
  const InfoInspiredComponent(
      {super.key, required this.url, required this.title});

  final String url;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(url),
        ),
        const SizedBox(width: 8),
        TextCommon(
          title,
          style: TextStyleConstant.small,
        )
      ],
    );
  }
}
