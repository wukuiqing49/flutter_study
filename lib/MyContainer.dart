
import 'package:flutter/material.dart';
class MyContainer extends StatelessWidget {
  const MyContainer ({super.key});


  @override
  Widget build(BuildContext context) {
    // return con;
    return Center(
        child: Container(
          width: 100,
          height: 100,
          margin: const EdgeInsets.all(10.0),
          padding: const EdgeInsets.all(10.0),
          alignment: Alignment.center,
          decoration: BoxDecoration(color: Colors.green,
              borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              //边角
              border: Border.all(color: Colors.red, width: 10),
              //边
              boxShadow: const [
                BoxShadow(color: Colors.black, blurRadius: 5.0)
              ],
              //阴影
              gradient: const LinearGradient(
                  colors: [Colors.amberAccent, Colors.amber]) //背景渐变
          ),
          child: const Text("7777", style: TextStyle(color: Colors.black,
              fontSize: 15.0,
              decoration: TextDecoration.lineThrough),),
        )
    );
  }


}