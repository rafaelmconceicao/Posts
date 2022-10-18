class User {
  String? name;
  String? profilePicture;

  User({this.name, this.profilePicture});

  User.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    profilePicture = json['profile_picture'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['profile_picture'] = profilePicture;
    return data;
  }
}