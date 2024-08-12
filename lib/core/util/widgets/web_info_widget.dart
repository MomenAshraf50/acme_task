import 'package:acme_task/core/util/resources/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WebInfoWidget extends StatelessWidget {
  const WebInfoWidget({
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
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            image,
            height: 20,
            width: 30,
          ),
          horizontalSpace(10),
          Expanded(
            child: Text.rich(
              TextSpan(
                text: firstText,
                style: const TextStyle(
                  fontSize: 14,
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
