part of flutter_tmap_models;

class POI {
  SearchPoiInfo? searchPoiInfo;

  POI({this.searchPoiInfo});

  POI.fromJson(Map<String, dynamic> json) {
    searchPoiInfo = json['searchPoiInfo'] != null
        ? SearchPoiInfo.fromJson(json['searchPoiInfo'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (searchPoiInfo != null) {
      data['searchPoiInfo'] = searchPoiInfo!.toJson();
    }
    return data;
  }

  List<Poi> get pois {
    try {
      return searchPoiInfo!.pois!.poi!;
    } catch (e) {
      return <Poi>[];
    }
  }
}

class SearchPoiInfo {
  String? totalCount;
  String? count;
  String? page;
  Pois? pois;

  SearchPoiInfo({this.totalCount, this.count, this.page, this.pois});

  SearchPoiInfo.fromJson(Map<String, dynamic> json) {
    totalCount = json['totalCount'];
    count = json['count'];
    page = json['page'];
    pois = json['pois'] != null ? Pois.fromJson(json['pois']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['totalCount'] = totalCount;
    data['count'] = count;
    data['page'] = page;
    if (pois != null) {
      data['pois'] = pois!.toJson();
    }
    return data;
  }
}

class Pois {
  List<Poi>? poi;

  Pois({this.poi});

  Pois.fromJson(Map<String, dynamic> json) {
    if (json['poi'] != null) {
      poi = <Poi>[];
      json['poi'].forEach((v) {
        poi!.add(Poi.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (poi != null) {
      data['poi'] = poi!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Poi {
  /// POI ID
  String? id;

  /// POI 식별자
  String? pkey;

  /// 입구점 일련번호
  String? navSeq;

  String? collectionType;
  String? name;
  String? telNo;
  String? frontLat;
  String? frontLon;

  /// 중심점 위도 좌표입니다.
  String? noorLat;

  /// 중심점 경도 좌표입니다.
  String? noorLon;

  /// 표출 주소 대분류명입니다.
  ///
  /// 예) 서울특별시
  String? upperAddrName;

  /// 표출 주소 중분류명입니다.
  ///
  /// 예) 강남구
  String? middleAddrName;

  /// 표출 주소 소분류명입니다.
  ///
  /// 예) 역삼동
  String? lowerAddrName;

  /// 표출 주소 상세분류명입니다.
  ///
  /// 예) 미주아파트 101동 101호
  String? detailAddrName;
  String? mlClass;
  String? firstNo;
  String? secondNo;

  /// 도로명입니다.
  String? roadName;
  String? firstBuildNo;
  String? secondBuildNo;

  /// 거리 (unit: km)
  String? radius;

  /// 업종 대표명
  ///
  /// 예) 의료편의
  String? bizName;

  /// 업종 대분류명입니다.
  ///
  /// 예) 의료편의
  String? upperBizName;

  /// 업종 중분류명입니다.
  ///
  /// 예) 의료시설
  String? middleBizName;

  /// 업종 소분류명입니다.
  ///
  /// 예) 종합병원
  String? lowerBizName;

  /// 업종 상세분류명입니다.
  ///
  /// 예) 기타
  String? detailBizName;

  String? rpFlag;

  /// 주차시설 여부입니다.
  String? parkFlag;
  String? detailInfoFlag;
  String? desc;
  String? dataKind;
  String? zipCode;
  NewAddressList? newAddressList;

  Poi({
    this.id,
    this.pkey,
    this.navSeq,
    this.collectionType,
    this.name,
    this.telNo,
    this.frontLat,
    this.frontLon,
    this.noorLat,
    this.noorLon,
    this.upperAddrName,
    this.middleAddrName,
    this.lowerAddrName,
    this.detailAddrName,
    this.mlClass,
    this.firstNo,
    this.secondNo,
    this.roadName,
    this.firstBuildNo,
    this.secondBuildNo,
    this.radius,
    this.bizName,
    this.upperBizName,
    this.middleBizName,
    this.lowerBizName,
    this.detailBizName,
    this.rpFlag,
    this.parkFlag,
    this.detailInfoFlag,
    this.desc,
    this.dataKind,
    this.zipCode,
    this.newAddressList,
  });

  Poi.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    pkey = json['pkey'];
    navSeq = json['navSeq'];
    collectionType = json['collectionType'];
    name = json['name'];
    telNo = json['telNo'];
    frontLat = json['frontLat'];
    frontLon = json['frontLon'];
    noorLat = json['noorLat'];
    noorLon = json['noorLon'];
    upperAddrName = json['upperAddrName'];
    middleAddrName = json['middleAddrName'];
    lowerAddrName = json['lowerAddrName'];
    detailAddrName = json['detailAddrName'];
    mlClass = json['mlClass'];
    firstNo = json['firstNo'];
    secondNo = json['secondNo'];
    roadName = json['roadName'];
    firstBuildNo = json['firstBuildNo'];
    secondBuildNo = json['secondBuildNo'];
    radius = json['radius'];
    bizName = json['bizName'];
    upperBizName = json['upperBizName'];
    middleBizName = json['middleBizName'];
    lowerBizName = json['lowerBizName'];
    detailBizName = json['detailBizName'];
    rpFlag = json['rpFlag'];
    parkFlag = json['parkFlag'];
    detailInfoFlag = json['detailInfoFlag'];
    desc = json['desc'];
    dataKind = json['dataKind'];
    zipCode = json['zipCode'];
    newAddressList = json['newAddressList'] != null
        ? NewAddressList.fromJson(json['newAddressList'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['pkey'] = pkey;
    data['navSeq'] = navSeq;
    data['collectionType'] = collectionType;
    data['name'] = name;
    data['telNo'] = telNo;
    data['frontLat'] = frontLat;
    data['frontLon'] = frontLon;
    data['noorLat'] = noorLat;
    data['noorLon'] = noorLon;
    data['upperAddrName'] = upperAddrName;
    data['middleAddrName'] = middleAddrName;
    data['lowerAddrName'] = lowerAddrName;
    data['detailAddrName'] = detailAddrName;
    data['mlClass'] = mlClass;
    data['firstNo'] = firstNo;
    data['secondNo'] = secondNo;
    data['roadName'] = roadName;
    data['firstBuildNo'] = firstBuildNo;
    data['secondBuildNo'] = secondBuildNo;
    data['radius'] = radius;
    data['bizName'] = bizName;
    data['upperBizName'] = upperBizName;
    data['middleBizName'] = middleBizName;
    data['lowerBizName'] = lowerBizName;
    data['detailBizName'] = detailBizName;
    data['rpFlag'] = rpFlag;
    data['parkFlag'] = parkFlag;
    data['detailInfoFlag'] = detailInfoFlag;
    data['desc'] = desc;
    data['dataKind'] = dataKind;
    data['zipCode'] = zipCode;
    if (newAddressList != null) {
      data['newAddressList'] = newAddressList!.toJson();
    }
    return data;
  }
}

class NewAddressList {
  List<NewAddress>? newAddress;

  NewAddressList({this.newAddress});

  NewAddressList.fromJson(Map<String, dynamic> json) {
    if (json['newAddress'] != null) {
      newAddress = <NewAddress>[];
      json['newAddress'].forEach((v) {
        newAddress!.add(NewAddress.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (newAddress != null) {
      data['newAddress'] = newAddress!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class NewAddress {
  String? centerLat;
  String? centerLon;
  String? frontLat;
  String? frontLon;
  String? roadName;
  String? bldNo1;
  String? bldNo2;
  String? roadId;
  String? fullAddressRoad;

  NewAddress(
      {this.centerLat,
      this.centerLon,
      this.frontLat,
      this.frontLon,
      this.roadName,
      this.bldNo1,
      this.bldNo2,
      this.roadId,
      this.fullAddressRoad});

  NewAddress.fromJson(Map<String, dynamic> json) {
    centerLat = json['centerLat'];
    centerLon = json['centerLon'];
    frontLat = json['frontLat'];
    frontLon = json['frontLon'];
    roadName = json['roadName'];
    bldNo1 = json['bldNo1'];
    bldNo2 = json['bldNo2'];
    roadId = json['roadId'];
    fullAddressRoad = json['fullAddressRoad'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['centerLat'] = centerLat;
    data['centerLon'] = centerLon;
    data['frontLat'] = frontLat;
    data['frontLon'] = frontLon;
    data['roadName'] = roadName;
    data['bldNo1'] = bldNo1;
    data['bldNo2'] = bldNo2;
    data['roadId'] = roadId;
    data['fullAddressRoad'] = fullAddressRoad;
    return data;
  }
}
