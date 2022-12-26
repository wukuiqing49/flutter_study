import 'dart:async';

import 'package:flutter/material.dart';

import 'BannerImageView.dart';

class CustomBanner extends StatefulWidget {
  List dataList;
   CustomBanner({Key? key,required this.dataList}) : super(key: key);

  @override
  State<CustomBanner> createState() => _CustomBannerState();
}

class _CustomBannerState extends State<CustomBanner> {
  int curIndex=0;
  late List<Widget> list;

   late PageController _controller;

  var _currentPageValue;
  var _initialIndex=1;
  late Timer timer;
  @override
  void initState() {

    var tempList= widget.dataList.map((e) {
      return BannerImageView(
        src: e["url"]!,
      );
    });
    list=tempList.toList() ;
    _controller= PageController(initialPage:0);

    timer=  Timer.periodic(const Duration(seconds: 2), (timer) {
      _controller.animateToPage((curIndex+1)%list.length, duration: const Duration(milliseconds: 200), curve: Curves.bounceIn);
    });


    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    timer.cancel();
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          child: PageView.builder(
            controller: _controller,
            itemCount: 200,
            onPageChanged: (index) {
              setState(() {
                curIndex=index % list.length;
              });
            },
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return list[index % list.length];
            },
          ),
        ),
        Positioned(
            bottom: 5,
            child: Row(
              children: List.generate(list.length, (index) {
                return Container(
                  margin: const EdgeInsets.all(5.0),
                  height: 10,
                  width: 10,
                  decoration:  BoxDecoration(
                      color: index==(curIndex%list.length)?Colors.blue:Colors.grey,
                      shape: BoxShape.circle),
                );
              }),
            ))
      ],
    );
  }
}
