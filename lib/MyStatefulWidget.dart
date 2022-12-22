import 'package:flutter/material.dart';

// 底部导航
// 有状态的 StatefulWidget  stf  课快速生成
// 插件flutter-snippets 快速生成代码
//文档 https://gist.github.com/georgeherby/e5b5876d0d7922f96b9f80eaa035372c
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MtStatefulWidgetState();
}

class _MtStatefulWidgetState extends State<MyStatefulWidget> {
  var myIndex=0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: myIndex,
        onTap: (index){
          setState(() {
            myIndex =index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "我的"),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: "分类"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "设置"),
        ]);
  }
}
// 生成 StatefulWidget 的demo
class Demo extends StatefulWidget{
  const Demo({super.key});
  @override
  State<Demo> createState() {
   return _DemoState();
  }

}

class _DemoState extends State<Demo>{
  @override
  Widget build(BuildContext context) {
   return Container(
     child: const Text("123"),
   );

  }

}
