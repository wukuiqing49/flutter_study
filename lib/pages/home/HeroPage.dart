import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
///  hero 动画以及 图片放大缩小
class HeroPage extends StatefulWidget {
  Map arguments;

  HeroPage({Key? key, required this.arguments}) : super(key: key);

  @override
  State<HeroPage> createState() => _HeroPageState();
}

class _HeroPageState extends State<HeroPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(

            child: Hero(
              tag: widget.arguments["url"],
              child:  AspectRatio(
              aspectRatio: 16 / 9,
                child: PhotoView(imageProvider: NetworkImage(widget.arguments["url"]),),
            ),
          ),
        ),
      ),
    );
  }
}
