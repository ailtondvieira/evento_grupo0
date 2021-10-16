import 'dart:convert';

class ListBreeds {
  List<BreedsModel> listBreeds;
  ListBreeds({
    required this.listBreeds,
  });

  Map<String, dynamic> toMap() {
    return {
      'listBreeds': listBreeds.map((x) => x.toJson()).toList(),
    };
  }

  factory ListBreeds.fromMap(Map<String, dynamic> map) {
    return ListBreeds(
      listBreeds: List<BreedsModel>.from(map['listBreeds']?.map((x) => BreedsModel.fromJson(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory ListBreeds.fromJson(String source) => ListBreeds.fromMap(json.decode(source));
}

class BreedsModel {
  int? adaptability;
  int? affectionLevel;
  String? altNames;
  String? cfaUrl;
  int? childFriendly;
  String? countryCode;
  String? countryCodes;
  String? description;
  int? dogFriendly;
  int? energyLevel;
  int? experimental;
  int? grooming;
  int? hairless;
  int? healthIssues;
  int? hypoallergenic;
  String? id;
  ImageModel? image;
  int? indoor;
  int? intelligence;
  int? lap;
  String? lifeSpan;
  String? name;
  int? natural;
  String? origin;
  int? rare;
  String? referenceImageId;
  int? rex;
  int? sheddingLevel;
  int? shortLegs;
  int? socialNeeds;
  int? strangerFriendly;
  int? suppressedTail;
  String? temperament;
  String? vcahospitalsUrl;
  String? vetstreetUrl;
  int? vocalisation;
  Weight? weight;
  String? wikipediaUrl;
  BreedsModel({
    this.adaptability,
    this.affectionLevel,
    this.altNames,
    this.cfaUrl,
    this.childFriendly,
    this.countryCode,
    this.countryCodes,
    this.description,
    this.dogFriendly,
    this.energyLevel,
    this.experimental,
    this.grooming,
    this.hairless,
    this.healthIssues,
    this.hypoallergenic,
    this.id,
    this.image,
    this.indoor,
    this.intelligence,
    this.lap,
    this.lifeSpan,
    this.name,
    this.natural,
    this.origin,
    this.rare,
    this.referenceImageId,
    this.rex,
    this.sheddingLevel,
    this.shortLegs,
    this.socialNeeds,
    this.strangerFriendly,
    this.suppressedTail,
    this.temperament,
    this.vcahospitalsUrl,
    this.vetstreetUrl,
    this.vocalisation,
    this.weight,
    this.wikipediaUrl,
  });

  Map<String, dynamic> toMap() {
    return {
      'adaptability': adaptability,
      'affectionLevel': affectionLevel,
      'altNames': altNames,
      'cfaUrl': cfaUrl,
      'childFriendly': childFriendly,
      'countryCode': countryCode,
      'countryCodes': countryCodes,
      'description': description,
      'dogFriendly': dogFriendly,
      'energyLevel': energyLevel,
      'experimental': experimental,
      'grooming': grooming,
      'hairless': hairless,
      'healthIssues': healthIssues,
      'hypoallergenic': hypoallergenic,
      'id': id,
      'image': image?.toJson(),
      'indoor': indoor,
      'intelligence': intelligence,
      'lap': lap,
      'lifeSpan': lifeSpan,
      'name': name,
      'natural': natural,
      'origin': origin,
      'rare': rare,
      'referenceImageId': referenceImageId,
      'rex': rex,
      'sheddingLevel': sheddingLevel,
      'shortLegs': shortLegs,
      'socialNeeds': socialNeeds,
      'strangerFriendly': strangerFriendly,
      'suppressedTail': suppressedTail,
      'temperament': temperament,
      'vcahospitalsUrl': vcahospitalsUrl,
      'vetstreetUrl': vetstreetUrl,
      'vocalisation': vocalisation,
      'weight': weight?.toJson(),
      'wikipediaUrl': wikipediaUrl,
    };
  }

  factory BreedsModel.fromMap(Map<String, dynamic> map) {
    return BreedsModel(
      adaptability: map['adaptability'],
      affectionLevel: map['affectionLevel'],
      altNames: map['altNames'],
      cfaUrl: map['cfaUrl'],
      childFriendly: map['childFriendly'],
      countryCode: map['countryCode'],
      countryCodes: map['countryCodes'],
      description: map['description'],
      dogFriendly: map['dogFriendly'],
      energyLevel: map['energyLevel'],
      experimental: map['experimental'],
      grooming: map['grooming'],
      hairless: map['hairless'],
      healthIssues: map['healthIssues'],
      hypoallergenic: map['hypoallergenic'],
      id: map['id'],
      image: ImageModel.fromJson(map['image']),
      indoor: map['indoor'],
      intelligence: map['intelligence'],
      lap: map['lap'],
      lifeSpan: map['lifeSpan'],
      name: map['name'],
      natural: map['natural'],
      origin: map['origin'],
      rare: map['rare'],
      referenceImageId: map['referenceImageId'],
      rex: map['rex'],
      sheddingLevel: map['sheddingLevel'],
      shortLegs: map['shortLegs'],
      socialNeeds: map['socialNeeds'],
      strangerFriendly: map['strangerFriendly'],
      suppressedTail: map['suppressedTail'],
      temperament: map['temperament'],
      vcahospitalsUrl: map['vcahospitalsUrl'],
      vetstreetUrl: map['vetstreetUrl'],
      vocalisation: map['vocalisation'],
      weight: Weight.fromJson(map['weight']),
      wikipediaUrl: map['wikipediaUrl'],
    );
  }

  String toJson() => json.encode(toMap());

  factory BreedsModel.fromJson(String source) => BreedsModel.fromMap(json.decode(source));
}

class ImageModel {
  int? height;
  String? id;
  String? url;
  int? width;
  ImageModel({
    this.height,
    this.id,
    this.url,
    this.width,
  });

  Map<String, dynamic> toMap() {
    return {
      'height': height,
      'id': id,
      'url': url,
      'width': width,
    };
  }

  factory ImageModel.fromMap(Map<String, dynamic> map) {
    return ImageModel(
      height: map['height'],
      id: map['id'],
      url: map['url'],
      width: map['width'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ImageModel.fromJson(String source) => ImageModel.fromMap(json.decode(source));
}

class Weight {
  String? imperial;
  String? metric;
  Weight({
    this.imperial,
    this.metric,
  });

  Map<String, dynamic> toMap() {
    return {
      'imperial': imperial,
      'metric': metric,
    };
  }

  factory Weight.fromMap(Map<String, dynamic> map) {
    return Weight(
      imperial: map['imperial'],
      metric: map['metric'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Weight.fromJson(String source) => Weight.fromMap(json.decode(source));
}
