import 'package:flutter/material.dart';

class IconContainer extends StatelessWidget{

  IconData myICon;
  Color myColor;
   IconContainer(this.myICon,{super.key, this.myColor=Colors.white}){}

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 60,
      height: 60,
      color: myColor ,
      child:Icon(myICon,color: Colors.white,),
    );
  }

}