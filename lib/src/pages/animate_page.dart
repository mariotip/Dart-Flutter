import 'dart:math';

import 'package:flutter/material.dart';

class AnimatePage extends StatefulWidget {
  @override
  _AnimatePage createState() => _AnimatePage();
}

class _AnimatePage extends State<AnimatePage> {
  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.blue[900];
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animated container')
          // actions: [],
          ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(milliseconds: 500), //tiempo de duracion
          curve: Curves.fastOutSlowIn, //tipo de animacion
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            borderRadius: _borderRadius,
            color: _color,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlutterLogo(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _change(),
        backgroundColor: Colors.red[900],
        child: Icon(Icons.smart_button),
      ),
    );
  }

  _change() {
    final rand = Random();
    setState(() {
      _width = rand.nextInt(400).toDouble();
      _height = rand.nextInt(400).toDouble();
      _color = Color.fromRGBO(
          rand.nextInt(255), rand.nextInt(255), rand.nextInt(255), 1);
      _borderRadius = BorderRadius.circular(rand.nextInt(50).toDouble());
    });
  }
}
