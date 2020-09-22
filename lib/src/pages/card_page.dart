import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
          padding: EdgeInsets.all(15.0),
          children: [_cardtype1(), _cardtype2()]),
    );
  }

  _cardtype1() => Card(
        elevation: 10,
        shadowColor: Colors.blueAccent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: <Widget>[
            ListTile(
              leading: Icon(
                Icons.photo_album,
                color: Colors.blue,
              ),
              title: Text('titulo'),
              subtitle: Text('subtitulo'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FlatButton(onPressed: () {}, child: Text('Cancelar')),
                FlatButton(onPressed: () {}, child: Text('Aceptar'))
              ],
            )
          ],
        ),
      );

  _cardtype2() {
    final card = Container(
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage('https://source.unsplash.com/500x800/?bikini'),
            placeholder: AssetImage('assets/load.gif'),
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(20.0), boxShadow: [
        BoxShadow(
            color: Colors.blueGrey[200],
            blurRadius: 10,
            spreadRadius: 10.0,
            offset: Offset(2.0, 2.0))
      ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: card,
      ),
    );
  }
}
