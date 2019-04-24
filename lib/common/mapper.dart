/// Mapper class for data objects
///
/// Class to be used when an object needs to be mapped
///
/// [From] is the object we want to be mapped
/// [To] is the object we want to be returned after the map
///
/// [map] is the method to be overriden to map a single object
/// [mapList] gives the basic implementation of mapping a list of objects, relying
/// on [map]
abstract class Mapper<From, To> {
  To map(From value);

  List<To> mapList(List<From> values) {
    if (values == null) return new List<To>(0);

    List<To> returnValues = new List<To>();
    for (var value in values) {
      returnValues.add(map(value));
    }
    return returnValues;
  }
}