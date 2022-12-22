import 'package:flutter/material.dart';

//宽高逼组件

class MyAspectRatio extends StatelessWidget {
  const MyAspectRatio({super.key});

  @override
  Widget build(BuildContext context) {
    //展示宽度高度比例是 1/2
    return AspectRatio(
      aspectRatio: 1 / 2,
      child: Container(
        color: Colors.red,
      ),
    );
  }

}