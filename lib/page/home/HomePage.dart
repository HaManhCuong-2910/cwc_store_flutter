// ignore: file_names
import 'package:cwc_store/components/common/DrawerComponent.dart';
import 'package:cwc_store/components/home/RightSideMenuComponent.dart';
import 'package:cwc_store/theme/app_theme.dart';
import 'package:cwc_store/components/common/TextCommonComponent.dart';
import 'package:cwc_store/components/home/TestProviderComponent.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      key: _scaffoldKey,
      endDrawerEnableOpenDragGesture: false,
      endDrawer: const DrawerCommon(),
      appBar: AppBar(
        title: const SizedBox(
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 40,
              ),
              TextCommon('Home'),
              RightSideMenu()
            ],
          ),
        ),
        elevation: 0,
        backgroundColor: ColorsCommon.colorWhite100,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const TestProviderComponent(),
            Container(
              margin: const EdgeInsets.only(top: 10.0),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/details');
                  },
                  child: const Text('redirect to detail')),
            )
          ],
        ),
      ),
    ));
  }
}
