import 'package:estudador/models/planoestudomodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PlanoEstudoPage extends StatefulWidget {
  _PlanoEstudoPageState createState() => _PlanoEstudoPageState();
}

class _PlanoEstudoPageState extends State<PlanoEstudoPage> {
  PlanoEstudoModel _planoEstudo = PlanoEstudoModel();

  _save() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Plano de Estudos'),
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 48, left: 32, right: 32),
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: 8),
            child: TextFormField(
              keyboardType: TextInputType.text,
              textCapitalization: TextCapitalization.words,
              decoration: InputDecoration(
                labelText: "Título",
              ),
              style: TextStyle(fontSize: 20),
              onChanged: (value) {
                setState(() {
                  _planoEstudo.titulo = value;
                });
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _save(),
        child: Icon(Icons.check),
      ),
    );
  }
}
