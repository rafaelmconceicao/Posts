class UserPost {
  String? id;
  String? post;
  String? user;
  String? date;
  String? picture;

  UserPost({this.id, this.post, this.user, this.date, this.picture});

  UserPost.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    post = json['post'];
    user = json['user'];
    date = json['date'];
    picture = json['picture'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['post'] = post;
    data['user'] = user;
    data['date'] = date;
    data['picture'] = picture;
    return data;
  }
}