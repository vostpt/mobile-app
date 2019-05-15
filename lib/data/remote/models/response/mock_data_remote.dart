import 'dart:convert';

MockDataRemote welcomeFromJson(String str) => MockDataRemote.fromJson(json.decode(str));

String welcomeToJson(MockDataRemote data) => json.encode(data.toJson());

class MockDataRemote {
  int userId;
  int id;
  String title;
  bool completed;

  MockDataRemote({
    this.userId,
    this.id,
    this.title,
    this.completed,
  });

  factory MockDataRemote.fromJson(Map<String, dynamic> json) => new MockDataRemote(
    userId: json["userId"],
    id: json["id"],
    title: json["title"],
    completed: json["completed"],
  );

  Map<String, dynamic> toJson() => {
    "userId": userId,
    "id": id,
    "title": title,
    "completed": completed,
  };
}