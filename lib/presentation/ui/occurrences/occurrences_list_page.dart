import 'package:flutter/material.dart';
import 'package:vost/common/event.dart';
import 'package:vost/domain/models/occurrence_model.dart';
import 'package:vost/presentation/ui/_base/base_page.dart';
import 'package:vost/presentation/ui/occurrences/occurrences_item.dart';
import 'package:vost/presentation/ui/occurrences/occurrences_list_bloc.dart';

class OccurrencesList extends BasePage<OccurrencesListBloc> {
  OccurrencesList({Key key, OccurrencesListBloc bloc})
      : super(key: key, bloc: bloc);

  @override
  _OccurrencesListState createState() => _OccurrencesListState();
}

class _OccurrencesListState extends State<OccurrencesList> {
  @override
  void initState() {
    super.initState();
    // this will help us fetch new data from the server
    widget.bloc.fetchNewDataSink.add(Event());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<List<OccurrenceModel>>(
          stream: widget.bloc.mockDataStream,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: Text("A carregar"));
            }
            if (snapshot.data != null) {
              return Container(
                  color: Colors.white,
                  child: ListView.separated(
                    separatorBuilder: (context, index) => Divider(
                      indent: 50.0,
                      thickness: 2.0,
                    ),
                    itemCount: snapshot.data.length,
                    itemBuilder: (context, index) {
                      return OccurrencesItem(
                          occurrenceModel: snapshot.data[index]);
                    },
                  ));
            }
            return Container(
              child: Center(
                child: Image.asset('assets/images/vost_logo_white.png'),
              ),
            );
          }),
    );
  }
}
