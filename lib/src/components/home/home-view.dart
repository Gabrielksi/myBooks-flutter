import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:mybooks/src/components/home/home-bloc.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    final HomeBloc homeBloc = BlocProvider.of<HomeBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Bloc"),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: StreamBuilder(
          stream: homeBloc.saidaContador,
          initialData: 0,
          builder: (context, snapchot){
            return Text("Clicou no botão ${snapchot.data} vezes");
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          homeBloc.incrementar();
        },
        backgroundColor: Colors.black,
      ),
    );
  }
}

