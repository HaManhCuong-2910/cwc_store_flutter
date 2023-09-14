import 'package:flutter/material.dart';

redirectLink(BuildContext context, String path) {
  Navigator.pushNamed(context, path);
}

redirectScreen(BuildContext context, Route<Object?> routerBuilder) {
  Navigator.push(context, routerBuilder);
}

onShowBottomSheetCustom(BuildContext context, Widget widgetCustom) {
  showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(16))),
      builder: (context) {
        return widgetCustom;
      });
}
