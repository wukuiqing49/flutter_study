import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyButtonCustom extends StatelessWidget{
  String content="";
  //方法作为参数传递
  void Function()? onPressed;
   MyButtonCustom( this.content,{Key? key,this.onPressed}):super(key: key){}

  Widget _initButton(){
    return Text(content);
  }

  @override
  Widget build(BuildContext context) {

    return ElevatedButton(
        onPressed: onPressed,
        style:ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.black),
            foregroundColor:MaterialStateProperty.all(Colors.white),),
            child: _initButton()
    );
  }

}