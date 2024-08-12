import 'package:acme_task/core/util/resources/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MobileInfoWidget extends StatelessWidget {
  const MobileInfoWidget({
    super.key,
    required this.image,
    required this.firstText,
    this.secondText,
  });

  final String image;
  final String firstText;
  final String? secondText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            image,
            height: 35,
            width: 35,
          ),
          horizontalSpace(extraSmallHorizontalWidth),
          Expanded(
            child: Text.rich(
              TextSpan(
                text: firstText,
                style: TextStyle(
                  fontSize: body2FontSize,
                ),
                children: [
                  if (secondText != null)
                    TextSpan(
                      text: secondText,
                      style:  const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
