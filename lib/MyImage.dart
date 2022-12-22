import 'package:flutter/material.dart';


//一般图片加载网络图
class MyImage extends StatelessWidget {
  const MyImage({super.key});

  @override
  Widget build(BuildContext context) {
    String imgUrl =
        "https://iknow-pic.cdn.bcebos.com/e1fe9925bc315c604f6e47608ab1cb1348547741";
    return Center(
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
            color: Colors.amber, borderRadius: BorderRadius.circular(10.0)),
        child: Image.network(
          imgUrl,
          width: 50,
          height: 50,
          alignment: Alignment.center,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}

//加载本地图片   需要 images文件夹  然后 在pubspec.yaml 中 flutter属性的 assets 属性下配置
class MyImageLocal extends StatelessWidget {
  const MyImageLocal({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
            color: Colors.amber, borderRadius: BorderRadius.circular(10.0)),
        child: Image.asset("images/ic_launcher.png"),
      ),
    );
  }
}

// 圆形图片 原理是背景图加圆角实现的 圆形是borderRadius=width/2  圆角是比小于=width/2
class CircularImage extends StatelessWidget {
  const CircularImage({super.key});

  @override
  Widget build(BuildContext context) {
    String imgUrl =
        "https://iknow-pic.cdn.bcebos.com/e1fe9925bc315c604f6e47608ab1cb1348547741";

    return Center(
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(25.0),
            image: DecorationImage(
                image: NetworkImage(imgUrl), fit: BoxFit.cover)),
      ),
    );
  }
}

// 圆形图片方案二
class CircularImage2 extends StatelessWidget {
  const CircularImage2({super.key});

  @override
  Widget build(BuildContext context) {
    String imgUrl =
        "https://iknow-pic.cdn.bcebos.com/e1fe9925bc315c604f6e47608ab1cb1348547741";

    return Center(
      child: ClipOval(
          child: Image.network(
        imgUrl,
        width: 50,
        height: 50,
        alignment: Alignment.center,
        fit: BoxFit.cover,
      )),
    );
  }


}

class CircularImage3 extends StatelessWidget {
  const CircularImage3({super.key});

  @override
  Widget build(BuildContext context) {
    String imgUrl =
        "https://iknow-pic.cdn.bcebos.com/e1fe9925bc315c604f6e47608ab1cb1348547741";

    return Center(
      child: SizedBox(
        width: 300,
        height: 400,
        child: CircleAvatar(
          backgroundImage: NetworkImage(imgUrl),),
      )
    );
  }
}