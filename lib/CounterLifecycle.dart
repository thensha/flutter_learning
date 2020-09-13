import 'package:flutter/material.dart';

class CounterLifecycle extends StatefulWidget {
  const CounterLifecycle({Key key, this.initValue: 10});

  final int initValue;

  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

// lift cycle
// build放在State中而不是StatefulWidget的原因：数据传递便利性，开发灵活性
class _CounterWidgetState extends State<CounterLifecycle> {
  int _counter;

// 当widget第一次插入widget树时会被调用
  @override
  void initState() {
    super.initState();

    _counter = widget.initValue;

    print("initState");
  }

// 用于构建widget子树
// 调用场景：initState didUpdateWidget setState didChangeDependencies后、在State对象从树中一个位置变化后
  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      appBar: AppBar(
        title: Text("Test lifecycle print"),
      ),
      body: Center(
        child: Column(
          children: [
            RaisedButton(
                onPressed: () => {
                      setState(() {
                        _counter++;
                      })
                    },
                child: Text("$_counter")),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }

// State对象的依赖发生变化时调用（例如应用语言修改或主题）
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("didChangeDependencies");
  }

// widget重新构建时，Flutter framework会调用Widget.canUpdate检测树中同一位置的新旧节点判断是否需要更新
  @override
  void didUpdateWidget(CounterLifecycle oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("didUpdateWidget");
  }

// 当State对象被从树中移除时调用
  @override
  void deactivate() {
    super.deactivate();
    print("deactivate");
  }

// 当State对象从树中被永久移除时调用，通常在此回调中释放资源
  @override
  void dispose() {
    super.dispose();
    print("dispose");
  }

// 专门用于开发调试，在hot reload时调用，在release模式下永远不会被调用
  @override
  void reassemble() {
    super.reassemble();
    print("reassemble");
  }
}
