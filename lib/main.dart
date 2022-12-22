import 'package:flutter/material.dart';
import 'package:flutter_study/route/RoutesUtil.dart';
import 'package:go_router/go_router.dart';

import 'package:flutter_study/HomeIcon.dart';
import 'package:flutter_study/IconContainer.dart';
import 'package:flutter_study/MyButton.dart';
import 'package:flutter_study/MyColumn.dart';
import 'package:flutter_study/MyFlex.dart';
import 'package:flutter_study/MyListView.dart';
import 'package:flutter_study/MyStack.dart';
import 'package:flutter_study/pages/search.dart';
import 'package:flutter_study/pages/tabs/Tabs.dart';
import 'package:flutter_study/pages/search2.dart';
import './MyWrap.dart';

import 'MyCardView.dart';
import 'MyContainer.dart';
import 'MyGirdView.dart';
import 'MyGirdViewDemo.dart';
import 'MyImage.dart';
import 'MyListDemo.dart';
import 'MyPadding.dart';
import 'MyRow.dart';
import './MyStatefulWidget.dart';
import './MyText.dart';

void main() => runApp(MyApp());


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}



class MyBody extends StatelessWidget {
  const MyBody({super.key});

  @override
  Widget build(BuildContext context) {
    //垂直布局
    return MyWrap();
    // return const MyText2();
    // return const MyButton();
    // return const CircularImage3();
    // return  MyCardView();
    // return const MyStack();
    // return MyFlex();
    // return MyColumn();
    //水平布局
    // return   MyRow();
    //边界布局
    // return   const MyPadding();
    //表格布局
    // return MyGirdViewDemo();
    // return const MyGirdView();
    //列表布局
    // return MyListDemo();
    // return MyListView();
    //容器布局
    // return MyContainer(),
    //图片布局
    // return  MyImage(),
    // return CircularImage(),
    // return CircularImage2(),
    // return MyImageLocal(),
  }
}
