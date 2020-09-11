import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final estiloTexto =
      new TextStyle(fontSize: 15, color: Colors.blueAccent, fontFamily: 'Hack');

  final conteo = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //the Scaffold this is the body container for witgets
      appBar: AppBar(
          title: Text('My own counter'),
          centerTitle: true,
          backgroundColor: Colors.green),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Numero de puchadas XD:',
              style: estiloTexto,
            ),
            Text('$conteo', style: estiloTexto)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print('hola mundo');
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
