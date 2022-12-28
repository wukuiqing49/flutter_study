import 'package:flutter/material.dart';

/// 动画测试页面

class AnimatedDemoPage extends StatefulWidget {
  const AnimatedDemoPage({Key? key}) : super(key: key);

  @override
  State<AnimatedDemoPage> createState() => _AnimatedDemoPageState();
}

class _AnimatedDemoPageState extends State<AnimatedDemoPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text("动画页面"),
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, "/AnimatedContainerPage");
          }, child: const Text("AnimatedContainer")),
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, "/AnimatedPaddingPage");
          }, child: const Text("AnimatedPaddingPage")),
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, "/AnimatedPositionedPage");
          }, child: const Text("AnimatedPositionedPage")),
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, "/AnimatedOpacityPage");
          }, child: const Text("AnimatedOpacityPage")),
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, "/AnimatedDefultTextStylePage");
          }, child: const Text("AnimatedDefultTextStylePage")),
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, "/AnimatedSwitcherPage");
          }, child: const Text("AnimatedSwitcherPage")),

      ],),
    );
  }
}
