import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  TextFieldWidget({Key key}) : super(key: key);

  @override
  _TextFieldWidgetState createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  FocusNode focusNode1 = FocusNode();
  FocusNode focusNode2 = FocusNode();
  FocusNode focusScopeNode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Focus Test Route")),
        body: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                TextField(
                  autofocus: true,
                  focusNode: focusNode1,
                  decoration: InputDecoration(
                      labelText: "input1", prefixIcon: Icon(Icons.person)),
                  keyboardType: TextInputType.emailAddress,
                  onEditingComplete: () {
                    FocusScope.of(context).requestFocus(focusNode2);
                  },
                ),
                TextField(
                  focusNode: focusNode2,
                  decoration: InputDecoration(
                      labelText: "input2", prefixIcon: Icon(Icons.lock)),
                  keyboardType: TextInputType.number,
                  obscureText: true,
                ),
                Builder(
                  builder: (context) {
                    return Column(children: [
                      RaisedButton(
                        child: Text("移动焦点"),
                        onPressed: () {
                          FocusScope.of(context).requestFocus(focusNode2);
                        },
                      ),
                      RaisedButton(
                        child: Text("隐藏键盘"),
                        onPressed: () {
                          focusNode1.unfocus();
                          focusNode2.unfocus();
                        },
                      )
                    ]);
                  },
                )
              ],
            )));
  }
}
