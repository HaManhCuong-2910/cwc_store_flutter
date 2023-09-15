import 'package:cwc_store/components/common/text_common_component.dart';
import 'package:cwc_store/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HeaderSheet extends StatelessWidget {
  const HeaderSheet({super.key, required this.title, required this.author});

  final String title;
  final String author;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 14),
          decoration: const BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: ColorsCommon.colorWhite200))),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: ColorsCommon.colorWhite200,
                      ),
                      child: const Icon(
                        Icons.keyboard_arrow_down_outlined,
                        size: 20.0,
                        weight: 10,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const TextCommon('1 Comments'),
                  const SizedBox(width: 26)
                ],
              ),
              const SizedBox(height: 14),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                    child: Image(
                      image: AssetImage(ImagesCommon.anhTest),
                      fit: BoxFit.cover,
                      width: 50,
                      height: 50,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Flexible(
                    child: TextCommon(
                      title,
                      overflow: TextOverflow.ellipsis,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
