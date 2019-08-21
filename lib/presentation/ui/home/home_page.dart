import 'package:flutter/material.dart';
import 'package:vost/common/event.dart';
import 'package:vost/domain/models/mock_data.dart';
import 'package:vost/localization/vost_localizations.dart';
import 'package:vost/presentation/assets/error_messages.dart';
import 'package:vost/presentation/ui/_base/base_page.dart';
import 'package:vost/presentation/ui/home/home_bloc.dart';

class HomePage extends BasePage<HomeBloc> {
  HomePage({Key key, this.title, HomeBloc bloc}) : super(key: key, bloc : bloc);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends BaseState<HomePage> {

  @override
  void initState() {
    super.initState();
    // this will help us fetch new data from the server
    widget.bloc.fetchNewDataSink.add(Event());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(VostLocalizations.of(context).appTitle),
      ),
      body: Center(
        child: StreamBuilder<MockData>(
          stream: widget.bloc.mockDataStream,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Text("A carregar");
            }
            if (snapshot.data != null) {
              return Text(snapshot.data.title);
            }
            return Container();
          }
        ),
      )
    );
  }

  @override
  String getMessage(String error) {
    if (error == genericErrorMessage) {
      return "Ocorreu um erro";
    }
    return "";
  }
}