import 'package:flutter/material.dart';
import 'package:flutter_study/widget/CustomBanner.dart';
import '../../res/ListData.dart';
import '../../widget/BannerImageView.dart';

class CustomPageViewPage extends StatefulWidget {
  const CustomPageViewPage({Key? key}) : super(key: key);

  @override
  State<CustomPageViewPage> createState() => _CustomPageViewPageState();
}

class _CustomPageViewPageState extends State<CustomPageViewPage> {


  @override
  void initState() {

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
       body: CustomBanner(dataList: ListData,));
  }
}
