import 'package:flutter/material.dart';

import '../HomeIcon.dart';
class PageViewDemoPage extends StatefulWidget {
  const PageViewDemoPage({Key? key}) : super(key: key);

  @override
  State<PageViewDemoPage> createState() => _PageViewDemoPageState();
}

class _PageViewDemoPageState extends State<PageViewDemoPage> with AutomaticKeepAliveClientMixin {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("刷新了");
  }
  @override
  Widget build(BuildContext context) {
    return ListView(
      // 配置横向 竖向
      scrollDirection: Axis.vertical,
      //反向排序
      reverse: false,
      //内边距

      children: <Widget> [

        const  ListTile(
          //左边的图
          leading: Icon(HomeIcon.mine,color: Colors.red,size: 30,),
          title:Text("标题"),
          subtitle: Text("简介"),
          trailing: Icon(HomeIcon.back,color: Colors.black,size: 30,),
        ),
        const   Divider(),
        ListTile(leading: Image.network(
          "https://iknow-pic.cdn.bcebos.com/e1fe9925bc315c604f6e47608ab1cb1348547741",
          width: 50,
          height: 50,
          alignment: Alignment.center,
          fit: BoxFit.cover,
        ), title:const Text("标题"), subtitle: const Text("简介"),),
        const  Divider(),
        const  ListTile(leading: Icon(HomeIcon.mine,color: Colors.red,size: 30,), title:Text("标题"), subtitle: Text("简介"),),
        const   Divider(),
        const  ListTile(leading: Icon(HomeIcon.mine,color: Colors.red,size: 30,), title:Text("标题"), subtitle: Text("简介"),),
        const   Divider(),
        const  ListTile(leading: Icon(HomeIcon.mine,color: Colors.red,size: 30,), title:Text("标题"), subtitle: Text("简介"),),

      ],);
  }

  @override
  // 返回true 会缓存页面
  bool get wantKeepAlive => true;
}
