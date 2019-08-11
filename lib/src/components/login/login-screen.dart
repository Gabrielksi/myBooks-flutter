import 'package:flutter/material.dart';
import 'package:mybooks/src/colors/tabel-colors.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'login-block.dart';
import 'package:mybooks/src/widget/button.dart';
import 'package:mybooks/src/widget/icon-button.dart';
import 'package:mybooks/src/widget/logo-mybooks.dart';
import 'package:mybooks/src/widget/pack-icons.dart';
import 'package:mybooks/src/widget/simple-text.dart';
import 'package:mybooks/src/widget/text-field-login.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TabelColors cores = TabelColors();
  @override
  Widget build(BuildContext context) {
    LoginBlock blok = LoginBlock(context);
    return BlocProvider<LoginBlock>(
      bloc: LoginBlock(context),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
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
            child: Column(
              children: <Widget>[
                //Logo mybooks
                buildLogoMybooks(MediaQuery.of(context).size.height * 0.25),

                //campo usuario
                campoEntradaLogin(MediaQuery.of(context).size.height * 0.12,
                    MediaQuery.of(context).size.width * 0.90),

                //campo senha
                campoEntradaSenha(MediaQuery.of(context).size.height * 0.03,
                    MediaQuery.of(context).size.width * 0.90),

                //Botao de logar
                buildButton(
                    1,
                    50,
                    1,
                    1,
                    MediaQuery.of(context).size.height * 0.07,
                    MediaQuery.of(context).size.width * 0.50,
                    "Sign in",
                    int.parse(cores.corPrincipal()),
                    int.parse(cores.corBranca()),
                    1.0, (){}),

                //Botoes facebook e google
                Container(
                  margin: EdgeInsets.only(top: 90, left: 25),
                  child: Row(
                    children: <Widget>[
                      buildBotaoIcone(
                        MediaQuery.of(context).size.width * 0.37,
                        MediaQuery.of(context).size.height * 0.07,
                        int.parse(cores.corBranca()),
                        0.0,
                        iconeTelefone(int.parse(cores.corBranca()), 30),
                        buildSimpleText(
                            "Telefone", int.parse(cores.corBranca()), 20),
                        blok.onClickTelephone,
                      ),
                      buildBotaoIcone(
                        MediaQuery.of(context).size.width * 0.37,
                        MediaQuery.of(context).size.height * 0.07,
                        int.parse(cores.corBranca()),
                        0.0,
                        iconeGoogle(int.parse(cores.corBranca()), 30),
                        buildSimpleText(
                            "Google", int.parse(cores.corBranca()), 20),
                        blok.onClickTelephone,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
