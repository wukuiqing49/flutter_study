import 'package:flutter/material.dart';
import 'HomeIcon.dart';
import 'IconContainer.dart';

class MyStack extends StatelessWidget {
  const MyStack({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      alignment: Alignment.center,
      height: size.height,
      width: size.width,
      decoration: const BoxDecoration(color: Colors.black12),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            top: 0,
            //配置的是字组件的宽高  不配置以 子组件大小为主
            width: size.width,
            height: 44,
            child: SizedBox(
              width: size.width,
              height: 44,
              child: Flex(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                direction: Axis.horizontal,
                children: [
                  Expanded(
                      flex: 1,
                      child: IconContainer(
                        HomeIcon.search,
                        myColor: Colors.black,
                      )),
                  Expanded(
                      flex: 1,
                      child: IconContainer(
                        HomeIcon.search,
                        myColor: Colors.black,
                      )),
                ],
              ),
            ),
          ),
          const Positioned(top: 66, child: Text("1212124341")),
          Positioned(
              top: 100,
              height: size.height,
              width: size.width,
              child: ListView(
                children: const [
                  ListTile(
                    title: Text("测试头部"),
                  ),
                  ListTile(
                    title: Text("测试"),
                  ),
                  ListTile(
                    title: Text("测试"),
                  ),
                  ListTile(
                    title: Text("测试"),
                  ),
                  ListTile(
                    title: Text("测试"),
                  ),
                  ListTile(
                    title: Text("测试"),
                  ),
                  ListTile(
                    title: Text("测试"),
                  ),
                  ListTile(
                    title: Text("测试"),
                  ),
                  ListTile(
                    title: Text("测试"),
                  ),
                  ListTile(
                    title: Text("测试"),
                  ),
                  ListTile(
                    title: Text("测试"),
                  ),
                  ListTile(
                    title: Text("测试"),
                  ),
                  ListTile(
                    title: Text("测试"),
                  ),
                  ListTile(
                    title: Text("测试"),
                  ),
                  ListTile(
                    title: Text("测试"),
                  ),
                  ListTile(
                    title: Text("测试"),
                  ),
                  ListTile(
                    title: Text("测试"),
                  ),
                  ListTile(
                    title: Text("测试"),
                  ),
                  ListTile(
                    title: Text("测试"),
                  ),
                  ListTile(
                    title: Text("测试"),
                  ),
                  ListTile(
                    title: Text("测试"),
                  ),
                  ListTile(
                    title: Text("测试"),
                  ),
                  ListTile(
                    title: Text("测试"),
                  ),
                  ListTile(
                    title: Text("尾部"),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
