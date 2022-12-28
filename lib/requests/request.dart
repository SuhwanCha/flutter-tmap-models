part of flutter_tmap_models;

abstract class TmapRequest<T> {
  static Future send<T>() async {
    return Future.value();
  }
}
