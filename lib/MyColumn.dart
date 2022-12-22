import 'package:flutter/material.dart';
import 'package:flutter_study/MyIcon.dart';

import 'HomeIcon.dart';
import 'IconContainer.dart';

// 垂直布局
class MyColumn extends StatelessWidget {
  const MyColumn({super.key});

  @override
  Widget build(BuildContext context) {
      return  Container(
        color: Colors.black26,
        width: double.infinity,
        height: double.infinity,
        child:   Column(
          mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
          mainAxisSize: MainAxisSize.max,
          children: [
            IconContainer(HomeIcon.home,myColor: Colors.red,),
            IconContainer(HomeIcon.search,myColor: Colors.black12,),
            IconContainer(HomeIcon.mine,myColor: Colors.green,),
            IconContainer(HomeIcon.home,myColor: Colors.blue,)
          ],
        ));
  }
}
