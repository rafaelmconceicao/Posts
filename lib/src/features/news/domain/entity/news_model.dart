import 'package:posts/src/features/news/domain/entity/message_model.dart';
import 'package:posts/src/features/news/domain/entity/user_model.dart';

class News {
  User? user;
  Message? message;

  News({this.user, this.message});

  News.fromJson(Map<String, dynamic> json) {
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    message =
    json['message'] != null ? Message.fromJson(json['message']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (user != null) {
      data['user'] = user!.toJson();
    }
    if (message != null) {
      data['message'] = message!.toJson();
    }
    return data;
  }
}