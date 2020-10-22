import 'package:movieapp/data/models/movie_model.dart';

class MoviesResultModel {
  List<MovieModal> movies;

  MoviesResultModel({this.movies});

  MoviesResultModel.fromJson(Map<String, dynamic> json) {
    if (json['results'] != null) {
      movies = new List<MovieModal>();
      json['results'].forEach((v) {
        movies.add(MovieModal.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.movies != null) {
      data['results'] = this.movies.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
