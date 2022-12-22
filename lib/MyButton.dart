import 'package:flutter/material.dart';

// 按钮
class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton(
            style: ButtonStyle(
                //背景色
                backgroundColor: MaterialStateProperty.all(Colors.green),
                //文字颜色
                foregroundColor: MaterialStateProperty.all(Colors.white),
                //设置没有圆角
                shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(borderRadius: BorderRadius.zero))),
            onPressed: () {
              print("点击了");
            },
            child: Text("测试")),
        ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.red),
              foregroundColor: MaterialStateProperty.all(Colors.black),
              //设置圆角
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)))),
          onPressed: () {
            print("点击了");
          },
          child: Text("测试"),
        ),
        //设带图片的按钮
        OutlinedButton.icon(
            onPressed: () {},
            icon: Image.network(
              "https://iknow-pic.cdn.bcebos.com/e1fe9925bc315c604f6e47608ab1cb1348547741",
              width: 30,
              height: 30,
            ),
            label: Text("测试")),
        OutlinedButton(
            onPressed: () {
              print("点击了");
            },
            child: Text("测试")),
        IconButton(
          onPressed: () {
            print("点击了");
          },
          icon: Image.network(
            "https://iknow-pic.cdn.bcebos.com/e1fe9925bc315c604f6e47608ab1cb1348547741",
            width: 30,
            height: 30,
          ),
        )
      ],
    );
  }
}
