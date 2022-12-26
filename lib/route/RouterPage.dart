import 'package:flutter/material.dart';
import 'package:flutter_study/pages/search.dart';

class RouterPage extends StatefulWidget {
  const RouterPage({Key? key}) : super(key: key);

  @override
  State<RouterPage> createState() => _RouterPageState();
}

class _RouterPageState extends State<RouterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pop(context);
        },
        child: const Icon(Icons.home),
      ),
      appBar: AppBar(
        title: Text("路由"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            ElevatedButton(
                onPressed: () {
                  //路由跳转
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext bulid) {
                    return search(
                      title: "搜索",
                      userid: 10010,
                    );
                  }));
                },
                child: const Text("搜索跳转")),
            //命名路由跳转
            ElevatedButton(
                onPressed: () {

                  Navigator.pushNamed(context, "/NewsPage");
                },
                child: const Text("News页面")
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/ContentPage",arguments: {"title":"命名路由","content":"命名路由跳转内容"});
                },
                child: const Text("Content页面")
            ),
          ],
        ),
      ),
    );
  }
}
