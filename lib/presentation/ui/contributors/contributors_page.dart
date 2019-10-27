import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Contributors extends StatefulWidget {
  @override
  _ContributorsState createState() => _ContributorsState();
}

class _ContributorsState extends State<Contributors> {
  List<Contributor> _contributors;

  @override
  void initState() {
    super.initState();
    _loadContributors();
  }

  _loadContributors() async {
    var jsonListContributors = jsonDecode(await DefaultAssetBundle.of(context)
        .loadString('assets/data/contributors.json'));

    List<Contributor> contributors = List<Contributor>.from(
        jsonListContributors.map((m) => Contributor.fromJson(m)).toList());

    this.setState(() {
      _contributors = contributors;
    });
  }

  void _openContributorPage(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contribuidores"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam tincidunt."),
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => Divider(
                indent: 80.0,
                thickness: 1.0,
              ),
              itemCount: _contributors.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () =>
                      _openContributorPage(_contributors[index].profileUrl),
                  child: ListTile(
                    leading: Image.network(
                      _contributors[index].profilePicture,
                      height: 60,
                      width: 60,
                    ),
                    title: Text(_contributors[index].name),
                    subtitle: Text(_contributors[index].category),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

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
