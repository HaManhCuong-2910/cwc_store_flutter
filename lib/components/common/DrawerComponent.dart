// ignore: file_names
import 'package:cwc_store/components/common/TextCommonComponent.dart';
import 'package:flutter/material.dart';

class DrawerCommon extends StatelessWidget {
  const DrawerCommon({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const <Widget>[
          SizedBox(
            height: 50,
            child: DrawerHeader(child: TextCommon('Header menu')),
          ),
          TextCommon('test data')
        ],
      ),
    );
  }
}
