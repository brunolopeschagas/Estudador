import 'package:estudador/widgets/planoestudo.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BLEstudos"),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Adicionar',
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PlanoEstudoPage(),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
