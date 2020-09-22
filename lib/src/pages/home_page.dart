import 'package:flutter/material.dart';
import 'package:contador/src/utils/icon_string.dart';
import 'package:contador/src/providers/menu_provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    // menuProvider.cargarData().then((value) => {print('lista'), print(value)}); //se tarda

    return FutureBuilder(
        future: menuProvider.cargarData(),
        initialData: [Icon(Icons.ac_unit)],
        builder: (context, AsyncSnapshot<List<dynamic>> snapshot) =>
            ListView(children: _listaItems(snapshot.data, context)));
  }

  List<Widget> _listaItems(List<dynamic> data, context) {
    final List<Widget> opciones = [];

    data.forEach(
      (op) {
        final widgetTemp = ListTile(
          title: Text(op['texto']),
          leading: getIcon(op['icon']),
          trailing: Icon(Icons.keyboard_arrow_right, color: Colors.greenAccent),
          onTap: () {
            //mandamos las rutas al app.dart
            Navigator.pushNamed(context, op['ruta']);
            // final route = MaterialPageRoute(builder: (context) => AlertPage());
            // Navigator.push(context, route);
          },
        );
        opciones.add(widgetTemp);
        opciones.add(Divider());
      },
    );
    return opciones;
  }
}
