import 'package:flutter/material.dart';

class HttpService {
  final String apiKey = '';
  final String baseUrl = 'https://api.themoviedb.org/3/movie/popular?api_key=';
}

Future<String> getPopularMovies() async {
  final String uri = baseUrl + apiKey;

  http.Response result = await http.get(Uri.parse(uri));
  if (result.statusCode == HttpStatus.ok) {
    print("Sukses");
    String response = result.body;
    return response;
  }else{
    print("Fail");
    return null;
  }
  }
}
