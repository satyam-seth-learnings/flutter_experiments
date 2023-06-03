import 'dart:async';
import 'package:http/http.dart' show Client;
import 'dart:convert';

import '../models/item_model.dart';
import '../models/trailer_model.dart';

class MovieApiProvider {
  Client client = Client();
  final _apiKey = 'ff5d4bbd48363bb3f65e4c34e204d94b';
  final _baseUrl = "http://api.themoviedb.org/3/movie";

  Future<ItemModel> fetchMovieList() async {
    print("entered");
    final response = await client.get(
      Uri.parse("$_baseUrl/popular?api_key=$_apiKey"),
    );
    print(response.body.toString());
    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON
      return ItemModel.fromJson(json.decode(response.body));
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to load post');
    }
  }

  Future<TrailerModel> fetchTrailer(int movieId) async {
    final response = await client.get(
      Uri.parse("$_baseUrl/$movieId/videos?api_key=$_apiKey"),
    );

    if (response.statusCode == 200) {
      return TrailerModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load trailers');
    }
  }
}