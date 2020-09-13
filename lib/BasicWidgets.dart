import 'package:flutter/material.dart';
import 'package:flutter_playground/support/RouteNames.dart';

class BasicWidgets extends StatelessWidget {
  const BasicWidgets({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // TODO 标题外部传入
        appBar: AppBar(title: Text("Basic widgets")),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text("Go to Cupertino Page"),
                  onPressed: () {
                    Navigator.pushNamed(context, RouteNames.CupertinoPage);
                  },
                ),
                RaisedButton(
                  child: Text("Counter lifecycle"),
                  onPressed: () {
                    Navigator.pushNamed(context, RouteNames.WidgetLifeCycle);
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
                  child: Text("TextField widget"),
                  onPressed: () {
                    Navigator.pushNamed(context, RouteNames.TextFieldWidget);
                  },
                ),
                RaisedButton(
                  child: Text("FormField widget"),
                  onPressed: () {
                    Navigator.pushNamed(context, RouteNames.FormWidget);
                  },
                ),
                RaisedButton(
                  child: Text("Progress widget"),
                  onPressed: () {
                    Navigator.pushNamed(context, RouteNames.ProgressWidget);
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
