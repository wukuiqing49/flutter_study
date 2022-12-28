import 'dart:async';

import 'package:flutter/material.dart';

class AnimationList extends StatefulWidget {
  const AnimationList({Key? key}) : super(key: key);

  @override
  State<AnimationList> createState() => _AnimationListState();
}

class _AnimationListState extends State<AnimationList> {
  //  AnimatedListState  这个才有删除和 增加的方法
  final _globalKey = GlobalKey<AnimatedListState>();
  var list = ["测试1", "测试2", "测试3"];
  bool isDelete=true;

  @override
  void initState() {
    super.initState();
  }

  Widget _bulidItem(int index) {
    return
      
      ListTile(
      title: Text(list[index]!),
      trailing: IconButton(
        icon: const Icon(Icons.delete),
        iconSize: 40,
        onPressed: () =>removeItem(index),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            list.add("测试");
            _globalKey.currentState?.insertItem(list.length - 1);
          });
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("AnimationList"),
      ),
      body: AnimatedList(
        key: _globalKey,
        initialItemCount: list.length,
        itemBuilder: (context, index, animation) {
          // ScaleTransition  缩放动画  FadeTransition  淡入淡出效果
          return ScaleTransition(
            // opacity: animation,
            scale: animation,
            child: _bulidItem(index),
          );
        },
      ),
    );
  }

  removeItem(int index) {
    if(isDelete){
      isDelete=false;
      _globalKey.currentState?.removeItem(index, (context, animation){
        var item=_bulidItem(index);
        list.removeAt(index);
        return FadeTransition(opacity: animation ,child:item ,);
      } );
      //处理快速删除问题
    Timer.periodic(Duration(milliseconds: 500), (timer) {
      isDelete=true;
      timer.cancel();
    });
    }

  }
}
