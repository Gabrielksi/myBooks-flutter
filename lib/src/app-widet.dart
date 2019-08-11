import'package:flutter/material.dart';
import 'components/homeScreen/home-screen.dart';
//import 'components/initScreen/init-screen.dart';
import 'components/login/login-screen.dart';
//import 'package:bloc_pattern/bloc_pattern.dart';
//import 'package:mybooks/src/home/home-bloc.dart';
//import 'package:mybooks/src/home/home-view.dart';

class MyApp extends StatelessWidget {
  // This src.widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      /*BlocProvider<HomeBloc>(
        child: HomePage(),
        bloc: HomeBloc(),
      ),*/
      routes: <String, WidgetBuilder>{
        '/tSignin': (BuildContext context) => LoginScreen(),
        '/tHome': (BuildContext context) => HomeScreen()
      },
    );
  }
}
