import 'package:flutter/material.dart';

class AnimatedSwitcherPage extends StatefulWidget {
  const AnimatedSwitcherPage({Key? key}) : super(key: key);

  @override
  State<AnimatedSwitcherPage> createState() => _AnimatedSwitcherPageState();
}

class _AnimatedSwitcherPageState extends State<AnimatedSwitcherPage> {
  var glk = GlobalKey();
  bool isChange = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Text("AnimatedSwitcherPage"),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.change_history),
        onPressed: () {
          setState(() {
            isChange = !isChange;
          });
        },
      ),
      body: Container(
        width: double.infinity,
        height: 200,
        decoration: const BoxDecoration(color: Colors.white),
        child: AnimatedSwitcher(
          duration: const Duration(seconds: 1),
          //自定义动画
          transitionBuilder: (child, animation) {
            return ScaleTransition(
              scale: animation,
              child: child,
            );
          },
          child: isChange
              ? const CircularProgressIndicator()
              : Image.network(
                  "https://img2.baidu.com/it/u=1395980100,2999837177&fm=253&fmt=auto&app=120&f=JPEG",
                  fit: BoxFit.cover,
                  height: 200,
                  width: double.infinity,
                ),
        ),
      ),
    );
  }
}
