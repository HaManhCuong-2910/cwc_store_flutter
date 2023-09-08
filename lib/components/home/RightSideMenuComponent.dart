import 'package:cwc_store/theme/app_theme.dart';
import 'package:flutter/material.dart';

class RightSideMenu extends StatelessWidget {
  const RightSideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return Row(
      children: [
        GestureDetector(
            onTap: () {
              _scaffoldKey.currentState!.openEndDrawer();
            },
            child: const Icon(
              Icons.menu_open,
              color: ColorsCommon.colorBlack500,
              size: 25.0,
            )),
      ],
    );
  }
}
