import 'package:cwc_store/components/home/helper/text_padding_black.dart';
import 'package:cwc_store/theme/app_theme.dart';
import 'package:cwc_store/theme/text_style.dart';

import 'package:flutter/material.dart';

class HeaderPlayComponent extends StatelessWidget {
  const HeaderPlayComponent(
      {super.key, required this.title, required this.author});

  final String title;
  final String author;

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width * 0.5;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: _width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextPaddingBlack(title: title),
              TextPaddingBlack(
                title: author,
                style: TextStyleConstant.textWhite200
                    .merge(TextStyleConstant.small),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(4),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.black,
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.keyboard_arrow_down_outlined,
              size: 35.0,
              weight: 10,
              color: ColorsCommon.colorWhite,
            ),
          ),
        )
      ],
    );
  }
}
