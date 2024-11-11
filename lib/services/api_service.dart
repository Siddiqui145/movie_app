import 'dart:convert';
import 'package:movie_app/models/movie.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static const String _baseUrl = 'https://api.tvmaze.com';

  static Future<List<Movie>> fetchMovies() async {
    final response = await http.get(Uri.parse('$_baseUrl/search/shows?q=all'));
    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((movie) => Movie.fromJson(movie)).toList();
    } else {
      throw Exception('Failed to load movies');
    }
  }

  static Future<List<Movie>> searchMovies(String query) async {
    final response =
        await http.get(Uri.parse('$_baseUrl/search/shows?q=$query'));
    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((movie) => Movie.fromJson(movie)).toList();
    } else {
      throw Exception('Failed to load search results');
    }
  }
}
