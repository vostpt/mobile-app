import 'dart:convert' as json;

import 'package:built_value/serializer.dart';
import 'package:flutter/foundation.dart';
import 'package:vost/data/remote/models/serializers/serializers.dart';

class Parser {
  T parseJsonObject<T extends SerializedModel<T>>(jsonMap, Serializer<T> serializer) {
    return serializers.deserializeWith(serializer, jsonMap);
  }

  String serializeToJson<T extends SerializedModel<T>>(T object, Serializer<T> serializer) {
    return json.jsonEncode(serializers.serializeWith(serializer, object));
  }

  String serializeListToJson<T extends SerializedModel<T>>(List<T> list, Serializer<T> serializer) {
    var result = List();
    for (var item in list) {
      var serialized = serializers.serializeWith(serializer, item);
      debugPrint(serialized.toString());
      result.add(serializers.serializeWith(serializer, item));
    }
    debugPrint(result.runtimeType.toString());
    return json.jsonEncode(result);
  }
}


abstract class SerializedModel<T> {
  static Serializer get serializer => null;
}