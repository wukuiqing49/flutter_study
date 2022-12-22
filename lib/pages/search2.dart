import 'package:flutter/material.dart';

class search2 extends StatefulWidget {
late String title;
late String type;
  search2({Key? key, this.title="", this.type=""}) : super(key: key);

  @override
  State<search2> createState() => _searchState();
}

class _searchState extends State<search2> {

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
      body:  Center(child: Text(widget.type),),
    );
  }
}
