import 'dart:convert';

import 'package:rxdart/rxdart.dart';
import 'package:vost/presentation/assets/error_messages.dart';
import 'package:vost/presentation/models/contributor.dart';
import 'package:vost/presentation/ui/_base/base_bloc.dart';

class ContributorsBloc extends BaseBloc {
  var _contributorsJsonSubject = PublishSubject<String>();

  Sink<dynamic> get contributorsJsonSink => _contributorsJsonSubject.sink;

  final BehaviorSubject<List<Contributor>> _contributorsSubject =
      BehaviorSubject<List<Contributor>>();

  BehaviorSubject<List<Contributor>> get contributorsStream =>
      _contributorsSubject;

  ContributorsBloc() {
    _contributorsJsonSubject.listen((listContributors) {
      if (listContributors == null || listContributors.isEmpty) {
        _contributorsSubject.add(List());
        return;
      }
      List<Contributor> contributors = List<Contributor>.from(
          jsonDecode(listContributors)
              .map((contributor) => Contributor.fromJson(contributor))
              .toList());
      _contributorsSubject.add(contributors);
    }, onError: (error) => handleOnError(genericErrorMessage));
  }
}
