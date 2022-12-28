import 'package:flutter/material.dart';

class KeyPage extends StatefulWidget {
  const KeyPage({Key? key}) : super(key: key);

  @override
  State<KeyPage> createState() => _KeyPageState();
}

class _KeyPageState extends State<KeyPage> {
 // GlobalKey 全局key  刷新是根据 key 和控件布局 判断
  GlobalKey globalKey1 =  GlobalKey();
  GlobalKey globalKey2 =  GlobalKey();
  GlobalKey globalKey3 =  GlobalKey();

 @override
  void initState() {

    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    var mq= MediaQuery.of(context).orientation;
    print("屏幕方向:$mq");
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          //返回
          onPressed: () {
            Navigator.of(context).pop(context);
            //获取 State
           var boxState= globalKey1.currentState as _BoxState;
            print("位置:${boxState.index}");
            //获取控件
            var box= globalKey1.currentWidget as Box;
            print("box:${box.color}");
            //获取属性
            var rb= globalKey1.currentContext!.findRenderObject() as RenderBox;
            print("属性:${rb.size}");

          },
          child: const Icon(Icons.home),
        ),
        appBar: AppBar(
          title: const Text("Flutter Key 页面"),
          centerTitle: true,
        ),
        body: Center(
          // alignment: Alignment.center,
          child: MediaQuery.of(context).orientation==Orientation.portrait?Column(
            children: [
              Box(key :globalKey1,
                color: Colors.red,
              ),
              Box(
                key :globalKey2,
                color: Colors.green,
              ),
              Box(
                key :globalKey3,
                color: Colors.blue,
              ),
            ],
          ):Row(
            children: [
              Box(
                key :globalKey1,
                color: Colors.red,
              ),
              Box(
                key :globalKey2,
                color: Colors.green,
              ),
              Box(
                key :globalKey3,
                color: Colors.blue,
              ),
            ],
          ),
        ));
  }

}

class Box extends StatefulWidget {
  Color color;
  // UniqueKey(自定生成唯一)  ValueKey(自己生产,注意值)   ObjectKey(控件)
  Box({Key? key, this.color = Colors.blue}) : super(key: key);

  @override
  State<Box> createState() => _BoxState();
}

class _BoxState extends State<Box> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 60,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(widget.color)),
        onPressed: () {
          setState(() {
            index++;
          });
        },
        child: Text("${index}"),
      ),
    );
  }
}
