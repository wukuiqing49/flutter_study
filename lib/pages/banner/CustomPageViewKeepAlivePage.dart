import 'package:flutter/material.dart';
import 'package:flutter_study/widget/CustomBanner.dart';
import '../../res/ListData.dart';
import '../../widget/BannerImageView.dart';
import '../../widget/CustomPageView.dart';
import '../../widget/PageViewDemoPage.dart';

class CustomPageViewKeepAlivePage extends StatefulWidget {
  const CustomPageViewKeepAlivePage({Key? key}) : super(key: key);

  @override
  State<CustomPageViewKeepAlivePage> createState() => _CustomPageViewKeepAlivePageState();
}

class _CustomPageViewKeepAlivePageState extends State<CustomPageViewKeepAlivePage> {
   List<Widget> list=[];

  @override
  void initState() {
    var pageDemo= PageViewDemoPage();
    list.add(pageDemo);
    list.add(pageDemo);
    list.add(pageDemo);
    list.add(pageDemo);
    list.add(pageDemo);
    list.add(pageDemo);
    super.initState();

  }


int curIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          //返回
          onPressed: () {
            Navigator.of(context).pop(context);
          },
          child: const Icon(Icons.home),
        ),
        appBar: AppBar(
          title: const Text("自定义Banner页面"),
          centerTitle: true,
        ),
       body: CustomPageView(dataList: list,));
  }
}
