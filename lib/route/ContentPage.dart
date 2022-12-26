import 'package:flutter/material.dart';

import '../pages/tabs/Tabs.dart';

class ContentPage extends StatefulWidget {
  Map arguments;

  ContentPage({Key? key, required this.arguments}) : super(key: key);

  @override
  State<ContentPage> createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
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
        title: Text(widget.arguments["title"]),
        centerTitle: true,
      ),
      body: Center(
        child: Text(widget.arguments["content"]),
      ),
    );
  }
}
