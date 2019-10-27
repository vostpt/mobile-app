import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vost/presentation/model/Contributor.dart';
import 'package:vost/presentation/ui/contributors/contributors_bloc.dart';

class ContributorsPage extends StatefulWidget {
  final ContributorsBloc bloc;

  const ContributorsPage({Key key, this.bloc}) : super(key: key);
  @override
  _ContributorsState createState() => _ContributorsState();
}

class _ContributorsState extends State<ContributorsPage> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async => widget
        .bloc.contributorsJsonSink
        .add(await DefaultAssetBundle.of(context)
            .loadString('assets/data/contributors.json')));
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
            child: StreamBuilder<List<Contributor>>(
                stream: widget.bloc.contributors,
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return Center(
                      child: Text("A carregar"),
                    );
                  }

                  return ListView.separated(
                    separatorBuilder: (context, index) => Divider(
                      indent: 80.0,
                      thickness: 1.0,
                    ),
                    itemCount: snapshot.data.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () => _openContributorPage(
                            snapshot.data[index].profileUrl),
                        child: ListTile(
                          leading: Image.network(
                            snapshot.data[index].profilePicture,
                            height: 60,
                            width: 60,
                          ),
                          title: Text(snapshot.data[index].name),
                          subtitle: Text(snapshot.data[index].category),
                        ),
                      );
                    },
                  );
                }),
          )
        ],
      ),
    );
  }
}
