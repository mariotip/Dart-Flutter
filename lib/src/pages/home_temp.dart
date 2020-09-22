import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['uno', 'dos', 'tres', 'cuatro', 'cinco'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components temp'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: _crearItemsCorta(),
        // children: <Widget>[
        //   Container(
        //     height: 30,
        //     color: Colors.amber[600],
        //     child: const Center(child: Text('Hola como estas')),
        //   ),
        //   Container(
        //     height: 50,
        //     color: Colors.amber[500],
        //     child: const Center(child: Text('esto es la onda')),
        //   ),
        //   Divider(),
        //   Container(
        //     height: 50,
        //     color: Colors.amber[100],
        //     child: const Center(child: Text('Como es lo bueno')),
        //   ),
        // ],
      ),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = new List<Widget>();

    for (var opc in opciones) {
      final tempWidagwet = ListTile(
        title: Text(opc),
      );
      lista.add(tempWidagwet);
      lista.add(Divider());
    }
    return lista;
  }

  List<Widget> _crearItemsCorta() {
    return opciones
        .map((e) => Column(
              children: [
                ListTile(
                  title: Text(e + '😅'),
                  subtitle: Text('ola'),
                  leading: Icon(Icons.access_alarm),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () => {},
                ),
                Divider()
              ],
            ))
        .toList();
  }
}
