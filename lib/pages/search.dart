import 'package:flutter/material.dart';

class search extends StatefulWidget {
  String title;
  int userid;
   search({Key? key,this.title="",required this.userid}) : super(key: key);

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {

  @override
  void initState() {
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () { Navigator.of(context).pop(context); },
      child: const Icon(Icons.home),),
      appBar: AppBar(title: Text(widget.title),centerTitle: true,),
      body: const Center(child: Text("搜索"),),
    );
  }
}
