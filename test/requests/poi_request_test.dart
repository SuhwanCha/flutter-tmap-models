import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_tmap_models/flutter_tmap_models.dart';

void main() {
  POI req = POI();

  setUp(() async {
    req = await PoiRequest.send(
      searchKeyword: "스타벅스",
      appKey: "l7xxea76f8cc0a394708aeb91dd920e6af6b",
      centerLat: 37.510926599204446,
      centerLon: 127.03147674266576,
    );
  });
  test('send poi', () async {
    expect(req, isA<POI>());
  });

  test('get pois', () async {
    expect(req.pois, isA<List<Poi>>());
  });
}
