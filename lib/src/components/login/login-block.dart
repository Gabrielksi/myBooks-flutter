import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:mybooks/src/components/homeScreen/home-screen.dart';
import 'package:rxdart/rxdart.dart';


class LoginBlock extends BlocBase{

  //final Authentication _autenticacao = Authentication();

  final BuildContext context;
  LoginBlock(this.context);

  final _telefoneControler = BehaviorSubject<String>();

  Observable<String> get telefoneFlux => _telefoneControler.stream;
  Sink<String> get eventoTelefone => _telefoneControler.sink;

  final _smsControler = BehaviorSubject<String>();
  Observable<String> get smsFlux => _smsControler.stream;
  Sink<String> get eventoSms => _smsControler.sink;


  onClickTelephone() {

    //await _autenticacao.verificarNumeroTelefone(_telefoneControler.value);

    Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => HomeScreen()));
    //print("entrou");

  }




  @override
  void dispose() {
    _telefoneControler.close();
    _smsControler.close();
  }

}