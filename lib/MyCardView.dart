import 'package:flutter/material.dart';
import './res/ListData.dart';

class MyCardView extends StatelessWidget {
  const MyCardView({super.key});

  List<Widget> _initData() {
    // {
    //   "url":
    // "https://iknow-pic.cdn.bcebos.com/e1fe9925bc315c604f6e47608ab1cb1348547741",
    // "title": "提示",
    // "desc": "如果你被引导至本页面，是因为 Flutter 框架检测到你可能遇到涉及边界约束的问题"
    // }
    var tempList = ListData.map((e) {
      return Card(
          margin: const EdgeInsets.all(10.0),
          //背景色
          color: Colors.white,
          //阴影颜色
          shadowColor: Colors.red,
          //阴影大小
          elevation: 10.0,
          //角度
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          child: Column(
            children: [
              //比例布局
              // SizedBox(width: 200,height: 200,child: ,)
              AspectRatio(
                //宽高比例  (外部没设置大小填充整个屏幕)
                aspectRatio: 16 / 9,
                child: Image.network(
                  e["url"]!,
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                ),
              ),
              ListTile(
                leading: SizedBox(
                  width: 50,
                  height: 50,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(e["url"]!),
                  ),
                ),
                title: Text(e["title"]!),
                subtitle: Text(e["desc"]!),
              ),
              const SizedBox(
                width: 0,
                height: 20,
              ),
            ],
          ));
    });

    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: _initData(),
    );
  }
}
