import 'dart:convert';

class Customers {

  String id;
  String nome;
  String profissao;
  //List<String> tags;

  Customers();

  static Customers fromJson(String jsonString) {
    final Map<String, dynamic> data = jsonDecode(jsonString);
    return Customers()
        ..id = data["_id"]
        ..nome = data["nome"]
        ..profissao = data["profissao"];
        //..tags = data["tags"];
  }

  static List<Customers> fromJsonArray(String jsonString) {
    final Iterable<dynamic> data = jsonDecode(jsonString);
    return data.map<Customers>((dynamic d) => Customers()
        ..id = d["_id"]
        ..nome = d["nome"]
        ..profissao = d["profissao"]
        //..tags = d["tags"]
    ).toList();
  }

}