import 'package:flutter/material.dart';

/// 透明度动画
class AnimatedOpacityPage extends StatefulWidget {
  const AnimatedOpacityPage({Key? key}) : super(key: key);

  @override
  State<AnimatedOpacityPage> createState() => _AnimatedOpacityPageState();
}

class _AnimatedOpacityPageState extends State<AnimatedOpacityPage> {
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
      body: AnimatedOpacity(
        // AnimatedContainer  容器动画
        key: glk,
        duration: const Duration(seconds: 1),
        curve: Curves.linear,

        opacity: isChange?1.0:0.2,
        child: Container(
          height: 100,
          width:100,
          decoration: const BoxDecoration(color: Colors.red),
        ),
      ),
    );
  }
}
