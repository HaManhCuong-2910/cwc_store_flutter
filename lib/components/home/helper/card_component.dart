import 'package:cwc_store/components/common/text_common_component.dart';
import 'package:cwc_store/components/home/helper/stack_image_component.dart';
import 'package:cwc_store/constant/index.dart';
import 'package:cwc_store/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CardComponent extends StatelessWidget {
  const CardComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        redirectLink(context, '/play-music');
      },
      child: Container(
        margin: const EdgeInsets.only(right: 14),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            StackImageComponent(
                imageLink: ImagesCommon.anhTest, color: 0xffffb142),
            SizedBox(height: 4),
            TextCommon('test bai'),
            SizedBox(height: 4.0),
            TextCommon(
              'mo ta',
              style: TextStyle(
                  color: ColorsCommon.colorBlack400,
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            )
          ],
        ),
      ),
    );
  }
}
