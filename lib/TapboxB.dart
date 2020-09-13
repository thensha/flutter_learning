import 'package:flutter/material.dart';

class ParentWidget extends StatefulWidget {
  ParentWidget({Key key}) : super(key: key);

  @override
  _ParentWidgetState createState() => _ParentWidgetState();
}

class _ParentWidgetState extends State<ParentWidget> {
  bool _active = false;

  void _handleTapboxChanged(bool newValue) {
    print(newValue);

    setState(() {
      print("newValue: $newValue");
      _active = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: TapboxB(
      onChanged: _handleTapboxChanged,
      // active: _active,
    ));
  }
}

class TapboxB extends StatelessWidget {
  TapboxB({Key key, this.active: false, @required this.onChanged})
      : super(key: key);

  final bool active;
  final ValueChanged<bool> onChanged;

  _handleTap() {
    print(active);
    onChanged(!active);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: Container(
        child: Center(
          child: Text(
            active ? "Active2" : "Inactive2",
            style: TextStyle(fontSize: 32, color: Colors.white),
          ),
        ),
        width: 200,
        height: 200,
        decoration:
            BoxDecoration(color: active ? Colors.lightBlueAccent : Colors.grey),
      ),
    );
  }
}
