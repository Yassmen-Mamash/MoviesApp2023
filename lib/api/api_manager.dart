import 'dart:convert';
import 'package:http/http.dart' as http ;

import 'model/MoviesPopularResponce.dart';
class ApiManager
{
  static const String Base_URL='api.themoviedb.org';
  static const String APIKey='3ed644bd6e1fec014fd5d12295fff748';

  // 1- Popular api for top side section.
  // 2- Latest api for New Realeases section.
  // 3- Top Rated api for Top Rated section

  static Future<MoviesPopularResponce> getMoviePopular () async  // 1- GET /movie/popular
  {
    // https://api.themoviedb.org/3/movie/popular?api_key=3ed644bd6e1fec014fd5d12295fff748
   var uri = Uri.https(Base_URL,'3/movie/popular', {'api_key':APIKey});
   var responce = await http.get(uri);
   var responceBody=responce.body;
   var json=jsonDecode(responceBody);
   var MoviesPopularREs=MoviesPopularResponce.fromJson(json);
   print(MoviesPopularREs);
   return MoviesPopularREs;

  }

}