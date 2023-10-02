import 'dart:ui';

import 'package:flutter/material.dart';

Widget boxFilterCustom(Widget child) {
  return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
      child: Container(
          decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
          child: child));
}
