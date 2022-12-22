import 'package:flutter/material.dart';
import 'package:flutter_study/pages/search.dart';
import 'package:flutter_study/pages/RouterPage.dart';

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
          //名字跳转路由跳转
          //路径跳转  不带参数
          // GoRouter.of(context).push('/demo');
          //带参数传递  path_to_regexp: ^0.4.0  用的这个三方库搭配

        }, child: const Text("路由跳转_go_router")),

      ],
    ),);
  }
}
