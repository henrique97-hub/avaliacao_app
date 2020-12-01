import 'weather.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

/// Classe que contem a API que foi utilizada no projeto, a chave de acesso
/// dessa API é 859bf422 (chave ja inclusa no projeto)*/

Future<Weather> getWeather() async {

  final String url = 'https://api.hgbrasil.com/weather?key=859bf422';

  final response = await http.get(url);

  if(response.statusCode == 200) {
    return Weather.fromJson(json.decode(response.body));
  } else {
    throw Exception("Deu ruim");
  }
}