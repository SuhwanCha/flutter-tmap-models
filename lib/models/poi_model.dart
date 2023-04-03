part of flutter_tmap_models;

class POI extends Equatable {
  const POI({this.searchPoiInfo});

  // fromJson
  factory POI.fromJson(Map<String, dynamic> json) {
    return POI(
      searchPoiInfo: SearchPoiInfo.fromJson(json['searchPoiInfo']),
    );
  }

  final SearchPoiInfo? searchPoiInfo;

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

  @override
  List<Object?> get props => [searchPoiInfo];
}

class SearchPoiInfo extends Equatable {
  const SearchPoiInfo({this.totalCount, this.count, this.page, this.pois});

  // fromJson
  factory SearchPoiInfo.fromJson(Map<String, dynamic> json) {
    return SearchPoiInfo(
      totalCount: json['totalCount'],
      count: json['count'],
      page: json['page'],
      pois: Pois.fromJson(json['pois']),
    );
  }

  final String? totalCount;
  final String? count;
  final String? page;
  final Pois? pois;

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

  @override
  List<Object?> get props => [totalCount, count, page, pois];
}

class Pois extends Equatable {
  const Pois({this.poi});

  // fromJson
  factory Pois.fromJson(Map<String, dynamic> json) {
    return Pois(
      poi: (json['poi'] as List<dynamic>?)
          ?.map((dynamic e) => Poi.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  final List<Poi>? poi;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (poi != null) {
      data['poi'] = poi!.map((v) => v.toJson()).toList();
    }
    return data;
  }

  @override
  List<Object?> get props => [poi];
}

class Poi extends Equatable {
  /// POI ID
  final String? id;

  /// POI 식별자
  final String? pkey;

  /// 입구점 일련번호
  final String? navSeq;

  final String? collectionType;
  final String? name;
  final String? telNo;
  final String? frontLat;
  final String? frontLon;

  /// 중심점 위도 좌표입니다.
  final String? noorLat;

  /// 중심점 경도 좌표입니다.
  final String? noorLon;

  /// 표출 주소 대분류명입니다.
  ///
  /// 예) 서울특별시
  final String? upperAddrName;

  /// 표출 주소 중분류명입니다.
  ///
  /// 예) 강남구
  final String? middleAddrName;

  /// 표출 주소 소분류명입니다.
  ///
  /// 예) 역삼동
  final String? lowerAddrName;

  /// 표출 주소 상세분류명입니다.
  ///
  /// 예) 미주아파트 101동 101호
  final String? detailAddrName;
  final String? mlClass;
  final String? firstNo;
  final String? secondNo;

  /// 도로명입니다.
  final String? roadName;
  final String? firstBuildNo;
  final String? secondBuildNo;

  /// 거리 (unit: km)
  final String? radius;

  /// 업종 대표명
  ///
  /// 예) 의료편의
  final String? bizName;

  /// 업종 대분류명입니다.
  ///
  /// 예) 의료편의
  final String? upperBizName;

  /// 업종 중분류명입니다.
  ///
  /// 예) 의료시설
  final String? middleBizName;

  /// 업종 소분류명입니다.
  ///
  /// 예) 종합병원
  final String? lowerBizName;

  /// 업종 상세분류명입니다.
  ///
  /// 예) 기타
  final String? detailBizName;

  final String? rpFlag;

  /// 주차시설 여부입니다.
  final String? parkFlag;
  final String? detailInfoFlag;
  final String? desc;
  final String? dataKind;
  final String? zipCode;
  final String? adminDongCode;
  final String? legalDongCode;

  final NewAddressList? newAddressList;

  const Poi({
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
    this.adminDongCode,
    this.legalDongCode,
    this.newAddressList,
  });

  factory Poi.fromJson(Map<String, dynamic> json) {
    return Poi(
      id: json['id'],
      pkey: json['pkey'],
      navSeq: json['navSeq'],
      collectionType: json['collectionType'],
      name: json['name'],
      telNo: json['telNo'],
      frontLat: json['frontLat'],
      frontLon: json['frontLon'],
      noorLat: json['noorLat'],
      noorLon: json['noorLon'],
      upperAddrName: json['upperAddrName'],
      middleAddrName: json['middleAddrName'],
      lowerAddrName: json['lowerAddrName'],
      detailAddrName: json['detailAddrName'],
      mlClass: json['mlClass'],
      firstNo: json['firstNo'],
      secondNo: json['secondNo'],
      roadName: json['roadName'],
      firstBuildNo: json['firstBuildNo'],
      secondBuildNo: json['secondBuildNo'],
      radius: json['radius'],
      bizName: json['bizName'],
      upperBizName: json['upperBizName'],
      middleBizName: json['middleBizName'],
      lowerBizName: json['lowerBizName'],
      detailBizName: json['detailBizName'],
      rpFlag: json['rpFlag'],
      parkFlag: json['parkFlag'],
      detailInfoFlag: json['detailInfoFlag'],
      desc: json['desc'],
      dataKind: json['dataKind'],
      zipCode: json['zipCode'],
      adminDongCode: json['adminDongCode'],
      legalDongCode: json['legalDongCode'],
      newAddressList: NewAddressList.fromJson(json['newAddressList']),
    );
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
    data['adminDongCode'] = adminDongCode;
    data['legalDongCode'] = legalDongCode;
    if (newAddressList != null) {
      data['newAddressList'] = newAddressList!.toJson();
    }
    return data;
  }

  @override
  List<Object?> get props => [
        id,
        pkey,
        navSeq,
        collectionType,
        name,
        telNo,
        frontLat,
        frontLon,
        noorLat,
        noorLon,
        upperAddrName,
        middleAddrName,
        lowerAddrName,
        detailAddrName,
        mlClass,
        firstNo,
        secondNo,
        roadName,
        firstBuildNo,
        secondBuildNo,
        radius,
        bizName,
        upperBizName,
        middleBizName,
        lowerBizName,
        detailBizName,
        rpFlag,
        parkFlag,
        detailInfoFlag,
        desc,
        dataKind,
        zipCode,
        adminDongCode,
        legalDongCode,
        newAddressList,
      ];
}

class NewAddressList extends Equatable {
  final List<NewAddress>? newAddress;

  const NewAddressList({this.newAddress});

  factory NewAddressList.fromJson(Map<String, dynamic> json) {
    return NewAddressList(
      newAddress: json['newAddress'] != null
          ? (json['newAddress'] as List)
              .map((i) => NewAddress.fromJson(i))
              .toList()
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (newAddress != null) {
      data['newAddress'] = newAddress!.map((v) => v.toJson()).toList();
    }
    return data;
  }

  @override
  List<Object?> get props => [newAddress];
}

class NewAddress extends Equatable {
  final String? centerLat;
  final String? centerLon;
  final String? frontLat;
  final String? frontLon;
  final String? roadName;
  final String? bldNo1;
  final String? bldNo2;
  final String? roadId;
  final String? fullAddressRoad;

  const NewAddress(
      {this.centerLat,
      this.centerLon,
      this.frontLat,
      this.frontLon,
      this.roadName,
      this.bldNo1,
      this.bldNo2,
      this.roadId,
      this.fullAddressRoad});

  // fromJson
  factory NewAddress.fromJson(Map<String, dynamic> json) {
    return NewAddress(
      centerLat: json['centerLat'],
      centerLon: json['centerLon'],
      frontLat: json['frontLat'],
      frontLon: json['frontLon'],
      roadName: json['roadName'],
      bldNo1: json['bldNo1'],
      bldNo2: json['bldNo2'],
      roadId: json['roadId'],
      fullAddressRoad: json['fullAddressRoad'],
    );
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

  @override
  List<Object?> get props => [
        centerLat,
        centerLon,
        frontLat,
        frontLon,
        roadName,
        bldNo1,
        bldNo2,
        roadId,
        fullAddressRoad,
      ];
}
