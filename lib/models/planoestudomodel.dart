import 'package:estudador/models/model.dart';

import 'nivelmodel.dart';

class PlanoEstudoModel extends Model<PlanoEstudoModel> {
  String titulo;
  int tempoEstudado;
  List<NivelModel> niveis = [];
  NivelModel nivelAtual;

  get json => null;

  @override
  PlanoEstudoModel fromJson(Map<String, dynamic> json) {
    this.titulo = json['titulo'];
    this.tempoEstudado = json['tempoEstudado'];
    this.niveis = json['niveis'];
    this.nivelAtual = json['nivelAtual'];
  }

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = Map();
    json['titulo'] = this.titulo;
    json['tempoEstudado'] = this.tempoEstudado;
    json['niveis'] = this.niveis;
    json['nivelAtual'] = this.nivelAtual;
    return json;
  }

  void adicionarNivel({NivelModel nivelModel}) {
    niveis.add(nivelModel);
  }
}
