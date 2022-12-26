import 'package:flutter/material.dart';
class NewsPage extends StatefulWidget {
  String title;
   NewsPage({Key? key,this.title="测试"}) : super(key: key);

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        //返回
        onPressed: () { Navigator.of(context).pop(context); },
        child: const Icon(Icons.home),
      ),
      appBar: AppBar(title: Text(widget.title),centerTitle: true,),
      body: const Center(child: Text("内容"),),
    );
  }
}
