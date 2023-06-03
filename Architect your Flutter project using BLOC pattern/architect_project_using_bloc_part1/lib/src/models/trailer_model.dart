class TrailerModel {
  int? id;
  List<Results>? results;

  TrailerModel({this.id, this.results});

  TrailerModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((v) {
        results!.add(Results.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    if (results != null) {
      data['results'] = results!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Results {
  String? id;
  String? iso31661;
  String? iso6391;
  String? key;
  String? name;
  bool? official;
  String? publishedAt;
  String? site;
  int? size;
  String? type;

  Results(
      {this.id,
      this.iso31661,
      this.iso6391,
      this.key,
      this.name,
      this.official,
      this.publishedAt,
      this.site,
      this.size,
      this.type});

  Results.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    iso31661 = json['iso_3166_1'];
    iso6391 = json['iso_639_1'];
    key = json['key'];
    name = json['name'];
    official = json['official'];
    publishedAt = json['published_at'];
    site = json['site'];
    size = json['size'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['iso_3166_1'] = iso31661;
    data['iso_639_1'] = iso6391;
    data['key'] = key;
    data['name'] = name;
    data['official'] = official;
    data['published_at'] = publishedAt;
    data['site'] = site;
    data['size'] = size;
    data['type'] = type;
    return data;
  }
}
