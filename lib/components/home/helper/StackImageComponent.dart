import 'package:flutter/material.dart';

class StackImageComponent extends StatelessWidget {
  const StackImageComponent(
      {super.key, this.imageLink = '', this.color = 0xFFFFFFFF});

  final String imageLink;
  final int color;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const SizedBox(
          width: 145,
          height: 125,
        ),
        Positioned(
            top: 10,
            left: 10,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.0),
                  color: Color(color).withOpacity(0.5)),
              width: 130,
              height: 110,
            )),
        Positioned(
            top: 5,
            left: 5,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.0),
                  color: Color(color)),
              width: 130,
              height: 110,
            )),
        Positioned(
            top: 0,
            left: 0,
            child: Container(
              alignment: Alignment.centerLeft,
              width: 130,
              height: 110,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(6.0),
                child: Image(
                  image: AssetImage(imageLink),
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
              ),
            )),
      ],
    );
  }
}
