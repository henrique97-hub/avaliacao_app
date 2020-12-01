/// Classe Weather possui a modelagem do clima, nela possui
/// os atributos que serão utilizados, costrutor e factory

class Weather {
  String city;
  String date;
  String condition;
  int maxTemp;
  int minTemp;

  /// Recebe arquivos do tipo JSON e retorna objetos instanciados a partir da
  /// classe Weather

  factory Weather.fromJson(Map<String, dynamic> jsonMap){
    return Weather(
        city: jsonMap['results']['city'],
        date: jsonMap['results']['forecast'][0]['date'],
        condition: jsonMap['results']['forecast'][0]['description'],
        maxTemp: jsonMap['results']['forecast'][0]['max'],
        minTemp: jsonMap['results']['forecast'][0]['min']);
  }
  /// Construtor da classe Weather

  Weather({this.city, this.date, this.condition, this.maxTemp, this.minTemp});

}