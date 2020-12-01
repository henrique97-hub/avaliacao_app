// import 'dart:html';
// import 'package:flutter/material.dart';
//
 /// Segunda Tela do app ;
 /// nela contém nome do desenvolvedor, QR direcionando ao github do mesmo e, logotipo da faculdade

// class SecondPage extends StatelessWidget {
//   @override
//
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Segunda tela"),),
//       body: Column(
//         children: [
//           Text("Henrique Silva Godoy  -RA: 16.01147-3"),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Image.network(
//                 "https://lh3.googleusercontent.com/proxy/Q3h9QBIus4XT3JsUDCL59L_rVzpRVTxl_cDGxJ2V7zfdhsFPOzyg847yNbhslhQ_bPCO_peeIHmAAevneRBunRrF2q7Tzw2ppsaGi8Kt1lvbCQKydmtvr7vQeCXydixX0DWN1uQKuIjkTJ-jw9fMTdlNMfC_"),
//           ),
              /// isere o QR code atraves do asset
//           Expanded(
//             child: Row(
//               children: [
//                 Expanded(child: Image.asset(
//                 assets/frame.png)
//
//                 Expanded(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     // para deixar o texto centralizado e na mesma linha da imagem
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     // para deixar o texto começando no meio e na mesma linha da imagem
//                     children: [
//                       Text("Para mais informações acesse o QR-code!")
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           ),
//
//         ],
//       ),
//
//     );
//   }
// }
