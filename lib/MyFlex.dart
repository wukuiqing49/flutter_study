import 'package:flutter/material.dart';

import 'HomeIcon.dart';
import 'IconContainer.dart';


// row 和colum  都是继承 Flex
class MyFlex extends StatelessWidget{
  const MyFlex({super.key});

  @override
  Widget build(BuildContext context
      ) {
    return  Container(
        color: Colors.black26,
        width: double.infinity,
        height: double.infinity,
        child: Flex(
          // row 子布局展示的样式
          // MainAxisAlignment.center 居中
          // MainAxisAlignment.start  开始

          // 等分 MainAxisAlignment.spaceBetween 中间等分(头尾靠边) 将自由空间均匀放置在孩子之间。
          // MainAxisAlignment.spaceEvenly (等分)  开始 在孩子之间以及第一个孩子和最后一个孩子之前和之后均匀地放置自由空间。
          // MainAxisAlignment.spaceAround (头尾一半 中间等分)将空闲空间均匀放置在孩子之间，以及第一个孩子和最后一个孩子前后的一半空间。。
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          //次轴的位置  配置 row 在父布局的位置
          crossAxisAlignment: CrossAxisAlignment.start,
          // Axis.horizontal 水平布局 等同于 row
          // Axis.vertical 水平布局 等同于 colum
          direction: Axis.vertical,
          children: [
            Expanded(flex: 1,child:  IconContainer(HomeIcon.home,myColor: Colors.red,),),
            Expanded(flex: 2,child:  IconContainer(HomeIcon.search,myColor: Colors.black12,),),
            Expanded(flex: 3,child:  IconContainer(HomeIcon.mine,myColor: Colors.green,),),
            Expanded(flex: 4,child:  IconContainer(HomeIcon.home,myColor: Colors.blue,),),

          ],
        ));
  }


}