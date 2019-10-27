class Contributor {
  String username;
  String profileUrl;
  String name;
  String profilePicture;
  String category;

  Contributor(
      {this.username,
      this.profileUrl,
      this.name,
      this.profilePicture,
      this.category});

  Contributor.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    profileUrl = json['profileUrl'];
    name = json['name'];
    profilePicture = json['profilePicture'];
    category = json['category'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['username'] = this.username;
    data['profileUrl'] = this.profileUrl;
    data['name'] = this.name;
    data['profilePicture'] = this.profilePicture;
    data['category'] = this.category;
    return data;
  }
}
