import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class demo extends StatefulWidget {

  demo({Key? key}) : super(key: key);

  @override
  State<demo> createState() => _searchState();
}

class _searchState extends State<demo> {

  @override
  void initState() {
    super.initState();

  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () { Navigator.of(context).pop(context); },
      child: const Icon(Icons.home),),
      appBar: AppBar(title: Text("demo"),centerTitle: true,),
      body:  Center(child: ElevatedButton(onPressed:(){  GoRouter.of(context).pop("返回");}, child: Text("返回")),),


    );
  }
}
