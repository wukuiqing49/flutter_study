import 'package:flutter/material.dart';
import 'package:flutter_study/pages/search.dart';

class PersonPage extends StatefulWidget  {
  const PersonPage({Key? key}) : super(key: key);

  @override
  State<PersonPage> createState() => _HomePageState();
}

class _HomePageState extends State<PersonPage> {
  @override
  void initState() {

    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Container(child: Column(
      children: <Widget>[
        ElevatedButton(onPressed: (){
        //路由跳转
        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext bulid){
          return search(title: "搜索",userid: 10010,);
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
