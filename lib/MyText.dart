
import 'package:flutter/material.dart';
// class MyText extends StatelessWidget{
//   const MyText({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Center(
//       child:  Container(
//         margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
//         width: 200,
//         height: 60,
//         child: const Text(
//           "这是我的Text这是我的Text",
//           textAlign: TextAlign.center, //文字对齐方式
//           textDirection: TextDirection.ltr, //文字从左向右展示还是怎么展示
//           overflow:TextOverflow.ellipsis , //超出控件后文字展示方式
//           maxLines: 1,//最大行数
//           textScaleFactor: 2,//文字显示倍率
//           style: TextStyle(
//               color: Colors.black87,
//               fontWeight: FontWeight.bold,//加粗
//               fontSize: 20,
//               fontStyle: FontStyle.italic,//倾斜
//               letterSpacing: 5,//字体间距
//               decoration: TextDecoration.lineThrough// 下划线
//
//           ),
//
//         ),),);
//   }
//
// }


class MyText2 extends StatelessWidget{
  const MyText2({super.key});

  @override
  Widget build(BuildContext context) {

    return Center(
      child:  Container(
        margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
        width: double.infinity,
        height: double.infinity,
        child:  Text(
          "这是我的Text这是我的Text",
          textAlign: TextAlign.center, //文字对齐方式
          textDirection: TextDirection.ltr, //文字从左向右展示还是怎么展示
          overflow:TextOverflow.ellipsis , //超出控件后文字展示方式
          maxLines: 1,//最大行数
          textScaleFactor: 2,//文字显示倍率
          //系统自带的Style
          style: Theme.of(context).textTheme.subtitle1,

        ),),);
  }

}