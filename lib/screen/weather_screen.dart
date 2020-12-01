import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/weather.dart';
import '../models/weather_repository.dart';
import '../models/secondPage.dart';

/// Classe que contem a interface exibida para o usuário
///

class WeatherScreen extends StatefulWidget {
  @override
  _WeatherScreenState createState() => _WeatherScreenState();
}

// class WeatherScreen1 extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('Primeira Pagina'),
//         ),
//         body: Container(
//           child: Center(
//             child: RaisedButton(
//               onPressed: () {},
//               child: Text("Ir para a segunda pagina"),
//             ),
//           ),
//         ));
//   }
//   }
  



class _WeatherScreenState extends State<WeatherScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Usando API',
      home: Scaffold(
          backgroundColor: Colors.limeAccent[700],

          appBar: AppBar(
            centerTitle: true,
            title: Text('App Previsão do Tempo '),

          ),

          /// ********************** Acesso a SEGUNDA TELA do app, por meio de um botão - Implementação fail *************************************************

          floatingActionButton: FloatingActionButton(
            onPressed: (){
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (BuildContext context) => SecondPage()));


            },
            child: Icon(Icons.assignment_turned_in_outlined)
          ),

          body:FutureBuilder<Weather>(

            future: getWeather(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        snapshot.data.date,
                        style: TextStyle(fontSize: 30.0, color: Colors.purple[300]),
                      ),
                      Icon(
                        Icons.wb_sunny_rounded,
                        size: 250.0,
                        color: Colors.yellow,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 30.0),
                        child: Text(
                          snapshot.data.condition,
                          style: TextStyle(fontSize: 20.0, color: Colors.white),
                        ),
                      ),
                      Text(
                          "Máxima: ${snapshot.data.maxTemp.toString()}°",
                          style:
                          TextStyle(fontSize: 20.0, color: Colors.white)),
                      Text("Mínima: ${snapshot.data.minTemp.toString()}°",
                          style:
                          TextStyle(fontSize: 20.0, color: Colors.white)),

                    ],
                  ),


                );
              } else {
                return Center(child: CircularProgressIndicator()

                );
              }
            },
          )),
    );
  }
}