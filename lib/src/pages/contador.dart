import 'package:flutter/material.dart';

class Contador extends StatefulWidget {
  @override
  createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  final _estiloTexto =
      new TextStyle(fontSize: 15, color: Colors.blueAccent, fontFamily: 'Hack');
  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //usar toda la pantalla
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
              style: _estiloTexto,
            ),
            Text(
              '$_conteo',
              style: TextStyle(
                  fontSize: 20, color: _conteo > 0 ? Colors.blue : Colors.red),
            )
          ],
        ),
      ),
      floatingActionButton: _crearBtn(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _crearBtn() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(
          width: 5,
        ),
        SizedBox(
          child: FloatingActionButton(
            heroTag: 'hero1',
            onPressed: _reset,
            child: Icon(Icons.refresh),
          ),
          width: 35,
        ),
        Expanded(child: SizedBox()),
        SizedBox(
          child: FloatingActionButton(
            heroTag: 'hero2',
            onPressed: _rest,
            child: Icon(Icons.remove),
          ),
          width: 40,
        ),
        SizedBox(
          width: 5.0, //space betwen witgets
        ),
        SizedBox(
          child: FloatingActionButton(
            heroTag: 'hero3',
            onPressed: _add,
            child: Icon(Icons.add),
          ),
          width: 40,
        ),
        SizedBox(
          width: 5,
        ),
      ],
    );
  }

  _add() {
    setState(() => _conteo++);
  }

  _rest() {
    setState(() => _conteo--);
  }

  _reset() {
    setState(() => _conteo = 0);
  }
}
