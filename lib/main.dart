import 'package:flutter/material.dart';
import 'package:flutter_playground/CounterLifecycle.dart';
import 'package:flutter_playground/CupertinoPage.dart';
import 'package:flutter_playground/FormTestRoute.dart';
import 'package:flutter_playground/PageElement.dart';
import 'package:flutter_playground/TapboxA.dart';
import 'package:flutter_playground/TapboxB.dart';
import 'package:flutter_playground/TapboxC.dart';
import 'package:flutter_playground/FocusTestRoute.dart';
import 'package:flutter_playground/support/RouteNames.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Index Page",
      initialRoute: RouteNames.IndexPage,
      routes: {
        RouteNames.IndexPage: (context) => MyHomePage(
              title: "Home Page",
            ),
        RouteNames.CupertinoPage: (context) => CupertinoPage(),
        RouteNames.CounterLifeCycle: (context) => CounterLifecycle(
              initValue: 9,
            ),
        RouteNames.TapBoxA: (context) => TapboxA(),
        RouteNames.TapboxB: (context) => TapboxB(),
        RouteNames.TapboxC: (context) => TapboxC(),
        RouteNames.PageElement: (context) => PageElement(),
        RouteNames.TextField: (context) => FocusTestRoute(),
        RouteNames.FormField: (context) => FormTestRoute()
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("Go to Cupertino Page"),
              onPressed: () {
                Navigator.pushNamed(context, RouteNames.CupertinoPage);
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'You have clicked',
                ),
                FlatButton(
                    onPressed: () {
                      _incrementCounter();
                    },
                    child: Text("$_counter")),
                Text("times.")
              ],
            ),
            RaisedButton(
              child: Text("Counter lifecycle"),
              onPressed: () {
                Navigator.pushNamed(context, RouteNames.CounterLifeCycle);
              },
            ),
            RaisedButton(
              child: Text("TapBoxA"),
              onPressed: () {
                Navigator.pushNamed(context, RouteNames.TapBoxA);
              },
            ),
            RaisedButton(
              child: Text("TapBoxB"),
              onPressed: () {
                Navigator.pushNamed(context, RouteNames.TapboxB);
              },
            ),
            RaisedButton(
              child: Text("TapBoxC"),
              onPressed: () {
                Navigator.pushNamed(context, RouteNames.TapboxC);
              },
            ),
            RaisedButton(
              child: Text("To page element"),
              onPressed: () {
                Navigator.pushNamed(context, RouteNames.PageElement);
              },
            ),
            RaisedButton(
              child: Text("TextField element"),
              onPressed: () {
                Navigator.pushNamed(context, RouteNames.TextField);
              },
            ),
            RaisedButton(
              child: Text("FormField element"),
              onPressed: () {
                Navigator.pushNamed(context, RouteNames.FormField);
              },
            ),
          ],
        ),
      ),
    );
  }
}
