import 'package:flutter/material.dart';

Widget buildButton(double margemEsquerda, double margemTopo, double margemDireita, double margemBaixo, double altura, double largura,String label, int corText, int corButton, double opacidade, Function funcao){
  return Container(
    margin: EdgeInsets.only(left: margemEsquerda, top: margemTopo, right: margemDireita, bottom: margemBaixo),
    width: largura,
    height: altura,
    child: RaisedButton(
      child: Center(
        child: Text(label,
            style: TextStyle(
                color: Color(corText),
                fontSize: 15)),
      ),
      color: Color(corButton).withOpacity(opacidade),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0)),
      onPressed: (){
        funcao();
      },
    ),
  );
}