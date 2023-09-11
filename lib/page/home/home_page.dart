// import 'package:cwc_store/components/common/bottom_sheet_component.dart';
import 'package:cwc_store/components/home/data/index.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: DataHome.widgetOptionsHome.elementAt(_selectedIndex),
      // bottomSheet: const BottomSheetComponent(),
      bottomNavigationBar: Theme(
          data: ThemeData(
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
          ),
          child: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.feed,
                  ),
                  label: 'Feed')
            ],
            iconSize: 28,
            selectedFontSize: 12,
            selectedItemColor: Colors.black,
            currentIndex: _selectedIndex,
            unselectedFontSize: 12,
            onTap: _onItemTapped,
          )),
    ));
  }
}
