import 'package:cwc_store/components/common/TextCommonComponent.dart';
import 'package:flutter/material.dart';

class DrawerCommon extends StatelessWidget {
  const DrawerCommon({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.red),
            child: TextCommon('Header menu'),
          )
        ],
      ),
    );
  }
}
