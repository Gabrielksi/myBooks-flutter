import 'package:flutter/material.dart';
import 'package:mybooks/src/colors/tabel-colors.dart';

Widget buildLogoMybooks(double margemTop){
  TabelColors cores = TabelColors();
  return Container(
      margin: EdgeInsets.only(
          top: (margemTop)),
      child: Center(
        child: Text("myBooks",
            style: TextStyle(
                color: Color(int.parse(cores.corBranca())),
                fontSize: 45)),
      ));
}