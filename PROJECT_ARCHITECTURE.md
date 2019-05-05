## Project Architecture

The VOST Application is created with  [Flutter](https://flutter.dev/)  following the  [BLoC](https://www.didierboelens.com/2018/08/reactive-programming---streams---bloc/)  architecture combined with  [Clean Architecture](http://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html) .The app is divided into 3 sections: *Data, Domain* and *UI*. Each layer is responsible only for the logic contained in it and doesn’t know how the preciding and following layers work. This ensures that if one of the layer has to change, eg.: the API changes the endpoints or an object changes part of its fields, minimum impact should be propagated to the remaining layers.

* *Data* is responsible to retrieve information from the network and store/fetch data saved into the SharedPreferences
* *Domain* is responsible for manipulating the data received by the data layer. Furthermore, this is where part of the Business Logic of the application is located.
* *UI* is composed of two sub-layers: *BLoC*s and *Widgets*. Widgets are resposible for displaying UI to the user, and should not manipulate data directly. The data shown to the user should be stored and manipulated by a *BLoC*. In most cases, each widget has a BLoC, and if needed, they can access and manipulate other BLoCs.
Dependency Injection is handled by the DependencyProvider, which can be accessed by the Widgets via `DependencyProvider.of(context)`.

### Data Layer
#### Network
All *API* calls are managed by  [Dio](https://pub.dartlang.org/packages/dio)  which can easily manage REST API calls and add headers and interceptors for every request. The following structure is used:
* *Endpoints*: we declare the *method* (POST, PUT, GET, DELETE), the *json string* and the *endpoint* that we are calling.
* *Services*: here we *map* the *Response Object* to a *Data Object* that can be used in our project.
* *Models*: *Data Models* that represent the json object sent from the server. They are dividided into *Response*and *Request* objects and *Serializers*, needed for the json serialization and deserialization.
* *Interceptors:* the interceptors used for the *requests*, *responsonses*,*errors* and respective *logging*

#### Endpoints
This class’s sole purpose is to *declare* the REST API *endpoints* and its necessary options, such as the *body* as a JSON string and the necessary *headers*.
An endpoint can be declared as follow:
```dart
const todoEndpoint = "todos";
const categoryQuery = "category";

Future<Response> getData(String id, String categoryId) {
	return dio.get(“$todoEndpoint/$id”, queryParameters: {categoryQuery: categoryId});
}
```

Each Endpoints class has a *dependency* to the *Dio* object created in DependencyProvider.
*Services* and to the *Parser* so that it can *serialize* and *deserialize* son objects.

This class sole purpose is to *map* the *Response*given by the Endpoints class to a data model class and to *Serialize to json* the *Request* objects. Each function can be declared as following:

```dart
Observable<MockDataRemote
> getData(String id, String categoryId) {
  return Observable.fromFuture(_api.getData(accessId, categoryId)
      .map((response) =>
      _parser.parseJsonObject(response.data, MockDataRemote.serializer));
}
```


#### Models
A data model is built with the  [built_value](https://github.com/google/built_value.dart)  and [build_runner](https://pub.dartlang.org/packages/build_runner)  to generate *immutable* data class objects with a *builder* method.

```dart
import ‘package:built_value/built_value.dart’;
import ‘package:built_value/serializer.dart’;
import ‘package:vost/data/remote/models/_base/parser.dart’;

part ‘mock_data_remote.g.dart’;

abstract class MockDataRemote implements Built<MockDataRemote, MockDataRemoteBuilder>, SerializedModel<MockDataRemote> {
  MockDataRemote._();

  static Serializer<MockDataRemote> get serializer => _$mockDataRemoteSerializer;

  int get userId;
  int get id;
  String get title;
  bool get completed;

  factory MockDataRemote([updates(MockDataRemoteBuilder b)]) = _$MockDataRemote;
}
```

All classes have to follow the structure provided above. To help in the creation of this class, you can use the following  [Live Template](https://medium.com/flutter-community/live-templates-or-how-to-spend-less-time-writing-boilerplate-code-on-flutter-with-intellij-7fb2f769f23) 

```dart
import ‘package:built_value/built_value.dart’;
import ‘package:built_value/serializer.dart’;
import 'package:vost/data/remote/models/_base/parser.dart';

part ‘$FILE_NAME$.g.dart’;

abstract class $CLASS_NAME$ implements Built<$CLASS_NAME$, $CLASS_NAME$Builder>, SerializedModel<$CLASS_NAME$> {
$CLASS_NAME$._();

static Serializer<$CLASS_NAME$> get serializer => _$$$STATIC_CLASS_NAME$Serializer;

$END$

factory $CLASS_NAME$([updates($CLASS_NAME$Builder b)]) = _$$$CLASS_NAME$;
}
```

Additionally, every class that needs to be *serialized* and *deserialized* needs to be added to the `serializers.dart` file in the `@SerializersFor()` function.

#### Shared Preferences
This package is responsible for *adding* and *retrieving* *data* directly from the *Shared Preferences* using the  [shared_prefs](https://pub.dartlang.org/packages/shared_preferences) plugin.
To add a new object to the shared preferences, the following must be added
```dart
String getPrivatePhoneKey() {
  return _sharedPreferences.getString(_privatePhoneKey);
}

Future<bool> savePrivatePhoneKey(String key) async {
  return await _sharedPreferences.setString(_privatePhoneKey, key);
}
const _privatePhoneKey = “private_phone_key”
```

Always keep the *keys* at the *bottom of the file* so that we can easily check what are the objects we are storing in memory

### UI
#### Blocs

Each new bloc must extends the *BaseBloc*. This base class gives the common functionality of all blocs, such as error handling, displaying error message, showing loading messages and handling the dispose of the streams, sinks and subjects.

To *communicate* with a bloc, we must add a *Sink* to receive either *data* or, if there is no data to add to the bloc, an *Event*.  This sink is derived from the *RxDart Subject* that we are using. Furthermore, we must *add each subscribed Subject* to the *disposable* so that it can be disposed when the bloc is disposed.

To *receive data* we must use a *Stream* in the *Bloc* and a *StreamBuilder* to display data in the UI. Adding data to the stream can be done using the `.add` method of the *RxDart Subject*.

An example of a bloc that handles input and output is as follows:

``` dart
class HomeBloc extends BaseBloc {
  MockManager _mockManager;

  /// Event to fetch new data
  var _fetchNewDataSubject = PublishSubject<Event>();

  Sink<Event> get fetchNewDataSink => _fetchNewDataSubject.sink;

  /// Event to relay MockData information to the UI
  var _mockDataSubject = BehaviorSubject<MockData>();

  Stream<MockData> get mockDataStream => _mockDataSubject.stream;

  HomeBloc(this._mockManager) {
    disposable.add(_fetchNewDataSubject.stream
        .flatMap((_) => _mockManager.getMockData())
        .listen(_mockDataSubject.add, onError: (error) {
      print(error);
      handleOnError(genericErrorMessage);
    }));
  }
}
```

#### Screens

If we want our screen to display data and error and loading messages, we must extend the *BasePage* and *BaseState* classes. These classes setup the *init* methods and wires up the *bloc*. To be able to use this class, we must have a bloc to be used in this page.

In VOST we are using *routing*, so each new page must be declared in the `app.dart`file either in the *routes*, for routes that we are not passing new items, or in *onGenerateRoutes*. We use the *BuildContext* to get the desired bloc from the *DependencyProvider*:

```dart
class VostApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //...
      routes: {
        routeHome: (context) => HomePage(title: 'Vost App', bloc: DependencyProvider.of(context).getHomeBloc(),),
      },
    );
  }
}
```

Finally, all navigation methods used in the app must all be in the `navigation.dart` file. When adding a new page, add a function with a name that clarifies where we are navigating to:

```dart
Future<void> navigateToHomePage(BuildContext context, String userId) {
  return Navigator.of(context).pushReplacementNamed(routeHome, arguments: userId);
}
```


### Assets

When adding new assets to the app,  add a new constant to the appropriate file in the *presentation/assets* folder.

For example, if we are adding a new image, we edit (or create) an `images.dart` file in the *presentation/assets* folder with the following line:

```dart
const assetImageIllustrationPhone = ‘assets/illustration_phone.png’;
```

When adding the file, it must be added in the */assets* folder, and the following must be added to the `pubspec.yaml` file if not present:

```yaml
flutter:
  assets:
  - assets/
```

### Dependency Injection
Each new dependency should be declared in the *DependencyProvider*.
- If the dependency is *not* required by a widget in the app, we initialise it in the *init* method. If this dependency is required by a bloc, we must declare a *class member variable* so that the bloc can be initialised.
- If the dependency *is required* by a widget in the app (for example a Bloc), we declare a *getter* for it using the following structure:

```dart
HomeBloc _homeBloc;

HomeBloc getHomeBloc({bool forceCreation =  false }) {
  if(_homeBloc == null || forceCreation) {
    _homeBloc = HomeBloc(_cowManager);
  }
   return _homeBloc;
}
```

