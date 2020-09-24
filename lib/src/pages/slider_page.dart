import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valueSlicer = 100.0;
  bool _valueCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: [
            _createSlide(),
            Expanded(child: _createImage()),
            _createCheck(),
            _createSwitch()
          ],
        ),
      ),
    );
  }

  _createSlide() {
    return Slider(
        value: _valueSlicer,
        min: 10.0,
        max: 400.0,
        label: 'Tamaño',
        divisions: 10,
        inactiveColor: Colors.blue[900],
        onChanged: (_valueCheck)
            ? null
            : (value) {
                print(value);
                setState(() {
                  _valueSlicer = value;
                });
              });
  }

  _createImage() {
    return Image(
      image: NetworkImage(
          'https://www.evrent.co.uk/wp-content/uploads/2020/01/ModelX.png'),
      width: _valueSlicer,
    );
  }

  _createCheck() => CheckboxListTile(
      value: _valueCheck,
      title: Text('Slider'),
      onChanged: (valor) {
        setState(() {
          _valueCheck = valor;
        });
      });

  _createSwitch() => SwitchListTile(
      value: _valueCheck,
      title: Text('Slider'),
      onChanged: (valor) {
        setState(() {
          _valueCheck = valor;
        });
      });
}
