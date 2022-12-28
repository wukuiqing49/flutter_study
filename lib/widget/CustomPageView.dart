import 'dart:async';

import 'package:flutter/material.dart';

import 'BannerImageView.dart';

class CustomPageView extends StatefulWidget {
  List dataList;

  CustomPageView({Key? key, required this.dataList}) : super(key: key);

  @override
  State<CustomPageView> createState() => _CustomPageViewState();
}

class _CustomPageViewState extends State<CustomPageView>
    with AutomaticKeepAliveClientMixin {


  @override
  void initState() {
    super.initState();

  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        itemCount: widget.dataList.length,
        itemBuilder: (context, index) {
          return widget.dataList[index];
        });
  }

  @override
  //  返回true 会保存页面
  bool get wantKeepAlive => true;
}
