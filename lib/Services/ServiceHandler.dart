import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:ytsamovies/Models/MovieSuggestionsModel.dart';

Future<MovieSuggestions> fetchMovieSuggestions() async{
  final response = await http.get('https://yts.mx/api/v2/movie_suggestions.json?movie_id=11');

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return MovieSuggestions.fromJson(json.decode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}