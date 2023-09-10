// ignore: file_names
import 'package:cwc_store/theme/app_theme.dart';
import 'package:flutter/material.dart';

class TextCommon extends StatelessWidget {
  const TextCommon(this.data, {super.key, this.style});

  final String data;

  final TextStyle? style;

  static TextStyle commonStyle = const TextStyle(
      fontSize: 16.0,
      color: ColorsCommon.colorBlack500,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600);

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: commonStyle.merge(style),
    );
  }
}
