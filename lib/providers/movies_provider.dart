import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:coctel/models/meals.dart';
// import 'package:coctel/models/now_playing_response.dart';
// import 'package:coctel/models/popular_response.dart';





















// class MoviesProvider extends ChangeNotifier {
//   String _baseUrl = 'themealdb.com';
//   String _apiKey = '1';
//   String _language = 'es-MX';

//   List<CarneResponse> onDisplayMovies = [];
//   List<CarneResponse> popularMovies = [];

//   MoviesProvider() {
//     getOnDisplayMovies();
//     getPopularMovies();
//   }

// //https://www.themealdb.com/meal/53075
//   getOnDisplayMovies() async {
//     var url = Uri.https(_baseUrl, '/meal/',
//         {'api_key': _apiKey, 'language': _language, 'page': '1'});

//     final response = await http.get(url);
//     final Map<String, dynamic> decodeData = json.decode(response.body);
//     //print(decodeData);
//     //print(response.body);
//     final nowPLayingResponse = NowPlayingResponse.fromRawJson(response.body);
//     onDisplayMovies = nowPLayingResponse.results;
//     //Le comunicamos a todos los widgets que estan escuchando que se cambio la data por lo tanto se tienen que redibujar
//     notifyListeners();
//     print(nowPLayingResponse.results[0].meals);
//   }

// //https://www.themealdb.com/
// //https://www.themealdb.com/meal/53076-Bread-omelette-Recipe
//   getPopularMovies() async {
//     var url = Uri.https(_baseUrl, '3/movie/popular',
//         {'api_key': _apiKey, 'language': _language, 'page': '1'});

//     final response = await http.get(url);

//     final popularResponse = PopularResponse.fromRawJson(response.body);

//     //Destructurar resultado para cambiar pagina y mantener los actuales
//     popularMovies = [...popularMovies, ...popularResponse.results];
//     notifyListeners();
//   }
// }
