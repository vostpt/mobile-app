import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vost/presentation/assets/dimensions.dart';
import 'package:vost/presentation/models/contributor.dart';
import 'package:vost/presentation/ui/contributors/contributors_bloc.dart';
import 'package:vost/presentation/utils/misc.dart';

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

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Contribuidores"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(marginScreen),
            child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam tincidunt."),
          ),
          Expanded(
            child: StreamBuilder<List<Contributor>>(
                stream: widget.bloc.contributorsStream,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                      child: Text("A carregar"),
                    );
                  }

                  if (!snapshot.hasData) {
                    return Center(
                      child: Container(child: Text("A lista de contribuidores está vazia")),
                    );
                  }

                  return ListView.separated(
                    separatorBuilder: (context, index) => Divider(
                      indent: size.width / 8,
                      thickness: 1.0,
                    ),
                    itemCount: snapshot.data.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () => launchURL(
                            snapshot.data[index].profileUrl),
                        child: ListTile(
                          leading: Image.network(
                            snapshot.data[index].profilePicture,
                            height: size.width / 7,
                            width: size.width / 7,
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
