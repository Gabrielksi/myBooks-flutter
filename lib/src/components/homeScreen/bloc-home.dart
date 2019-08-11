import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'package:bloc_pattern/bloc_pattern.dart';

const request =
    "https://raw.githubusercontent.com/Gabrielksi/arquivo-json-e-imagens/master/db.json";


class BlokHome implements BlocBase{

  List list;

  Future<String> dados() async {
    http.Response response = await http.get(request);

    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      list = data["biblioteca"];
    } else {
      print("falha");
    }

    return ("sucesso");
  }



  @override
  void dispose() {
    // TODO: implement dispose
  }

}