import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _HomePageState();
}

class _HomePageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Column(children: [
      ElevatedButton(onPressed: (){
      Navigator.pushNamed(context, "/GetPage");
      }, child: Text("Get插件使用"))
    ],),);
  }
}
