import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Fitness Hub",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: new IconThemeData(color: Colors.green[300]),
      ),
      body:
          new Column(crossAxisAlignment: CrossAxisAlignment.center, children: <
              Widget>[
        new Container(
          margin: new EdgeInsets.all(10.0),
          height: 100.0,
          width: 100.0,
          decoration: new BoxDecoration(
            borderRadius: new BorderRadius.circular(50.0),
            color: Colors.black,
          ),
          child: new Icon(
            Icons.home,
            size: 40.0,
            color: Colors.white,
          ),
        ),
        new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Fitness Hub",
                style: new TextStyle(fontSize: 30.0),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          child: new TextField(
            decoration: new InputDecoration(labelText: "Email"),
            style: new TextStyle(
                fontSize: 20.0,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
        ),
        new SizedBox(height: 05.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          child: new TextField(
            obscureText: true,
            decoration: new InputDecoration(labelText: "Password"),
            style: new TextStyle(
                fontSize: 20.0,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
        ),
        new Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 10.0, top: 10.0),
                child: new Container(
                  alignment: Alignment.center,
                  height: 70.0,
                  decoration: new BoxDecoration(
                    color: Colors.green[300],
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  child: new Text(
                    "Login",
                    style: new TextStyle(fontSize: 20.0, color: Colors.black),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
                child: new Container(
                  alignment: Alignment.center,
                  height: 70.0,
                  // decoration: new BoxDecoration(
                  //   color: Colors.deepOrange[500],
                  //   borderRadius: new BorderRadius.circular(10.0),
                  // ),
                  child: new Text(
                    "Forget Password?",
                    style:
                        new TextStyle(fontSize: 17.0, color: Colors.green[300]),
                  ),
                ),
              ),
            )
          ],
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 18.0),
                child: new Text(
                  "Create A New Account",
                  style:
                      new TextStyle(fontSize: 17.0, color: Colors.green[300]),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
