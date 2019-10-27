import 'dart:convert';

import 'package:rxdart/rxdart.dart';
import 'package:vost/presentation/assets/error_messages.dart';
import 'package:vost/presentation/model/Contributor.dart';
import 'package:vost/presentation/ui/_base/base_bloc.dart';

class ContributorsBloc extends BaseBloc {
  var _contributorsJsonSubject = PublishSubject<String>();
  Sink<dynamic> get contributorsJsonSink => _contributorsJsonSubject.sink;

  final BehaviorSubject<List<Contributor>> _contributors =
      BehaviorSubject<List<Contributor>>();

  BehaviorSubject<List<Contributor>> get contributors => _contributors;

  ContributorsBloc() {
    _contributorsJsonSubject.listen((listContributors) {
      List<Contributor> contributors = List<Contributor>.from(
          jsonDecode(listContributors)
              .map((contributor) => Contributor.fromJson(contributor))
              .toList());

      _contributors.add(contributors);
    }, onError: (error) => handleOnError(genericErrorMessage));
  }
}
