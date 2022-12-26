import 'package:flutter/material.dart';
import '../../res/ListData.dart';
import '../../widget/BannerImageView.dart';

class PageViewPage extends StatefulWidget {
  const PageViewPage({Key? key}) : super(key: key);

  @override
  State<PageViewPage> createState() => _PageViewPageState();
}

class _PageViewPageState extends State<PageViewPage> {
  List<Widget> _initList() {
    var tempList = ListData.map((e) {
      return BannerImageView(
        src: e["url"]!,
      );
    });
    return tempList.toList();
  }

  late List<Widget> list;

  @override
  void initState() {
    list = _initList();
    super.initState();
  }

  void addItem() {
    list.add(BannerImageView(
      src:
          "https://img2.baidu.com/it/u=1395980100,2999837177&fm=253&fmt=auto&app=120&f=JPEG?w=1200&h=675",
    ));
    list.add(BannerImageView(
      src:
          "https://img2.baidu.com/it/u=1395980100,2999837177&fm=253&fmt=auto&app=120&f=JPEG?w=1200&h=675",
    ));
    list.add(BannerImageView(
      src:
          "https://img2.baidu.com/it/u=1395980100,2999837177&fm=253&fmt=auto&app=120&f=JPEG?w=1200&h=675",
    ));
    list.add(BannerImageView(
      src:
          "https://img2.baidu.com/it/u=1395980100,2999837177&fm=253&fmt=auto&app=120&f=JPEG?w=1200&h=675",
    ));
    list.add(BannerImageView(
      src:
          "https://img2.baidu.com/it/u=1395980100,2999837177&fm=253&fmt=auto&app=120&f=JPEG?w=1200&h=675",
    ));
    list.add(BannerImageView(
      src:
          "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.tukuppt.com%2Fphoto-big%2F00%2F00%2F94%2F6152bc0ce6e5d805.jpg&refer=http%3A%2F%2Fimg.tukuppt.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1674632448&t=41454fffd9f0e2671b07a46535cf07a4",
    ));
  }
int curIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          //返回
          onPressed: () {
            Navigator.of(context).pop(context);
          },
          child: const Icon(Icons.home),
        ),
        appBar: AppBar(
          title: Text("DialogPage页面"),
          centerTitle: true,
        ),
        body: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              width: double.infinity,
              height: 200,
              child: PageView.builder(
                itemCount: 200,
                onPageChanged: (index) {
                 setState(() {
                   curIndex=index % list.length;
                 });
                },
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return list[index % list.length];
                },
              ),
            ),
            Positioned(
                bottom: 5,
                child: Row(
                  children: List.generate(list.length, (index) {
                    return Container(
                      margin: const EdgeInsets.all(5.0),
                      height: 10,
                      width: 10,
                      decoration:  BoxDecoration(
                          color: index==(curIndex%list.length)?Colors.blue:Colors.grey,
                          shape: BoxShape.circle),
                    );
                  }),
                ))
          ],
        ));
  }
}
