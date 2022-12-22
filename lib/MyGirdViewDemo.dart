import 'package:flutter/material.dart';

import 'HomeIcon.dart';

// ignore: must_be_immutable
class MyGirdViewDemo extends StatelessWidget{
  var list=<Widget>[];
  MyGirdViewDemo({Key? key}):super(key:key){

     for(var index=0;index<32;index++){
       list.add( Container(
         // margin: EdgeInsets.all(10.0),
         alignment: Alignment.center,
         decoration: const BoxDecoration(color: Colors.red,),
         child:  Text("这是第 ${index.toString()} 个布局",style: const TextStyle(color: Colors.white,fontSize: 20 ),maxLines: 1, overflow: TextOverflow.ellipsis,),
       )
       );
     }

  }

  List<Widget> _initList(){
    var tempList=<Widget>[];
    for(var index=0;index<32;index++){
      tempList.add( Container(
        // margin: EdgeInsets.all(10.0),
        alignment: Alignment.center,
        decoration: const BoxDecoration(color: Colors.red,),
        child:  Text("这是第 ${index.toString()} 个布局",style: const TextStyle(color: Colors.white,fontSize: 20 ),maxLines: 1, overflow: TextOverflow.ellipsis,),
      )
      );
    }

    return tempList;
  }

  @override
  Widget build(BuildContext context) {
    //固定个数
    return GridView.count(
      //一行的个数
      crossAxisCount: 4,
      //水平方向 条目的间距
      crossAxisSpacing: 10,
      //垂直方向间距
      mainAxisSpacing: 10,
      //宽高比例
      childAspectRatio: 0.8,
      //滚动方向
      scrollDirection: Axis.vertical,
      // children: _initList(),
      children: list,

    );
  }
    //固定宽高
  //   return GridView.extent(
  //     //横轴子元素的最大长度(宽/高)
  //       maxCrossAxisExtent: 200.0,
  //       //宽高比例
  //       childAspectRatio: 1.2 ,
  //       children: const [
  //         Icon(HomeIcon.mine,color: Colors.red,size: 30,),
  //         Icon(HomeIcon.mine,color: Colors.red,size: 30,),
  //         Icon(HomeIcon.mine,color: Colors.red,size: 30,),
  //         Icon(HomeIcon.mine,color: Colors.red,size: 30,),
  //         Icon(HomeIcon.mine,color: Colors.red,size: 30,),
  //         Icon(HomeIcon.mine,color: Colors.red,size: 30,),
  //         Icon(HomeIcon.mine,color: Colors.red,size: 30,),
  //         Icon(HomeIcon.mine,color: Colors.red,size: 30,),
  //       ]
  //   );
  // }


}