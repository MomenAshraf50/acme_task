import 'package:acme_task/core/util/resources/constants.dart';
import 'package:acme_task/core/util/widgets/default_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PostActionButton extends StatelessWidget {
  const PostActionButton({super.key, required this.icon, required this.text, required this.width, required this.height, required this.fontSize});

  final String icon;
  final String text;
  final double width;
  final double height;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 3,
              child: Image.asset(
                icon,
                width: width,
                height: height,
              ),
            ),
            Expanded(
              flex: 4,
              child: DefaultText(text: text, fontSize: fontSize,fontWeight: FontWeight.bold,maxLines: 1,),
            ),
          ],
        ),
      ),
    );
  }
}
