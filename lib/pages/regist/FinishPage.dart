import 'package:flutter/material.dart';

import '../tabs/Tabs.dart';
class FinishPage extends StatefulWidget {
  const FinishPage({Key? key}) : super(key: key);

  @override
  State<FinishPage> createState() => _FinishPageState();
}

class _FinishPageState extends State<FinishPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        //返回
        onPressed: () { Navigator.of(context).pop(context); },
        child: const Icon(Icons.home),
      ),
      appBar: AppBar(title: Text("完成页面"),centerTitle: true,),
      body: Container(child: Column(
        children:  <Widget>[
          ElevatedButton(onPressed: (){
            //返回跟路由
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (BuildContext context) {
                  return  Tabs(index: 1,);
                }), (route) => false);

          }, child: const Text("返回首页")),
        ],
      ),),
    );
  }
}
