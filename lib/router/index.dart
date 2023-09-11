import 'package:cwc_store/page/home/home_page.dart';
import 'package:cwc_store/page/product/ListProductPage.dart';
import 'package:cwc_store/page/product/product_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

RouteFactory router = (RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return CupertinoPageRoute(
          builder: (_) => const ProviderScope(child: HomePage()),
          settings: settings);
    case '/details':
      return CupertinoPageRoute(
          builder: (_) => const ProductPage(), settings: settings);
    case '/list-product':
      return CupertinoPageRoute(
          builder: (_) => const ListProductPage(), settings: settings);
    default:
      return CupertinoPageRoute(
          builder: (_) => const ProviderScope(child: HomePage()),
          settings: settings);
  }
};
