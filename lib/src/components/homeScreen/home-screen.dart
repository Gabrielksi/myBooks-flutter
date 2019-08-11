import 'package:flutter/material.dart';
import 'package:mybooks/src/colors/tabel-colors.dart';
import 'package:mybooks/src/widget/list-view.dart';
import 'package:mybooks/src/widget/simple-text.dart';

import 'bloc-home.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    TabelColors cores = TabelColors();
    BlokHome blok = BlokHome();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(int.parse(cores.corBranca())),
        title: buildSimpleText("myBooks", int.parse(cores.corTexto()), 25.0),
      ),
      body: FutureBuilder<String>(
        future: blok.dados(),
        builder: (context, snapShot) {
          switch (snapShot.connectionState) {
            case ConnectionState.none:
            case ConnectionState.waiting:
              print(blok.list);
              return Center(
                child: Text(
                  "Carregando...",
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
              );
            default:
              if (snapShot.hasError) {
                return Center(
                  child: Text(
                    "Erro ao iniciar conexão",
                    style: TextStyle(color: Colors.black, fontSize: 25),
                  ),
                );
              } else {
                return buildMinhaListView(blok.list);
              }
          }
        },
      ),
    );
  }
}
