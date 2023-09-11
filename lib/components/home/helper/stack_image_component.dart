import 'package:flutter/material.dart';

class StackImageComponent extends StatelessWidget {
  const StackImageComponent(
      {super.key,
      this.imageLink = '',
      this.color = 0xFFFFFFFF,
      this.width = 145,
      this.height = 125});

  final String imageLink;
  final int color;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: width,
          height: height,
        ),
        Positioned(
            top: 10,
            left: 10,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.0),
                  color: Color(color).withOpacity(0.5)),
              width: width - 15,
              height: height - 15,
            )),
        Positioned(
            top: 5,
            left: 5,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.0),
                  color: Color(color)),
              width: width - 15,
              height: height - 15,
            )),
        Positioned(
            top: 0,
            left: 0,
            child: Container(
              alignment: Alignment.centerLeft,
              width: width - 15,
              height: height - 15,
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
