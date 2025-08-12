import 'package:flutter/material.dart';
import 'package:example/constans.dart';
class ColorDot extends StatelessWidget {
  const ColorDot({
    super.key,
    this.fillColor =Colors.black,
    this.isSelected =false,
    
  });
  final Color fillColor;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultpadding /2.5),
      padding: EdgeInsets.all(0.3),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color:isSelected? kTextLightColor:Colors.transparent),
      
      ),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: fillColor,
        ),
      ),
    );
  }
}

