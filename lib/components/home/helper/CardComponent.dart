// ignore: file_names
import 'package:cwc_store/components/common/TextCommonComponent.dart';
import 'package:cwc_store/components/home/helper/StackImageComponent.dart';
import 'package:cwc_store/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CardComponent extends StatefulWidget {
  const CardComponent({super.key});

  @override
  State<CardComponent> createState() => _CardComponent();
}

class _CardComponent extends State<CardComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
            style: TextStyle(color: ColorsCommon.colorBlack400),
          )
        ],
      ),
    );
  }
}
