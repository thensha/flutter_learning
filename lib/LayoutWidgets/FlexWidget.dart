import 'package:flutter/material.dart';

class FlexWidget extends StatelessWidget {
  const FlexWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Flex Row & Column")),
        body: Column(
          children: [
            Text("Flex Row:"),
            Flex(
              direction: Axis.horizontal,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 30,
                    color: Colors.blue,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 50,
                    color: Colors.green,
                  ),
                )
              ],
            ),
            Padding(
                padding: EdgeInsets.only(top: 20), child: Text("Flex Column:")),
            Padding(
              padding: EdgeInsets.only(top: 1),
              child: SizedBox(
                height: 100,
                child: Flex(
                  direction: Axis.vertical,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 30,
                        color: Colors.red,
                      ),
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 30,
                        color: Colors.green,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
