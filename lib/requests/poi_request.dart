part of flutter_tmap_models;

class PoiRequest implements TmapRequest<POI> {
  PoiRequest() : super();

  static Future<POI> send({
    int page = 1,
    int count = 20,
    String searchKeyword = '',
    String resCoordType = 'WGS84GEO',
    String searchType = 'all',
    String searchtypCd = 'A',
    int radius = 0,
    String reqCoordType = 'WGS84GEO',
    double centerLon = 0,
    double centerLat = 0,
    String multiPoint = 'N',
    String appKey = '',
  }) async {
    assert(page > 0);
    assert(count > 0);
    assert(searchKeyword.isNotEmpty);

    final String url = 'https://apis.openapi.sk.com/tmap/pois?version=1&'
        'page=$page'
        '&count=$count'
        '&searchKeyword=${Uri.encodeFull(searchKeyword)}'
        '&resCoordType=$resCoordType'
        '&searchType=$searchType'
        '&searchtypCd=$searchtypCd'
        '&radius=$radius'
        '&reqCoordType=$reqCoordType'
        '&centerLon=$centerLon'
        '&centerLat=$centerLat'
        '&appKey=$appKey';
    print(url);
    final Response response = await Dio().get(url);
    final POI poi = POI.fromJson(response.data);
    return poi;
  }
}
