import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        //返回
        onPressed: () { Navigator.of(context).pop(context); },
        child: const Icon(Icons.home),
      ),
      appBar: AppBar(title: Text("登录"),centerTitle: true,),
      body: Container(child: Column(
        children:  <Widget>[
          ElevatedButton(onPressed: (){
            //路由跳转
            Navigator.pushNamed(context, "/RegisterPage");
          }, child: const Text("注册跳转")),
        ],
      ),),
    );
  }
}
