import 'package:flutter/material.dart';

import '../tabs/Tabs.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        //返回
        onPressed: () {
          Navigator.of(context).pop(context);
        },
        child: const Icon(Icons.home),
      ),
      appBar: AppBar(
        title: Text("注册"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/FinishPage");
                },
                child: const Text("完成")),
          ],
        ),
      ),
    );
  }
}
