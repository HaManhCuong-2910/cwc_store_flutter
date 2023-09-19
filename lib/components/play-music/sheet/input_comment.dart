import 'package:cwc_store/theme/app_theme.dart';
import 'package:flutter/material.dart';

class InputComment extends StatefulWidget {
  const InputComment({super.key});

  @override
  State<InputComment> createState() => _InputCommentState();
}

class _InputCommentState extends State<InputComment> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController _controller = TextEditingController();

    @override
    void dispose() {
      _controller.dispose();
      super.dispose();
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
      decoration: const BoxDecoration(
          border: Border(top: BorderSide(color: ColorsCommon.colorWhite200))),
      child: Row(
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage(ImagesCommon.anhTest),
            radius: 18,
          ),
          const SizedBox(
            width: 16,
          ),
          SizedBox(
            width: 300,
            height: 40,
            child: TextField(
              keyboardType: TextInputType.text,
              controller: _controller,
              style: const TextStyle(fontSize: 14),
              decoration: const InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  border: InputBorder.none,
                  hintText: 'Thêm bình luận',
                  filled: true,
                  fillColor: ColorsCommon.colorWhite200),
            ),
          )
        ],
      ),
    );
  }
}
