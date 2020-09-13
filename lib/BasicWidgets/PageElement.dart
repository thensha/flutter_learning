import 'package:flutter/material.dart';

class PageElement extends StatelessWidget {
  const PageElement({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page element"),
      ),
      body: Column(
        children: [
          Text(
            "text1" * 9,
            // textAlign: TextAlign.center, 换行后的对齐方式
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textScaleFactor: 1.5,
            style: TextStyle(
                color: Colors.blue,
                fontSize: 18,
                height: 1.2,
                fontFamily: "Courier",
                background: new Paint()..color = Colors.yellow,
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.dashed),
          ),
          Text.rich(TextSpan(children: [
            TextSpan(text: "Use"),
            TextSpan(
              text: " TextSpan ",
              style: TextStyle(color: Colors.blue, fontSize: 18),
              // recognizer: () {}
            ),
            TextSpan(text: "to show.")
          ])),
          DefaultTextStyle(
            style: TextStyle(color: Colors.red, fontSize: 20),
            textAlign: TextAlign.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("line 1"),
                Text("line 2"),
                Text(
                  "not inherited fontFamily",
                  style: TextStyle(
                      inherit: false,
                      fontFamily: "Pacifico",
                      color: Colors.green,
                      fontSize: 18),
                ),
              ],
            ),
          ),
          Wrap(
            children: [
              RaisedButton(
                child: Text("RaisedButton"),
                onPressed: () {},
              ),
              FlatButton(
                child: Text("FlatButton"),
                onPressed: () {},
              ),
              OutlineButton(
                child: Text("OutlineButton"),
                onPressed: () => {},
              ),
              IconButton(
                icon: Icon(Icons.thumbs_up_down),
                onPressed: () {},
              ),
              OutlineButton.icon(
                  onPressed: () {}, icon: Icon(Icons.send), label: Text("发送")),
              RaisedButton(
                color: Colors.blue,
                highlightColor: Colors.blue[700],
                colorBrightness: Brightness.dark,
                splashColor: Colors.grey,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                onPressed: () {},
                child: Text("Submit"),
              )
            ],
          ),
          Wrap(
            children: [
              Image.network(
                "https://dummyimage.com/100x100/000/1.png",
                width: 100,
              ),
              Image.asset(
                "images/errand.png",
                width: 100,
              ),
              Image.network(
                "https://dummyimage.com/100x100/000/1.png",
                width: 100,
              ),
            ],
          )
        ],
      ),
    );
  }
}
