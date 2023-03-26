class Comment {
  Comment({
    this.id = 0,
    this.user = '',
    this.avatar = '',
    this.date = '',
    this.comment = '',
  });

  int id;
  String user;
  String avatar;
  String date;
  String comment;

  factory Comment.fromJson(Map<String, dynamic> json) => Comment(
        id: json["id"] ?? 0,
        user: json["user"] ?? '',
        avatar: json["avatar"] ?? '',
        date: json["date"] ?? '',
        comment: json["comment"] ?? '',
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "user": user,
        "avatar": avatar,
        "date": date,
        "comment": comment,
      };
}
