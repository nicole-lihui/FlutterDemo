import 'package:demo/routerDemo.dart';
import 'package:flutter/material.dart';
import 'home.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter login UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        "tiprouter_test": (context) => TipRouterTest(),
        "tiprouter_name": (context) => TipRouterName(),
        "tiprouter": (context) {
          return TipRouter(text: ModalRoute.of(context).settings.arguments);
        },
        "home_login": (context) => MyHomePage(),
        "/":(context) => NewRouter(), 
      },
      // home: TipRouterTest(),
    );
  }
}

