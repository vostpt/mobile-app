library serializers;

import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:vost/data/remote/models/response/mock_data_remote.dart';

part 'serializers.g.dart';

/// Class to be used for built_value serialization
///
/// We need to declare a list of all the classes to be serialized  and initialize a
/// standard serializer to deal with them
/// In order to generate the '.g' classes, we need to run the following in the terminal:
/// `flutter packages pub run build_runner watch`
@SerializersFor(const [
  MockDataRemote
])
Serializers serializers = _$serializers;

Serializers standardSerializers = (serializers.toBuilder()
  ..addPlugin(StandardJsonPlugin()))
    .build();
