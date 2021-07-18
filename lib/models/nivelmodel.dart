import 'model.dart';

class NivelModel extends Model<NivelModel> {
  String descricao;
  int qtdHoras;

  NivelModel({this.descricao, this.qtdHoras});

  @override
  NivelModel fromJson(Map<String, dynamic> json) {
    this.descricao = json['descricao'];
    this.qtdHoras = json['qtdHoras'];
  }

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = Map();
    json['descricao'] = this.descricao;
    json['qtdHoras'] = this.qtdHoras;
  }
}
