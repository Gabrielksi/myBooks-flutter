import 'package:flutter/material.dart';

Widget buildSimpleText(String label, int cor, double tamanhoFonte) {
  return Text(label,
      style: TextStyle(color: Color(cor), fontSize: tamanhoFonte));
}
