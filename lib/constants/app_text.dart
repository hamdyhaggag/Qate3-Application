import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String text;
  final FontWeight fontWeight;
  final Color color;
  final double fontSize;
  final TextAlign align;
  final TextDirection textDirection;
  final TextDecoration decoration;
  final TextOverflow overflow;
  final int? maxLines;
  final bool? softWrap;
  final double? height;
  final String fontFamily;

  AppText(
    this.text, {
    this.fontSize = 14,
    this.color = Colors.black,
    this.fontWeight = FontWeight.w100,
    this.align = TextAlign.start,
    this.textDirection = TextDirection.rtl,
    this.decoration = TextDecoration.none,
    this.overflow = TextOverflow.ellipsis,
    this.maxLines,
    this.height,
    this.fontFamily = "Cairo",
    this.softWrap,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      textDirection: textDirection,
      textScaleFactor: 1,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        height: height != null ? height! / fontSize : null,
        decoration: decoration,
        decorationStyle: TextDecorationStyle.solid,
        fontWeight: fontWeight,
        fontFamily: fontFamily,
      ),
      overflow: overflow,
      maxLines: maxLines,
      softWrap: softWrap,
    );
  }
}
