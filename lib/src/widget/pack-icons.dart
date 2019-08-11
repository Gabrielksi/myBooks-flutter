import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


Widget iconeTelefone(int cor, double tamanho){
  return Icon(
    Icons.phone,
    color: Color(cor),
    size: tamanho,
  );
}

Widget iconeGoogle(int cor, double tamanho){
  return Icon(
    FontAwesomeIcons.google,
    color: Color(cor),
    size: tamanho,
  );
}