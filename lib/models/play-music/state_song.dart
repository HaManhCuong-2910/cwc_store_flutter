class InfoSong {
  InfoSong({
    this.numLike = 1560,
    this.numComment = 6,
    this.id = 'test123',
    this.nameSong = 'Tiêu đề bài hát daa dsadd asdasd',
    this.author = 'tác giả',
  });

  final int numLike;
  final int numComment;
  final String id;
  final String nameSong;
  final String author;

  factory InfoSong.fromMap(Map<String, dynamic> json) => InfoSong(
        numLike: json["numLike"],
        id: json["id"],
        numComment: json["numComment"],
        nameSong: json["nameSong"],
        author: json["author"],
      );
}
