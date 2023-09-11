import 'package:cwc_store/components/common/text_common_component.dart';
import 'package:cwc_store/components/home/helper/stack_image_component.dart';
import 'package:cwc_store/components/home/only-card/info_card_component.dart';
import 'package:cwc_store/components/home/only-card/info_inspired_component.dart';
import 'package:cwc_store/models/home/only_card_model.dart';
import 'package:cwc_store/theme/app_theme.dart';
import 'package:cwc_store/theme/text_style.dart';
import 'package:flutter/material.dart';

class OnlyCardComponent extends StatelessWidget {
  const OnlyCardComponent(
      {super.key,
      required this.title,
      required this.imageLink,
      required this.avatar,
      required this.titleAvatar,
      this.infoCard});

  final String title;

  final String imageLink;
  final String avatar;
  final String titleAvatar;
  final InfoCard? infoCard;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextCommon(
          title,
          style: TextStyleConstant.large,
        ),
        Container(
            margin: const EdgeInsets.only(top: 16),
            child: Stack(
              children: [
                StackImageComponent(
                  imageLink: ImagesCommon.anhTest,
                  color: 0xffffb142,
                  width: MediaQuery.of(context).size.width - 24,
                  height: 300,
                ),
                const Positioned(
                    left: 10, bottom: 30, child: InfoCardComponent())
              ],
            )),
        Container(
          margin: const EdgeInsets.only(top: 4),
          child: InfoInspiredComponent(
            url: avatar,
            title: titleAvatar,
          ),
        )
      ],
    );
  }
}
