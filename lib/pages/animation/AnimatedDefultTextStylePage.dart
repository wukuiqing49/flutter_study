import 'package:flutter/material.dart';

/// 文字变化
class AnimatedDefultTextStylePage extends StatefulWidget {
  const AnimatedDefultTextStylePage({Key? key}) : super(key: key);

  @override
  State<AnimatedDefultTextStylePage> createState() => _AnimatedDefultTextStylePageState();
}

class _AnimatedDefultTextStylePageState extends State<AnimatedDefultTextStylePage> {
  var glk=GlobalKey();
  bool isChange=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Text("AnimatedPaddingPage"),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.change_history),
        onPressed: () {
        setState(() {
          isChange=!isChange;
        });
        },
      ),
      body:  Container(
      height: 100,
      width:100,
      alignment: Alignment.center,
      decoration: const BoxDecoration(color: Colors.red),
        child: AnimatedDefaultTextStyle(
          curve: Curves.linear,
          style:isChange? const TextStyle(fontSize:11):TextStyle(fontSize:20),
          duration: const Duration(microseconds: 1000),
          child: const Text("123",),
        ),
    ),
    );
  }
}
