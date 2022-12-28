import 'package:flutter/material.dart';

import 'HeroPage.dart';

class HomeGirdPage extends StatefulWidget {
  Map arguments;

  HomeGirdPage({Key? key, required this.arguments}) : super(key: key);

  @override
  State<HomeGirdPage> createState() => _HomeGirdPageState();
}

class _HomeGirdPageState extends State<HomeGirdPage> {
  late List<Widget> widgets;

  List<Widget> _bulitItems(List list) {
    var temp = list.map((e) {
      return GestureDetector(
        onTap: () {
        // Navigator.push(context, MaterialPageRoute(builder: (context) {
        //
        //   return HeroPage();
        // }));
        //
          Navigator.pushNamed(context, "/HeroPage", arguments: {"url": e["url"]});
        },
        child: Container(
        
          decoration: const BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.all(Radius.circular(5.0))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:<Widget> [
              Hero(
                  tag: e["url"],
                  child: AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Image.network(
                      e["url"],
                      fit: BoxFit.cover,
                    ),
                  )),
             Container(
               margin: EdgeInsets.all(5.0),
               child:  Text(e["desc"],
                 style: const TextStyle(color: Colors.white, fontSize: 11),
                 overflow: TextOverflow.ellipsis,
                 maxLines: 2,
                 textAlign: TextAlign.left),),
            ],
          ),
        ),
      );
    });
    return widgets = temp.toList();
  }

  @override
  void initState() {
    super.initState();
    List list = widget.arguments["list"] as List;
    widgets = _bulitItems(list);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "表格布局",
            style: TextStyle(
              color: Colors.black,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
          centerTitle: true,
        ),
        body: Container(
            margin: EdgeInsets.all(10.0),
            child: GridView.builder(
                itemCount: widgets.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 10.0,
                    crossAxisCount: 2,
                    //子条目 每个子对象的横轴与主轴范围的比率高度和宽度比
                    childAspectRatio: 1.2),
                itemBuilder: (context, index) {
                  return widgets[index];
                })));
  }
}
