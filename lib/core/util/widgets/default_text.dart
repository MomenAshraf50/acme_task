import 'package:flutter/material.dart';

class DefaultText extends StatelessWidget {
  const DefaultText({
    super.key,
    required this.text,
    this.fontSize,
    this.fontWeight,
    this.color,
    this.textAlign,
    this.maxLines,
    this.spacing,
    this.textDecoration,
    this.height,
    this.fontFamily,
    this.shadows,
  });

  final String text;
  final String? fontFamily;
  final double? fontSize;
  final double? spacing;
  final FontWeight? fontWeight;
  final Color? color;
  final TextAlign? textAlign;
  final int? maxLines;
  final double? height;
  final List<Shadow>? shadows;
  final TextDecoration? textDecoration;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines,
      style: TextStyle(
        height: height,
        color: color,
        shadows: shadows,
        decoration: textDecoration,
        letterSpacing: spacing,
        fontSize: fontSize,
        overflow: maxLines != null ? TextOverflow.ellipsis : null,
        fontWeight: fontWeight ?? FontWeight.w500,
      ),
    );
  }
}
