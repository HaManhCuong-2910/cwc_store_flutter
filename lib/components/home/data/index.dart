import 'package:cwc_store/components/home/body_home_component.dart';
import 'package:cwc_store/page/product/product_page.dart';
import 'package:flutter/material.dart';

class DataHome {
  static const List<Widget> widgetOptionsHome = <Widget>[
    BodyHomeComponent(),
    ProductPage()
  ];
}
