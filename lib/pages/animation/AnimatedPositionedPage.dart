import 'package:flutter/material.dart';
/// 位置变动动画
class AnimatedPositionedPage extends StatefulWidget {
  const AnimatedPositionedPage({Key? key}) : super(key: key);

  @override
  State<AnimatedPositionedPage> createState() => _AnimatedPositionedPageState();
}

class _AnimatedPositionedPageState extends State<AnimatedPositionedPage> {
  var glk = GlobalKey();
  bool isChange = true;
  // late Size size;
  //
  // @override
  // void initState() {
  //   super.initState();
  //   size=MediaQuery.of(context).size;
  //   print(size);
  // }

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
              isChange = !isChange;
            });
          },
        ),
        body: Stack(
          children: [
            ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Image.network(
                      "https://iknow-pic.cdn.bcebos.com/e1fe9925bc315c604f6e47608ab1cb1348547741",
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover,
                    ),
                    title: Text("测试"),
                  );
                }),
            AnimatedPositioned(
                key: glk,
                right: isChange?20:MediaQuery.of(context).size.width-120,
                top: isChange?20:MediaQuery.of(context).size.height-220,
                duration: const Duration(seconds: 2),

                child: Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(
                      color: Colors.red,
                    shape: BoxShape.circle
                  ),
                ))
          ],
        ));
  }
}
