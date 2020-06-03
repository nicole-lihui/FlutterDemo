import 'package:demo/routerDemo.dart';
import 'package:flutter/material.dart';

import 'dioUtil.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextStyle style = TextStyle(fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    String username = "";
    final usernameField = TextField(
      decoration: InputDecoration(
        hintText: "Username",
        border: OutlineInputBorder(),
      ),
      onChanged: (text) {
        username = text;
      },
    );

    String password = "";
    final passwordField = TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Password",
        border: OutlineInputBorder(),
      ),
      onChanged: (text) {
        password = text;
      },
    );
  

    final loginButon = Material(
      color: Color(0xff01A0C7),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          // DartHttpUtils().postUrlencodedClient(username, password);
          DioHttpUtil().postUrlClient(username, password);
        },
        child: Text(
          "Login",
          textAlign: TextAlign.center,
          style:
              style.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );

    final testButon = Material(
      color: Color(0xff01A0C7),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          // ProxyUtil().config();
        // DartHttpUtils().getClient();
          DioHttpUtil().getClient();
        },
        child: Text(
          "Test",
          textAlign: TextAlign.center,
          style:
              style.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );

    final routerDemo = FlatButton(
      child: Text('Open New Router'),
      textColor: Colors.blue,
      onPressed: () {
        Navigator.push(context, 
         MaterialPageRoute(builder: (context) {
           return NewRouter();
         }));
      },
    );
   
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 45.0),
                usernameField,
                SizedBox(height: 25.0),
                passwordField,
                SizedBox(height: 35.0),
                loginButon,
                SizedBox(height: 15.0),
                testButon,
                SizedBox(height: 15.0),
                routerDemo,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
