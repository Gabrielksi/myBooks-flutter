import 'package:flutter/material.dart';

Widget buildBotaoIcone(double largura, double altura, int cor, double opacidade,
    Widget icone, Widget texto, Function funcao) {
  return Container(
    margin: EdgeInsets.only(left: 20),
    width: largura,
    height: altura,
    child: RaisedButton(
      color: Color(cor).withOpacity(opacidade),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      child: Row(
        children: <Widget>[
          icone,
          texto,
        ],
      ),
      onPressed: (){
        funcao();
      },
    ),
  );
}
