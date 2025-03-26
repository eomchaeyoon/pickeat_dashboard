
import 'package:flutter/material.dart';

class SafeAreaOuterBg extends StatelessWidget {
  final Color topColor;
  final Color bottomColor;
  final Widget contentWidget;

  const SafeAreaOuterBg({super.key, required this.topColor, required this.bottomColor, required this.contentWidget});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          height: MediaQuery.of(context).padding.top,
          child: Container(color: topColor),),
        Positioned(
            bottom:0,
            left:0,
            right:0,
            height: MediaQuery.of(context).padding.bottom,
            child: Container(
          color:bottomColor,
        ),),
        contentWidget,
      ],
    );
  }
}
