import 'package:flutter/material.dart';

Widget buildCardView(item) {
  return Container(
    width: 270,
    child: ListTile(
        title: Card(
          child: Container(
            height: 400,
            padding: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                Padding(
                  child: Image.network(item['imagePath']),
                  padding: EdgeInsets.only(bottom: 8),
                ),
                ListTile(
                  //title: Text(item['titulo']),
                  //subtitle: Text(item['autor']),
                )
              ],
            ),
          ),
        )),
  );
}