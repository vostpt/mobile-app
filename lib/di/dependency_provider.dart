import 'package:flutter/material.dart';
import 'package:vost/constants.dart';
import 'package:vost/data/remote/endpoints/mock_endpoints.dart';
import 'package:vost/data/remote/endpoints/parish_endpoints.dart';
import 'package:vost/data/remote/models/_base/parser.dart';
import 'package:vost/data/remote/services/mock_service.dart';
import 'package:vost/data/remote/services/parish_service.dart';
import 'package:vost/di/network_dependencies.dart';
import 'package:vost/domain/managers/mock_manager.dart';
import 'package:vost/domain/managers/parish_manager.dart';
import 'package:vost/domain/mappers/attribute_mapper.dart';
import 'package:vost/domain/mappers/link_mapper.dart';
import 'package:vost/domain/mappers/meta_mapper.dart';
import 'package:vost/domain/mappers/mock_data_mapper.dart';
import 'package:vost/domain/mappers/data_mapper.dart';
import 'package:vost/domain/mappers/parish_mapper.dart';
import 'package:vost/presentation/ui/home/home_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';


/// As an [InheritedWidget] this class will provide its childs the objects it hold
///
/// By accessing [of] and providing a [BuildContext] we can access, for example, the [Config] instance.
/// Usage: `var provider = DependencyProvider.of(context);`
class DependencyProvider extends InheritedWidget {
  ParishManager _parishManager;


  DependencyProvider({
    Key key,
    Widget child,
  }) : super(key: key, child: child);

  MockManager _cowManager;

  HomeBloc _homeBloc;

  HomeBloc getHomeBloc({bool forceCreation = false}) {
    if (_homeBloc == null || forceCreation) {
      _homeBloc = HomeBloc(_parishManager);
    }
    return _homeBloc;
  }

  /// Initializes app dependencies,
  Future<bool> initialize() async {
    // Storage Dependencies
    var sharedPrefences = await SharedPreferences.getInstance();

    // Interceptors
    var loggingInterceptor = getLoggingInterceptor();
    var errorInterceptor = getErrorInterceptor(loggingInterceptor);
    var responseInterceptor =
    getResponseInterceptor(loggingInterceptor);
    var requestInterceptor =
    getRequestInterceptor(loggingInterceptor);

    // network dependencies
    var dioOptions = createDioOptions(
        baseUrlProd, connectionTimeout, connectionReadTimeout);
    var dio = await createDio(dioOptions, errorInterceptor,
        responseInterceptor, requestInterceptor);
    var parser = Parser();

    // endpoints
    var mockEndpoints = MockEndpoints(dio);
    var parishEndpoints = ParishEndpoints(dio);

    // Services
    var mockServices = MockService(mockEndpoints, parser);
    var parishService = ParishService(parishEndpoints);

    // Mappers
    var mockMappers = MockDataRemoteMapper();
    var attributeResponseMapper = AttributeResponseMapper();
    var linkResponseMapper = LinkResponseMapper();
    var metaResponseMapper = MetaResponseMapper();
    var dataResponseMapper = DataResponseMapper(attributeResponseMapper, linkResponseMapper);
    var parishListResponseMapper = ParishListResponseMapper(linkResponseMapper);
    var parishResponseMapper = ParishResponseMapper(linkResponseMapper);

    // Managers
    _cowManager = MockManager(mockServices, mockMappers);
    _parishManager = ParishManager(parishService, parishListResponseMapper);
  }


  /// Since we just want to creat the dependencies once, at the start of the app, we won't need
  /// update this widget
  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => false;

  static DependencyProvider of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(DependencyProvider)
    as DependencyProvider);
  }
}