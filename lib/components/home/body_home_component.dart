import 'package:cwc_store/api/song/index.dart';
import 'package:cwc_store/components/common/text_common_component.dart';
import 'package:cwc_store/components/home/only-card/only_card_component.dart';
import 'package:cwc_store/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'helper/title_and_card_component.dart';

class BodyHomeComponent extends ConsumerStatefulWidget {
  const BodyHomeComponent({super.key});

  @override
  BodyHomeComponentState createState() => BodyHomeComponentState();
}

class BodyHomeComponentState extends ConsumerState<BodyHomeComponent> {
  // ScrollController scrollController = ScrollController();

  // @override
  // void initState() {
  //   scrollController.addListener(() {
  //     //listener
  //     print(scrollController.offset);
  //   });
  //   super.initState();
  // }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future:
            fetchSong(), // here you provide your future. In your case Provider.of<PeopleModel>(context).fetchPeople()
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          }
          // DATA is in snapshot.data
          return Scaffold(
              appBar: AppBar(
                title: SizedBox(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(
                        width: 30,
                      ),
                      TextCommon(snapshot.data.nameSong),
                      GestureDetector(
                        child: const Icon(
                          Icons.local_activity,
                          size: 20.0,
                          color: ColorsCommon.colorBlack500,
                        ),
                      )
                    ],
                  ),
                ),
                elevation: 0,
                backgroundColor: ColorsCommon.colorWhite100,
              ),
              body: ListView(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 16),
                shrinkWrap: true,
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 16),
                    child: const TitleAndCardComponent(
                        title: 'Những bài hát nổi bật', listChild: []),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 16),
                    child: const TitleAndCardComponent(
                        title: 'Gần đây', listChild: []),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 16),
                    child: const OnlyCardComponent(
                      title: 'Mixed for Cuong',
                      avatar: ImagesCommon.anhTest,
                      imageLink: ImagesCommon.anhTest,
                      titleAvatar: 'Based on your listening history',
                    ),
                  )
                ],
              ));
        });
  }
}
