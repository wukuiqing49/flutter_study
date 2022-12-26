import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'CustomDialog.dart';

class DialogPage extends StatefulWidget {
  const DialogPage({Key? key}) : super(key: key);

  @override
  State<DialogPage> createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {
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
      body: Container(
        child: Column(
          children: <Widget>[
            ElevatedButton(
                onPressed: () {
                  _showAlertDialog(context);
                },
                child: const Text("AlertDialog")),
            ElevatedButton(
                onPressed: () {
                  _showSimpleDialog(context);
                },
                child: const Text("SimpleDialog")),
            ElevatedButton(
                onPressed: () {
                  _showBottomDialog(context);
                },
                child: const Text("showBottomDialog")),
            ElevatedButton(
                onPressed: () {
                  _showToast(context);
                },
                child: const Text("_showToast")),
            ElevatedButton(
                onPressed: () {
                  _showCustomDialog(context);
                },
                child: const Text("_showToast")),
          ],
        ),
      ),
    );
  }

  void _showAlertDialog(BuildContext context) async {
    var reslut = await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("标题"),
            content: Text("内容"),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(1);
                  },
                  child: Text("确认")),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(2);
                  },
                  child: Text("取消")),
            ],
          );
        });
    print(reslut);
  }

  void _showSimpleDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: Text("SimpleDialog"),
            children: [
              SimpleDialogOption(
                child: Text("测试"),
                onPressed: () {
                  Navigator.of(context).pop(1);
                },
              ),
              SimpleDialogOption(
                child: Text("测试"),
                onPressed: () {
                  Navigator.of(context).pop(1);
                },
              ),
              SimpleDialogOption(
                child: Text("测试"),
                onPressed: () {
                  Navigator.of(context).pop(1);
                },
              ),
              SimpleDialogOption(
                child: Text("测试"),
                onPressed: () {
                  Navigator.of(context).pop(1);
                },
              ),
              SimpleDialogOption(
                child: Text("测试"),
                onPressed: () {
                  Navigator.of(context).pop(1);
                },
              ),
              SimpleDialogOption(
                child: Text("测试"),
                onPressed: () {
                  Navigator.of(context).pop(1);
                },
              ),
            ],
          );
        });
  }

  void _showBottomDialog(BuildContext context) async {
    var result = await showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            child: Column(
              children: [
                ListTile(
                  title: Text("测试"),
                  onTap: () {
                    Navigator.of(context).pop(1);
                  },
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
              ],
            ),
          );
        });
    print(result);
  }

  void _showToast(BuildContext context) {
    Fluttertoast.showToast(
        msg: "测试",
        //针对 android
        toastLength: Toast.LENGTH_LONG,
        //提示时间 针对web iso
        timeInSecForIosWeb: 1,
        gravity: ToastGravity.CENTER);
  }

  void _showCustomDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return CustomDialog(
            title: "自定义标题",
            content: "我们项目开发中，有很多地方会用到dialog，虽然flutter自身也有，比如AboutDialog、AlertDialog、SimpleDialog、CupertinoAlertDialog等等之类的，但是这些满足不了我们的控制欲，我们想要的是它可以根据我们的想法而随改变，并不是那么死板，所以呢，就想到封装好",
            onTab: () {
              Navigator.of(context).pop();
            },
          );
        });
  }
}
