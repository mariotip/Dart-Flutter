import 'package:flutter/material.dart';
import 'dart:async';

class ListaPage extends StatefulWidget {
  ListaPage({Key key}) : super(key: key);
  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {
  ScrollController _scrollController = new ScrollController();
  List<int> _listNum = new List();
  int _lastItem = 0;
  bool _isloading = false;

  @override
  void initState() {
    super.initState();

    _add10();

    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        fetchData();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Listas - Scroll')),
        body: Stack(
          children: [_createList(), _createLoading()],
        ));
  }

  _createList() {
    return ListView.builder(
        controller: _scrollController,
        itemCount: _listNum.length,
        itemBuilder: (BuildContext context, int index) {
          final image = _listNum[index];
          return Container(
            padding: EdgeInsets.all(5.0),
            child: FadeInImage(
              image: NetworkImage('https://picsum.photos/500/300?image=$image'),
              placeholder: AssetImage('assets/load.gif'),
              fit: BoxFit.cover,
            ),
          );
        });
  }

  void _add10() {
    for (var i = 0; i < 10; i++) {
      _lastItem++;
      _listNum.add(_lastItem);
    }

    setState(() {});
  }

  Future<Null> fetchData() async {
    _isloading = true;
    setState(() {});
    final duration = new Duration(seconds: 2);
    return new Timer(duration, response);
  }

  void response() {
    _isloading = false;

    _scrollController.animateTo(_scrollController.position.pixels + 100,
        curve: Curves.fastOutSlowIn, duration: Duration(milliseconds: 250));
    _add10();
  }

  _createLoading() {
    if (_isloading) {
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[CircularProgressIndicator()],
          ),
          SizedBox(height: 15.0)
        ],
      );
    } else {
      return Container();
    }
  }
}
