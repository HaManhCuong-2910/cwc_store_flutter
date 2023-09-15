import 'package:cwc_store/theme/app_theme.dart';

class CommentSongModel {
  CommentSongModel({
    this.avatar = ImagesCommon.anhTest,
    this.name = 'Hà Cường',
    this.comment = 'Bài nhạc hay vl',
    DateTime? timeComment,
  }) : timeComment = timeComment ?? DateTime.now();

  final String avatar;
  final String name;
  final String comment;
  final DateTime timeComment;
}
