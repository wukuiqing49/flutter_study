import 'package:flutter/material.dart';
import 'package:flutter_study/MyIcon.dart';

import 'HomeIcon.dart';

//列表控件
class MyListView extends StatelessWidget{
  const MyListView({super.key});

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


}