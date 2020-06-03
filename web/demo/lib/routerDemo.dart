import 'package:flutter/material.dart';

class NewRouter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello Router'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () async {
            Navigator.pushNamed(context, "tiprouter_test");
            // Navigator.push(context,
            //  MaterialPageRoute(builder: (context) {
            //  return TipRouterTest();
            // }));
          },
          child: Text('Open TipRouter Test'),
        ),
      ),
    );
  }
}

class TipRouterTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        onPressed: () async {
          var result = await 
          //Navigator.of(context).pushNamed("tiprouter_name", arguments: "hi, I'm TipRouterName");
          
          Navigator.of(context).pushNamed("tiprouter", arguments: "I am TipRouter");
          // Navigator.push(context, MaterialPageRoute(
          //   builder: (context) {
          //     return TipRouter(
          //       text: 'I am notice',
          //     );
          //   },
          // ));
          print("Router return $result");
        },
        child: Text('Open Notice Page'),
      ),
    );
  }
}

class TipRouter extends StatelessWidget {
  TipRouter({
    Key key,
    @required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notices"),
      ),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(text),
              RaisedButton(
                onPressed: () => Navigator.pop(context, 'I am is return value'),
                child: Text("Return"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TipRouterName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text("Notices"),
      ),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(args),
              RaisedButton(
                onPressed: () => Navigator.pop(context, 'I am is return value'),
                child: Text("Return"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
