import 'package:flutter/material.dart';
import 'package:flutter_study/MyIcon.dart';
import './res/ListData.dart';
import 'HomeIcon.dart';

//列表控件
class MyListDemo extends StatelessWidget {
  var list=<Widget>[];
//方法1   获取资源数据
   MyListDemo({Key? key}):super(key:key){
     var tempList= ListData.map((e){
       return   ListTile(
         leading: Image.network(e["url"]!,width: 50,height: 50,fit:BoxFit.cover ,),
         title: Text(e["title"]!,style:const TextStyle(fontSize: 22),maxLines: 1,overflow: TextOverflow.ellipsis,),
         subtitle: Text(e["desc"]!,style:const TextStyle(fontSize: 16),maxLines: 2,overflow: TextOverflow.ellipsis,),
       );
     });
     list=tempList.toList();
  }
  //获取资源数据
  List<Widget> _initList() {
   var tempList= ListData.map((e){
      return   ListTile(
        leading: Image.network(e["url"]!,width: 50,height: 50,fit:BoxFit.cover ,),
        title: Text(e["title"]!,style:const TextStyle(fontSize: 22),maxLines: 1,overflow: TextOverflow.ellipsis,),
        subtitle: Text(e["desc"]!,style:const TextStyle(fontSize: 16),maxLines: 2,overflow: TextOverflow.ellipsis,),
      );
    });
    return tempList.toList();
  }
 // 方案1
  @override
  Widget build(BuildContext context) {
    return ListView(
      // 配置横向 竖向
      scrollDirection: Axis.vertical,
      //反向排序
      reverse: false,
      //内边距
      // children: _initList(),
      children: list,
    );
  }
  // 方案二
  // @override
  // Widget build(BuildContext context) {
  //   return ListView.builder(
  //       itemCount: ListData.length,
  //       itemBuilder: (context, index){
  //     return ListTile(
  //       leading: Image.network(ListData[index]["url"]!,width: 50,height: 50,fit:BoxFit.cover ,),
  //       title: Text(ListData[index]["title"]!,style:const TextStyle(fontSize: 22),maxLines: 1,overflow: TextOverflow.ellipsis,),
  //       subtitle: Text(ListData[index]["desc"]!,style:const TextStyle(fontSize: 16),maxLines: 2,overflow: TextOverflow.ellipsis,),
  //     );
  //   });
  // }

}
