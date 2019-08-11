import 'package:flutter/material.dart';
import 'package:mybooks/src/colors/tabel-colors.dart';

Widget campoEntradaLogin(double margemTop, double largura){
  TabelColors cores = TabelColors();
  return Container(
    margin: EdgeInsets.only(top: margemTop),
    width: largura,
    child: TextField(
      decoration: InputDecoration(
        icon: Icon(Icons.person_outline, color: Color(int.parse(cores.corBranca())), size: 30,),
        labelText: "Username",
        labelStyle: TextStyle(color: Color(int.parse(cores.corBranca()))),
      ),
      style: TextStyle(color: Color(int.parse(cores.corBranca())), fontSize: 20),
    ),
  );
}


Widget campoEntradaSenha(double margemTop, double largura){
  TabelColors cores = TabelColors();
  return Container(
    margin: EdgeInsets.only(top: margemTop),
    width: largura,
    child: TextField(
      decoration: InputDecoration(
        icon: Icon(Icons.lock_outline, color: Color(int.parse(cores.corBranca())), size: 30,),
        labelText: "Password",
        labelStyle: TextStyle(color: Color(int.parse(cores.corBranca()))),
      ),
      style: TextStyle(color: Color(int.parse(cores.corBranca())), fontSize: 20),
      obscureText: true,
    ),
  );
}