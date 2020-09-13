import 'package:flutter/material.dart';
import 'package:flutter_playground/BasicWidgets.dart';
import 'package:flutter_playground/BasicWidgets/WidgetLifecycle.dart';
import 'package:flutter_playground/BasicWidgets/CupertinoWidget.dart';
import 'package:flutter_playground/BasicWidgets/FormWidget.dart';
import 'package:flutter_playground/BasicWidgets/PageElement.dart';
import 'package:flutter_playground/BasicWidgets/ProgressWidget.dart';
import 'package:flutter_playground/BasicWidgets/TapboxA.dart';
import 'package:flutter_playground/BasicWidgets/TapboxB.dart';
import 'package:flutter_playground/BasicWidgets/TapboxC.dart';
import 'package:flutter_playground/BasicWidgets/TextFieldWidget.dart';
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
        RouteNames.BasicWidgetsRoute: (context) => BasicWidgets(),
        RouteNames.CupertinoPage: (context) => CupertinoWidget(),
        RouteNames.WidgetLifeCycle: (context) => WidgetLifecycle(
              initValue: 9,
            ),
        RouteNames.TapBoxA: (context) => TapboxA(),
        RouteNames.TapboxB: (context) => TapboxB(
              onChanged: (value) {
                print("changed");
              },
            ),
        RouteNames.TapboxC: (context) => TapboxC(
              onChanged: (value) {
                print("changed");
              },
            ),
        RouteNames.PageElement: (context) => PageElement(),
        RouteNames.TextFieldWidget: (context) => TextFieldWidget(),
        RouteNames.FormWidget: (context) => FormWidget(),
        RouteNames.ProgressWidget: (context) => ProgressWidget()
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            RaisedButton(
              child: Text("Base widgets"),
              onPressed: () {
                Navigator.of(context).pushNamed(RouteNames.BasicWidgetsRoute);
              },
            )
          ],
        ),
      ),
    );
  }
}
