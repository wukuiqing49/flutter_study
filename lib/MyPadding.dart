import 'package:flutter/material.dart';

// padding  专门处理边界的布局
class MyPadding extends StatelessWidget{
  const MyPadding({super.key});

  @override
  Widget build(BuildContext context
      ) {
   return const Padding(
       padding: EdgeInsets.all(50.0),
     child: Text("测试数据"),
   );
  }


}