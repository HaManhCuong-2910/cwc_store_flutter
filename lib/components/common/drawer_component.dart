import 'package:cwc_store/components/common/text_common_component.dart';
import 'package:cwc_store/theme/app_theme.dart';
import 'package:cwc_store/theme/text_style.dart';
import 'package:flutter/material.dart';

class DrawerCommon extends StatelessWidget {
  const DrawerCommon({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: ColorsCommon.colorWhite,
        child: ListView(
          children: <Widget>[
            DrawerHeader(
                decoration: const BoxDecoration(color: ColorsCommon.colorWhite),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                      radius: 23,
                      backgroundImage: AssetImage(ImagesCommon.anhTest),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 12),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextCommon('Hà Mạnh Cường'),
                          SizedBox(height: 4),
                          TextCommon('Xem trang cá nhân của bạn',
                              style: TextStyleConstant.small)
                        ],
                      ),
                    )
                  ],
                )),
            SizedBox(
              child: TextCommon('test text'),
            )
          ],
        ),
      ),
    );
  }
}
