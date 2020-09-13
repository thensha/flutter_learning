import 'package:flutter/material.dart';
import 'package:flutter_playground/support/RouteNames.dart';

class LayoutWidgets extends StatelessWidget {
  const LayoutWidgets({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // TODO 标题外部传入
        appBar: AppBar(title: Text("Layout widgets")),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                RaisedButton(
                  child: Text("Flex widget"),
                  onPressed: () {
                    Navigator.pushNamed(context, RouteNames.FlexWidget);
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
