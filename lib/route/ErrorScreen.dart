import 'package:flutter/material.dart';

class ErrorScreen extends StatefulWidget {
  late String errMessage;
   ErrorScreen( {Key? key,this.errMessage="地址错误"}) : super(key: key);

  @override
  State<ErrorScreen> createState() => _ErrorScreenState();
}

class _ErrorScreenState extends State<ErrorScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Text(widget.errMessage),);
  }
}
