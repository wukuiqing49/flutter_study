import 'package:flutter/material.dart';

class AnimatedPaddingPage extends StatefulWidget {
  const AnimatedPaddingPage({Key? key}) : super(key: key);

  @override
  State<AnimatedPaddingPage> createState() => _AnimatedPaddingPageState();
}

class _AnimatedPaddingPageState extends State<AnimatedPaddingPage> {
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
      body: AnimatedPadding(
        // AnimatedContainer  容器动画
        key: glk,
        duration: const Duration(seconds: 1),
        curve: Curves.linear,
        padding:  EdgeInsets.all(isChange?10.0:40.0),

        child: Container(
          height: 100,
          width:100,
          decoration: const BoxDecoration(color: Colors.red),
        ),
      ),
    );
  }
}
