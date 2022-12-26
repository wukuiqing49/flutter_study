import 'package:flutter/material.dart';

class CustomDialog extends Dialog {
  String title;
  String content;
  Function()? onTab;

  CustomDialog({super.key, this.title = "标题", this.content = "内容", required this.onTab});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Material(
        color:Colors.transparent,
        type: MaterialType.transparency,
        child: ConstrainedBox(
          constraints: BoxConstraints(

          ),
          child: Container(
            alignment:Alignment.center ,
            width: double.infinity,
            margin: const EdgeInsets.fromLTRB(40.0, 0.0, 40.0, 0.0),
            decoration:  BoxDecoration(
              color: Colors.red,
              borderRadius:BorderRadius.circular(10.0) ,
            ),
            child: Column(
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(title),
                ),
                const Divider(),
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Text(content),
                ),
                Row(
                  children: [
                    ElevatedButton(onPressed: onTab, child: Text("取消")),
                    ElevatedButton(onPressed: onTab, child: Text("确认"))
                  ],
                )
              ],
            ),
          ),

        ),
      ),
    );
  }
}
