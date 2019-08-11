import 'package:flutter/material.dart';
import 'package:mybooks/src/colors/tabel-colors.dart';
import 'package:mybooks/src/widget/logo-mybooks.dart';
import 'package:mybooks/src/widget/button.dart';



class InitScreen extends StatefulWidget {
  @override
  _InitScreenState createState() => _InitScreenState();
}

class _InitScreenState extends State<InitScreen> {
  @override
  Widget build(BuildContext context) {

    void entrarTelaLogin(){
      Navigator.of(context).pushNamed('/tSignin');
    }

    TabelColors cores = TabelColors();

    return Scaffold(

      //Fundo em gradiente
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(int.parse(cores.corGradiente())),
              Color(int.parse(cores.corPrincipal())),
            ],
            begin: Alignment.topLeft,
            end: Alignment(0.80, 0.00),
            //stops: [0.0, 0.5],
            tileMode: TileMode.mirror,
          ),
        ),
        //coluna principal
        child: Column(
          children: <Widget>[
            //Logo mybooks
            buildLogoMybooks(MediaQuery.of(context).size.height * 0.30),

            //botao laranja cadastro
            buildButton(1, MediaQuery.of(context).size.height * 0.15, 1, 1, MediaQuery.of(context).size.height * 0.07, MediaQuery.of(context).size.width * 0.50, "Singn up", int.parse(cores.corBranca()), int.parse(cores.corPrincipal()), 1.0, (){}),

            //botao branco entrada
            buildButton(1, MediaQuery.of(context).size.height * 0.05, 1, 1, MediaQuery.of(context).size.height * 0.07, MediaQuery.of(context).size.width * 0.50, "Login", int.parse(cores.corPrincipal()), int.parse(cores.corBranca()), 1.0, entrarTelaLogin),
          ],
        ),
      ),
    );
  }
}

