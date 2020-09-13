import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("Cupertion Demo"),
      ),
      child: Center(
          child: CupertinoButton(
              child: Text("Press"),
              color: CupertinoColors.activeBlue,
              onPressed: () {})),
    );
  }
}
