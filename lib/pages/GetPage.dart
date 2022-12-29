import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/route_manager.dart';
import 'package:get/utils.dart';

class GetPage extends StatefulWidget {
  const GetPage({Key? key}) : super(key: key);

  @override
  State<GetPage> createState() => _GetPageState();
}

class _GetPageState extends State<GetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Get插件"),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Get.snackbar("Hi", "Message",
                    duration: Duration(seconds: 1),
                    snackPosition: SnackPosition.BOTTOM);
              },
              child: const Text("Snackbar")),
          ElevatedButton(
              onPressed: () {
                Get.defaultDialog(
                    title: "弹框",
                    content: Text("弹窗内容"),
                    cancel: ElevatedButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: Text("取消")),
                    onCancel: () {
                      Get.back();
                    },
                    confirm: ElevatedButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: Text("确认")),
                    onConfirm: () {
                      Fluttertoast.showToast(
                          msg: "确认",
                          //针对 android
                          toastLength: Toast.LENGTH_LONG,
                          //提示时间 针对web iso
                          timeInSecForIosWeb: 1,
                          gravity: ToastGravity.CENTER);
                      Get.back();
                    });
              },
              child: const Text("Dialog")),
          ElevatedButton(
              onPressed: () {
                Get.changeTheme(
                    Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
              },
              child: const Text("主题")),
          ElevatedButton(
              onPressed: () {
                Get.bottomSheet(Container(
                  color: Colors.white,
                  height: 400,
                  child: ListView(
                    children: [
                      ListTile(
                        title: Text("1234"),
                      ),
                      ListTile(
                        title: Text("1234"),
                      ),
                      ListTile(
                        title: Text("1234"),
                      ),
                      ListTile(
                        title: Text("1234"),
                      ),
                    ],
                  ),
                ));
              },
              child: const Text("BottomSheet")),
        ],
      ),
    );
  }
}
