import 'package:flutter/material.dart';
import 'package:vost/constants.dart';
import 'package:vost/data/remote/endpoints/mock_endpoints.dart';
import 'package:vost/data/remote/services/mock_service.dart';
import 'package:vost/di/network_dependencies.dart';
import 'package:vost/domain/managers/mock_manager.dart';
import 'package:vost/domain/mappers/mock_data_mapper.dart';
import 'package:vost/presentation/ui/home/home_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';


/// As an [InheritedWidget] this class will provide its childs the objects it hold
///
/// By accessing [of] and providing a [BuildContext] we can access, for example, the [Config] instance.
/// Usage: `var provider = DependencyProvider.of(context);`
class DependencyProvider extends InheritedWidget {

  DependencyProvider({
    Key key,
    Widget child,
  }) : super(key: key, child: child);

  MockManager _cowManager;

  HomeBloc _homeBloc;

  HomeBloc getHomeBloc({bool forceCreation = false}) {
    if (_homeBloc == null || forceCreation) {
      _homeBloc = HomeBloc(_cowManager);
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
        "https://jsonplaceholder.typicode.com/", connectionTimeout, connectionReadTimeout);
    var dio = await createDio(dioOptions, errorInterceptor,
        responseInterceptor, requestInterceptor);

    // endpoints
    var mockEndpoints = MockEndpoints(dio);

    // Services
    var mockServices = MockService(mockEndpoints);

    // Mappers
    var mockMappers = MockDataRemoteMapper();

    // Managers
    _cowManager = MockManager(mockServices, mockMappers);
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