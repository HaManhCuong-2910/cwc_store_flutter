// ignore: file_names
import 'package:cwc_store/components/common/DrawerComponent.dart';
import 'package:cwc_store/components/home/BodyHomeComponent.dart';
import 'package:cwc_store/theme/app_theme.dart';
import 'package:cwc_store/components/common/TextCommonComponent.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      endDrawer: const DrawerCommon(),
      appBar: AppBar(
        title: const SizedBox(
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 40,
              ),
              TextCommon('Home')
            ],
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 20.0),
            child: Builder(
              builder: (BuildContext context) {
                return GestureDetector(
                    onTap: () {
                      Scaffold.of(context).openEndDrawer();
                    },
                    child: const Icon(
                      Icons.menu_open,
                      color: ColorsCommon.colorBlack500,
                      size: 25.0,
                    ));
              },
            ),
          )
        ],
        elevation: 0,
        backgroundColor: ColorsCommon.colorWhite100,
      ),
      body: const BodyHomeComponent(),
    ));
  }
}
