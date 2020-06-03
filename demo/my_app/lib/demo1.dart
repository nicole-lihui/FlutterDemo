import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

void main() {
  runApp(MaterialApp(
    home: MyHome(),
    // set theme primary color and accent color
    theme: ThemeData(
      primarySwatch: Colors.green,
      accentColor: Colors.lightGreenAccent,
      backgroundColor: Colors.black,
    ),
  ));
}

class MyHome extends StatelessWidget {
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Use Theme"),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.black54),
        child: Center(
          child: Container(
            color: Theme.of(context).accentColor,
            child: Text(
              "Hellor World",
              style: Theme.of(context).textTheme.title,
            ),
          ),
        ),
      ),

      floatingActionButton: Theme(
        data: Theme.of(context).copyWith(
          colorScheme: Theme.of(context).colorScheme.copyWith(secondary: Colors.pinkAccent),
        ),
        child: FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
