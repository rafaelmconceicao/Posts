class Message {
  String? content;
  String? createdAt;

  Message({this.content, this.createdAt});

  Message.fromJson(Map<String, dynamic> json) {
    content = json['content'];
    createdAt = json['created_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['content'] = content;
    data['created_at'] = createdAt;
    return data;
  }
}