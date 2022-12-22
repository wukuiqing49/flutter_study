import 'package:flutter/material.dart';
import 'package:flutter_study/MyIcon.dart';

import 'HomeIcon.dart';
import 'IconContainer.dart';
//  水平 排列
class MyRow extends StatelessWidget {
  const MyRow({super.key});

  @override
  Widget build(BuildContext context) {
    //获取屏幕的宽高
    var size=MediaQuery.of(context).size;
    var h=size.height;
    var w=size.width;

    return  Container(
        color: Colors.black26,
        width: double.infinity,
        height: double.infinity,
        child:   Column(
          // row 子布局展示的样式
          // MainAxisAlignment.center 居中
          // MainAxisAlignment.start  开始

          // 等分 MainAxisAlignment.spaceBetween 中间等分(头尾靠边) 将自由空间均匀放置在孩子之间。
          // MainAxisAlignment.spaceEvenly (等分)  开始 在孩子之间以及第一个孩子和最后一个孩子之前和之后均匀地放置自由空间。
          // MainAxisAlignment.spaceAround (头尾一半 中间等分)将空闲空间均匀放置在孩子之间，以及第一个孩子和最后一个孩子前后的一半空间。。
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          //次轴的位置  配置 row 在父布局的位置
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconContainer(HomeIcon.home,myColor: Colors.red,),
            IconContainer(HomeIcon.search,myColor: Colors.black12,),
            IconContainer(HomeIcon.mine,myColor: Colors.green,),
            IconContainer(HomeIcon.home,myColor: Colors.blue,)
          ],
        ));

  }
}
