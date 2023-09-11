import 'package:cwc_store/theme/app_theme.dart';
import 'package:flutter/material.dart';

class BottomSheetComponent extends StatefulWidget {
  const BottomSheetComponent({super.key});

  @override
  State<BottomSheetComponent> createState() => _BottomSheetComponentState();
}

class _BottomSheetComponentState extends State<BottomSheetComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 16),
      color: ColorsCommon.colorBlack500,
      child: const Row(
        children: [Text('dsada')],
      ),
    );
  }
}
