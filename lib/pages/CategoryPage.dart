import 'package:flutter/material.dart';
import 'package:flutter_study/pages/search.dart';
import 'package:flutter_study/res/ListData.dart';
import 'package:flutter_study/route/RouterPage.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Column(
      children:  <Widget>[
        ElevatedButton(onPressed: (){
          //路由跳转
          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext bulid){
            return const RouterPage();
          }));
        }, child: const Text("路由跳转")),
        ElevatedButton(onPressed: (){
          //路由跳转
          Navigator.pushNamed(context, "/LoginPage");
        }, child: const Text("注册")),

        ElevatedButton(onPressed: (){
          //路由跳转
          Navigator.pushNamed(context, "/DialogPage");
        }, child: const Text("Dialog页面")),
        ElevatedButton(onPressed: (){
          //路由跳转
          Navigator.pushNamed(context, "/PageViewPage");
        }, child: const Text("Banner")),
        ElevatedButton(onPressed: (){
          //路由跳转
          Navigator.pushNamed(context, "/CustomPageViewPage");
        }, child: const Text("自定义Banner")),
        ElevatedButton(onPressed: (){
          //路由跳转
          Navigator.pushNamed(context, "/CustomPageViewKeepAlivePage");
        }, child: const Text("自定义Banner缓存页面")),
        ElevatedButton(onPressed: (){
          //路由跳转
          Navigator.pushNamed(context, "/KeyPage");
        }, child: const Text("Key页面")),
        ElevatedButton(onPressed: (){
          //路由跳转
          Navigator.pushNamed(context, "/AnimationList");
        }, child: const Text("AnimationList页面")),
        ElevatedButton(onPressed: (){
          //路由跳转
          Navigator.pushNamed(context, "/AnimatedDemoPage");
        }, child: const Text("动画页面")),
        ElevatedButton(onPressed: (){
          //路由跳转
          Navigator.pushNamed(context, "/HomeGirdPage",arguments: {"list":ListData});
        }, child: const Text("Hero动画")),
      ],
    ),);
  }
}
