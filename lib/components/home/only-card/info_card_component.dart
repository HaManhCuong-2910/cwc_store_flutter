import 'package:cwc_store/components/common/text_common_component.dart';
import 'package:cwc_store/theme/text_style.dart';
import 'package:flutter/material.dart';

class InfoCardComponent extends StatelessWidget {
  const InfoCardComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
          color: Colors.black,
          child: const TextCommon('Ten Bai dsdasda',
              style: TextStyleConstant.textWhite),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
          color: Colors.black,
          child: TextCommon('16 tracks',
              style: TextStyleConstant.textWhite200
                  .merge(TextStyleConstant.small)),
        )
      ],
    );
  }
}
