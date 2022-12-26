import 'package:flutter/material.dart';

class BannerImageView extends StatefulWidget {
  String src;
  double height;
  double width;
  BannerImageView({Key? key,required this.src,this.height=200,this.width=double.infinity}) : super(key: key);

  @override
  State<BannerImageView> createState() => _BannerImageViewState();
}

class _BannerImageViewState extends State<BannerImageView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network(widget.src,width:widget.width,height: widget.height ,fit: BoxFit.cover,),
    );
  }
}
