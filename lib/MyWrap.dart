import 'package:flutter/material.dart';
import 'package:flutter_study/MyButton.dart';
import 'package:flutter_study/MyButtonCustom.dart';

class MyWrap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          // 横轴展示位置 居开始位置摆放
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("化妆品", style: Theme.of(context).textTheme.subtitle1),
            Container(
              margin: const EdgeInsets.only(
                  left: 0.0, top: 10.0, right: 0.0, bottom: 10.0),
              child: const Divider(
                color: Colors.black12,
                height: 2.0,
              ),
            ),
            Wrap(
              //子布局 摆放方式  居中 居左居右 等分等效果
              alignment: WrapAlignment.start,
              //排列的方向
              direction: Axis.horizontal,
              //  在主轴上，孩子之间要有多大的空间。 item 主轴的间隔
              spacing: 10.0,
              // 在交叉轴上，管路之间应留出多少空间
              runSpacing: 10.0,

              //居左  或者居右展示
              // textDirection: TextDirection.ltr,
              children: [
                MyButtonCustom(
                  "美妆蛋",
                  onPressed: () {
                    print("content");
                  },
                ),
                MyButtonCustom("洗面奶"),
                MyButtonCustom("卸妆液"),
                MyButtonCustom("美甲"),
                MyButtonCustom("精华"),
                MyButtonCustom("精华"),
                MyButtonCustom("精华"),
                MyButtonCustom("精华"),
                MyButtonCustom("粉底液"),
                MyButtonCustom("香水"),
              ],
            ),
            const  Divider(),
            Text("历史记录", style: Theme.of(context).textTheme.subtitle1),
            Column(
              children: const [
                Divider(),
                ListTile(title: Text("电脑"),),
                Divider() ,
                ListTile(title: Text("电脑"),),
                Divider() ,
                ListTile(title: Text("电脑"),),
                Divider(),
                
              ],
            ),
            OutlinedButton.icon(onPressed: (){}, icon: const Icon(Icons.delete,), label: const Text("清空记录"))
          ],
        ));
  }
}
