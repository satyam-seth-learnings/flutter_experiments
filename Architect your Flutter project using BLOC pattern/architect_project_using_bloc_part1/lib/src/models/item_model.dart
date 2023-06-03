class ItemModel {
  int? page;
  List<Results>? results;
  int? totalPages;
  int? totalResults;

  ItemModel({this.page, this.results, this.totalPages, this.totalResults});

  ItemModel.fromJson(Map<String, dynamic> json) {
    page = json['page'];
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((v) {
        results!.add(Results.fromJson(v));
      });
    }
    totalPages = json['total_pages'];
    totalResults = json['total_results'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['page'] = page;
    if (results != null) {
      data['results'] = results!.map((v) => v.toJson()).toList();
    }
    data['total_pages'] = totalPages;
    data['total_results'] = totalResults;
    return data;
  }
}

class Results {
  bool? adult;
  String? backdropPath;
  List<int>? genreIds;
  int? id;
  String? originalLanguage;
  String? originalTitle;
  String? overview;
  double? popularity;
  String? posterPath;
  String? releaseDate;
  String? title;
  bool? video;
  dynamic voteAverage;
  int? voteCount;

  Results(
      {this.adult,
      this.backdropPath,
      this.genreIds,
      this.id,
      this.originalLanguage,
      this.originalTitle,
      this.overview,
      this.popularity,
      this.posterPath,
      this.releaseDate,
      this.title,
      this.video,
      this.voteAverage,
      this.voteCount});

  Results.fromJson(Map<String, dynamic> json) {
    adult = json['adult'];
    backdropPath = json['backdrop_path'];
    genreIds = json['genre_ids'].cast<int>();
    id = json['id'];
    originalLanguage = json['original_language'];
    originalTitle = json['original_title'];
    overview = json['overview'];
    popularity = json['popularity'];
    posterPath = json['poster_path'];
    releaseDate = json['release_date'];
    title = json['title'];
    video = json['video'];
    voteAverage = json['vote_average'];
    voteCount = json['vote_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['adult'] = adult;
    data['backdrop_path'] = backdropPath;
    data['genre_ids'] = genreIds;
    data['id'] = id;
    data['original_language'] = originalLanguage;
    data['original_title'] = originalTitle;
    data['overview'] = overview;
    data['popularity'] = popularity;
    data['poster_path'] = posterPath;
    data['release_date'] = releaseDate;
    data['title'] = title;
    data['video'] = video;
    data['vote_average'] = voteAverage;
    data['vote_count'] = voteCount;
    return data;
  }
}


// class ItemModel {
//   int _page;
//   int _total_results;
//   int _total_pages;
//   List<_Result> _results = [];

//   ItemModel.fromJson(Map<String, dynamic> parsedJson) {
//     print(parsedJson['results'].length);
//     _page = parsedJson['page'];
//     _total_results = parsedJson['total_results'];
//     _total_pages = parsedJson['total_pages'];
//     List<_Result> temp = [];
//     for (int i = 0; i < parsedJson['results'].length; i++) {
//       _Result result = _Result(parsedJson['results'][i]);
//       temp.add(result);
//     }
//     _results = temp;
//   }

//   List<_Result> get results => _results;

//   int get total_pages => _total_pages;

//   int get total_results => _total_results;

//   int get page => _page;
// }

// class _Result {
//   int _vote_count;
//   int _id;
//   bool _video;
//   var _vote_average;
//   String _title;
//   double _popularity;
//   String _poster_path;
//   String _original_language;
//   String _original_title;
//   final List<int> _genre_ids = [];
//   String _backdrop_path;
//   bool _adult;
//   String _overview;
//   String _release_date;

//   _Result(result) {
//     _vote_count = result['vote_count'];
//     _id = result['id'];
//     _video = result['video'];
//     _vote_average = result['vote_average'];
//     _title = result['title'];
//     _popularity = result['popularity'];
//     _poster_path = result['poster_path'];
//     _original_language = result['original_language'];
//     _original_title = result['original_title'];
//     for (int i = 0; i < result['genre_ids'].length; i++) {
//       _genre_ids.add(result['genre_ids'][i]);
//     }
//     _backdrop_path = result['backdrop_path'];
//     _adult = result['adult'];
//     _overview = result['overview'];
//     _release_date = result['release_date'];
//   }

//   String get release_date => _release_date;

//   String get overview => _overview;

//   bool get adult => _adult;

//   String get backdrop_path => _backdrop_path;

//   List<int> get genre_ids => _genre_ids;

//   String get original_title => _original_title;

//   String get original_language => _original_language;

//   String get poster_path => _poster_path;

//   double get popularity => _popularity;

//   String get title => _title;

//   double get vote_average => _vote_average;

//   bool get video => _video;

//   int get id => _id;

//   int get vote_count => _vote_count;
// }
