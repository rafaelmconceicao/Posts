class UserApp {
  String? id;
  String? name;
  String? email;
  String? password;

  UserApp({this.id, this.name, this.email, this.password,});

  UserApp.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['email'] = email;
    data['password'] = password;
    return data;
  }
}