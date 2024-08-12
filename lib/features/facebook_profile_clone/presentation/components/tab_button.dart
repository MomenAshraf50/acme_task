import 'package:acme_task/core/util/resources/app_string.dart';
import 'package:acme_task/core/util/resources/colors_manager.dart';
import 'package:acme_task/core/util/resources/constants.dart';
import 'package:acme_task/core/util/widgets/default_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap5/flutter_bootstrap5.dart';

class TabButton extends StatelessWidget {
  const TabButton({
    super.key,
    this.showIcon = false,
    required this.text,
    this.secondText,
    this.prefixIcon,
    required this.classNames,
    this.showDividerEnd = false,
  });

  final bool showIcon;
  final bool showDividerEnd;
  final String classNames;
  final IconData? prefixIcon;
  final String text;
  final String? secondText;

  @override
  Widget build(BuildContext context) {
    return FB5Col(
      classNames: classNames,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 50,
            width: 1,
            color: ColorsManager.lightGrey,
          ),
          horizontalSpace(10),
          if (prefixIcon != null) ...[
            Icon(
              prefixIcon,
              color: ColorsManager.webMainColor,
            ),
            horizontalSpace(5),
          ],
          DefaultText(
            text: text,
            color: ColorsManager.webMainColor,
            fontWeight: FontWeight.bold,
          ),
          if (secondText != null) ...[
            horizontalSpace(5),
            DefaultText(
              text: secondText!,
              color: ColorsManager.grey,
              fontSize: 10,
              fontWeight: FontWeight.w200,
            ),
          ],
          if (showIcon) ...[
            horizontalSpace(5),
            const Icon(
              Icons.arrow_drop_down_sharp,
              color: ColorsManager.webMainColor,
            ),
          ],
          horizontalSpace(10),
          if (showDividerEnd)
            Container(
              height: 50,
              width: 1,
              color: ColorsManager.lightGrey,
            ),
        ],
      ),
    );
  }
}
