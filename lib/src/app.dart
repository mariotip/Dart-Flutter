import 'package:contador/src/pages/contador.dart';
import 'package:flutter/material.dart';
// import 'package:contador/src/pages/home_page.dart';

class MyApp extends StatelessWidget {
  //clase para llamar extendiendo de class name extends StatelessWidget
  @override // sobreescribir el metodo build
  Widget build(BuildContext context) {
    //a build mandamos el context
    // return MaterialApp(home: Center(child: HomePage()));
    return MaterialApp(home: Center(child: Contador()));
  }
}
