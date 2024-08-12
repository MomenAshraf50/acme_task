import 'package:acme_task/core/util/resources/colors_manager.dart';
import 'package:acme_task/core/util/resources/constants.dart';
import 'package:acme_task/core/util/widgets/default_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    super.key,
    this.text,
    this.width,
    required this.onPressed,
    this.child,
    this.color,
    this.height,
    this.borderRadius,
  });

  final String? text;
  final Widget? child;
  final VoidCallback onPressed;
  final double? width;
  final double? borderRadius;
  final double? height;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      child: MaterialButton(
        // height: height ?? 35.h,
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 6.sp)),
        color: color ?? ColorsManager.mainColor,
        onPressed: onPressed,
        child: child ??
            DefaultText(
              text: text ?? '',
              textAlign: TextAlign.center,
              fontSize: body1FontSize,
              fontWeight: FontWeight.w600,
              color: ColorsManager.white,
            ),
      ),
    );
  }
}
