import 'dart:core';
import 'dart:core';
//配置Ios切换的风格
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../pages/GetPage.dart';
import '../pages/animation/AnimatedContainerPage.dart';
import '../pages/animation/AnimatedDefultTextStylePage.dart';
import '../pages/animation/AnimatedDemoPage.dart';
import '../list/AnimationList.dart';
import '../pages/KeyPage.dart';
import '../pages/animation/AnimatedOpacityPage.dart';
import '../pages/animation/AnimatedPaddingPage.dart';
import '../pages/animation/AnimatedPositionedPage.dart';
import '../pages/animation/AnimatedSwitcherPage.dart';
import '../pages/banner/CustomPageViewKeepAlivePage.dart';
import '../pages/banner/CustomPageViewPage.dart';
import '../pages/banner/PageViewPage.dart';
import '../pages/dialog/CustomDialog.dart';
import '../pages/dialog/DialogPage.dart';
import '../pages/home/HeroPage.dart';
import '../pages/home/HomeGirdPage.dart';
import '../pages/regist/FinishPage.dart';
import '../pages/regist/LoginPage.dart';
import '../pages/regist/RegisterPage.dart';
import '../pages/tabs/Tabs.dart';
import 'ContentPage.dart';
import 'NewsPage.dart';
  //1 配置地址
 Map routerPath = {
  "/": (context) =>  Tabs(index: 0,),

  "/NewsPage": (context) =>  NewsPage(),
  "/FinishPage": (context) => const FinishPage(),
  "/LoginPage": (context) => const LoginPage(),
  "/RegisterPage": (context) =>const RegisterPage(),
  "/DialogPage": (context) => const DialogPage(),
  "/PageViewPage": (context) => const PageViewPage(),
  "/CustomPageViewPage": (context) => const CustomPageViewPage(),
  "/AnimationList": (context) => const AnimationList(),
  "/AnimatedDemoPage": (context) => const AnimatedDemoPage(),
  "/AnimatedContainerPage": (context) => const AnimatedContainerPage(),
  "/AnimatedPaddingPage": (context) => const AnimatedPaddingPage(),
  "/AnimatedPositionedPage": (context) => const AnimatedPositionedPage(),
  "/AnimatedOpacityPage": (context) => const AnimatedOpacityPage(),
  "/AnimatedDefultTextStylePage": (context) => const AnimatedDefultTextStylePage(),
  "/AnimatedSwitcherPage": (context) => const AnimatedSwitcherPage(),
  "/CustomPageViewKeepAlivePage": (context) => const CustomPageViewKeepAlivePage(),
  "/KeyPage": (context) => const KeyPage(),
  "/HomeGirdPage": (context,{arguments}) =>  HomeGirdPage(arguments: arguments),
  "/HeroPage": (context,{arguments}) =>  HeroPage(arguments: arguments),
  "/GetPage": (context) =>  const GetPage(),
  //命名路由传递参数
  "/ContentPage": (context, {arguments}) => ContentPage(arguments: arguments),

};
 //2 : Android 跳转风格路由传参配置
var onGenerateRoute=(RouteSettings settings) {
  //把路由对象的name用变量保存
  final String? name = settings.name;
  //保存路由对象对于的方法 routerPath路由的map
  final Function pageContentBuilder = routerPath[name] ;
  //如果方法不为空
  if(pageContentBuilder != null) {
    //如果有参数
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments)
      );
      //放回路由组件对象
      return route;
    } else {
      final Route route = MaterialPageRoute(
          builder: (context) => pageContentBuilder(context)

      );
      return route;
    }
  }
};

//2 : Ios 跳转风格路由传参配置
var onGenerateRouteIos=(RouteSettings settings) {
  //把路由对象的name用变量保存
  final String? name = settings.name;
  //保存路由对象对于的方法 routerPath路由的map
  final Function pageContentBuilder = routerPath[name] ;
  //如果方法不为空
  if(pageContentBuilder != null) {
    //如果有参数
    if (settings.arguments != null) {
      final Route route = CupertinoPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments)
      );
      //放回路由组件对象
      return route;
    } else {
      final Route route = CupertinoPageRoute(
          builder: (context) => pageContentBuilder(context)

      );
      return route;
    }
  }
};
// 替换路由

// Navigator.of(context).pushReplacementNamed("routeName");

//返回跟路由
// Navigator.of(context).pushAndRemoveUntil(
// MaterialPageRoute(builder: (BuildContext context) {
// return const Tabs();
// }), (route) => false);
