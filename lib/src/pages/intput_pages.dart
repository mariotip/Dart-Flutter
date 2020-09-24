import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  InputPage({Key key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _name = '';
  String _email = '';
  String _pass = '';
  String _date = '';
  List _poderes = ['volar', 'rayos', 'le huele la boca', 'superfuerza'];
  String _powerSelected = 'volar';

  TextEditingController _inputFielDateController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mis inputs 💙'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        children: [
          _createInput(),
          _createEmail(),
          _createPass(),
          _createDate(),
          _createDropdown(),
          _createPerson(),
          Divider(),
        ],
      ),
    );
  }

  _createInput() => TextField(
        autofocus: true,
        textCapitalization: TextCapitalization.sentences,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(10),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
            counter: Text('letras ${_name.length}'),
            hintText: 'nombre persona',
            labelText: 'Nombre',
            helperText: 'Solo es el nombre',
            suffixIcon: Icon(Icons.accessibility),
            icon: Icon(Icons.account_circle)),
        onChanged: (value) => {
          setState(() {
            _name = value;
          })
        },
      );

  _createEmail() => TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(10),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
            hintText: 'Email',
            helperText: '',
            labelText: 'Email',
            suffixIcon: Icon(Icons.alternate_email),
            icon: Icon(Icons.email)),
        onChanged: (value) => {
          setState(() {
            _email = value;
          })
        },
      );

  _createPerson() {
    return ListTile(
      title: Text('Nombre de persona es: $_name'),
      subtitle: Text('Correo : $_email'),
      leading: Text('pass: $_pass'),
    );
  }

  _createPass() => TextField(
        obscureText: true,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(10),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
            hintText: 'Password',
            helperText: '',
            labelText: 'Password',
            suffixIcon: Icon(Icons.lock_open),
            icon: Icon(Icons.lock)),
        onChanged: (value) => {
          setState(() {
            _pass = value;
          })
        },
      );

  _createDate() => TextField(
        // enableInteractiveSelection: false,
        controller: _inputFielDateController,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(10),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
            hintText: 'Date bird',
            helperText: '',
            labelText: 'Date bird',
            suffixIcon: Icon(Icons.perm_contact_calendar),
            icon: Icon(Icons.date_range_sharp)),
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
          _selectDate(context);
        },
      );

  void _selectDate(BuildContext context) async {
    DateTime picked = await showDatePicker(
        context: context,
        initialDate: new DateTime.now(),
        firstDate: new DateTime(2018),
        lastDate: new DateTime(2025),
        locale: Locale('es', 'ES'));

    if (picked != null) {
      setState(() {
        _date = picked.toString();
        _inputFielDateController.text = _date;
      });
    }
  }

  List<DropdownMenuItem<String>> getOpcDrop() {
    List<DropdownMenuItem<String>> lista = new List();

    _poderes.forEach((poder) {
      lista.add(DropdownMenuItem(value: poder, child: Text(poder)));
    });
    return lista;
  }

  _createDropdown() => 
  Row(
    children: [
      Icon(Icons.select_all_outlined),
      SizedBox(width: 30),
      DropdownButton(
        value: _powerSelected,
            items: getOpcDrop(),
            onChanged: (opc) {
              setState(() {
                _powerSelected=opc;
              });
            }
          ),
    ],
  );
}
