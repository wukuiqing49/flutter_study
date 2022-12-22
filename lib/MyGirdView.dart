import 'package:flutter/material.dart';

import 'HomeIcon.dart';

class MyGirdView extends StatelessWidget{
  const MyGirdView({super.key});

  @override
  Widget build(BuildContext context) {
    // 固定个数
    // return GridView.count(
    //   //一行的个数
    //   crossAxisCount: 4,
    //   //水平方向 条目的间距
    //   crossAxisSpacing: 20,
    //  //垂直方向间距
    //   mainAxisSpacing: 10,
    //   //滚动方向
    //   scrollDirection: Axis.vertical,
    //   children: const [
    //     Icon(HomeIcon.mine,color: Colors.red,size: 30,),
    //     Icon(HomeIcon.mine,color: Colors.red,size: 30,),
    //     Icon(HomeIcon.mine,color: Colors.red,size: 30,),
    //     Icon(HomeIcon.mine,color: Colors.red,size: 30,),
    //     Icon(HomeIcon.mine,color: Colors.red,size: 30,),
    //     Icon(HomeIcon.mine,color: Colors.red,size: 30,),
    //     Icon(HomeIcon.mine,color: Colors.red,size: 30,),
    //     Icon(HomeIcon.mine,color: Colors.red,size: 30,),
    //   ],
    //
    // );
    //
    //固定宽高
    return GridView.extent(
      //横轴子元素的最大长度(宽/高)
        maxCrossAxisExtent: 200.0,
        //宽高比例
        childAspectRatio: 1.2 ,
        children: const [
          Icon(HomeIcon.mine,color: Colors.red,size: 30,),
          Icon(HomeIcon.mine,color: Colors.red,size: 30,),
          Icon(HomeIcon.mine,color: Colors.red,size: 30,),
          Icon(HomeIcon.mine,color: Colors.red,size: 30,),
          Icon(HomeIcon.mine,color: Colors.red,size: 30,),
          Icon(HomeIcon.mine,color: Colors.red,size: 30,),
          Icon(HomeIcon.mine,color: Colors.red,size: 30,),
          Icon(HomeIcon.mine,color: Colors.red,size: 30,),
        ]
    );
  }


}