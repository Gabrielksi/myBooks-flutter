import 'dart:async';
import 'package:bloc_pattern/bloc_pattern.dart';


class HomeBloc implements BlocBase{

  var _contador = 0;

  var _contadorControle = StreamController<int>();

  Stream<int> get saidaContador =>_contadorControle.stream;
  Sink<int> get entradaContador => _contadorControle.sink;


  void incrementar(){
    _contador++;
    entradaContador.add(_contador);
  }

  @override
  void dispose() {
    _contadorControle.close();
  }

}