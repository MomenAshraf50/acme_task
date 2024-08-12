import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


SizedBox verticalSpace(double size) => SizedBox(height: size);

SizedBox horizontalSpace(double size) => SizedBox(width: size);

BorderRadius borderRadius(double radius) => BorderRadius.circular(radius);

EdgeInsets appPadding = EdgeInsets.all(12.sp);

void debugPrintFullText(String text) {
  final pattern = RegExp('.{1,800}'); // 800 is the size of each chunk
  pattern.allMatches(text).forEach((match) => debugPrint(match.group(0)));
}

void navigateTo(context, Widget widget) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => widget,
    ),
  );
}

void navigateAndFinish(
    context,
    Widget widget,
    ) =>
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
          (route) {
        return false;
      },
    );

void navigateAndReplace(
    context,
    Widget widget,
    ) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(
      builder: (context) => widget,
    ),
  );
}

double headLine1FontSize = 22.sp;
double headLine2FontSize = 20.sp;
double headLine3FontSize = 18.sp;
double border = 16.sp;
double body1FontSize = 16.sp;
double body2FontSize = 14.sp;
double body3FontSize = 12.sp;
double body4FontSize = 10.sp;
double verticalHeight = 20.h;
double bigVerticalHeight = 30.h;
double extraBigVerticalHeight = 40.h;
double smallVerticalHeight = 10.h;
double extraSmallVerticalHeight = 5.h;
double horizontalWidth = 20.w;
double bigHorizontalWidth = 30.w;
double extraBigHorizontalWidth = 40.w;
double smallHorizontalWidth = 10.w;
double extraSmallHorizontalWidth = 10.w;

