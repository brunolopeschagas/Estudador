import 'package:estudador/models/nivelmodel.dart';
import 'package:estudador/models/planoestudomodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PlanoEstudoPage extends StatefulWidget {
  _PlanoEstudoPageState createState() => _PlanoEstudoPageState();
}

class _PlanoEstudoPageState extends State<PlanoEstudoPage> {
  PlanoEstudoModel _planoEstudo = PlanoEstudoModel();

  TextEditingController descricaoCtrl = TextEditingController();
  TextEditingController qtdHorasCtrl = TextEditingController();

  _save() {}

  _addAoPlano() {
    if (descricaoCtrl.text == null ||
        descricaoCtrl.text.trim().isEmpty ||
        qtdHorasCtrl.text == null ||
        qtdHorasCtrl.text.trim().isEmpty) {
      return;
    }

    setState(() {
      NivelModel nivel = NivelModel(
          descricao: descricaoCtrl.text,
          qtdHoras: int.parse(qtdHorasCtrl.text));
      _planoEstudo.adicionarNivel(nivelModel: nivel);
      descricaoCtrl.clear();
      qtdHorasCtrl.clear();
    });
    print(_planoEstudo);
  }

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
          Container(
            margin: EdgeInsets.only(bottom: 8, top: 8),
            child: Text(
              "Níveis",
              style: TextStyle(fontSize: 18),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 8),
            child: TextFormField(
              controller: descricaoCtrl,
              keyboardType: TextInputType.text,
              textCapitalization: TextCapitalization.words,
              decoration: InputDecoration(labelText: "Descrição do nível"),
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 8),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: TextFormField(
                    controller: qtdHorasCtrl,
                    keyboardType: TextInputType.number,
                    decoration:
                        InputDecoration(labelText: "Quantidade de horas"),
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: IconButton(
                    icon: Icon(Icons.add),
                    onPressed: _addAoPlano,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 8),
            child: Column(
              children: _planoEstudo.niveis.map(
                (n) {
                  return Card(
                    child: Container(
                      padding: EdgeInsets.all(16),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              n.descricao,
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              '${n.qtdHoras} horas',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ).toList(),
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
