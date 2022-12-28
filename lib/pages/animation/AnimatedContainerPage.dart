import 'package:flutter/material.dart';
/// 大小变化动画
class AnimatedContainerPage extends StatefulWidget {
  const AnimatedContainerPage({Key? key}) : super(key: key);

  @override
  State<AnimatedContainerPage> createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  var glk=GlobalKey();
  bool isChange=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Text("AnimatedContainer"),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.change_history),
        onPressed: () {
        setState(() {
          isChange=!isChange;
        });
        },
      ),
      body: AnimatedContainer(
        // AnimatedContainer  容器动画
        key: glk,
        duration: const Duration(seconds: 1),
        curve: Curves.linear,
        margin: const EdgeInsets.all(10.0),
        height: isChange?300:500,
        width: isChange?300:500,
        decoration: const BoxDecoration(color: Colors.blue),
        child: Container(
          margin: const EdgeInsets.all(10.0),
          height: 100,
          width:100,
          decoration: const BoxDecoration(color: Colors.red),
        ),
      ),
    );
  }
}
