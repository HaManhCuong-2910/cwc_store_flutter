import 'package:cwc_store/components/common/text_common_component.dart';
import 'package:flutter/material.dart';

class HeaderPlayComponent extends StatelessWidget {
  const HeaderPlayComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Column(
          children: [TextCommon('Tiêu đề bài viết')],
        )
      ],
    );
  }
}
