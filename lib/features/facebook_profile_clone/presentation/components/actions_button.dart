import 'package:acme_task/core/util/resources/colors_manager.dart';
import 'package:acme_task/core/util/resources/constants.dart';
import 'package:acme_task/core/util/widgets/default_text.dart';
import 'package:flutter/material.dart';

class ActionsButton extends StatelessWidget {
  const ActionsButton(
      {super.key, required this.icon, this.text, this.borderRadiusValue, this.color, this.borderWidth});

  final IconData icon;
  final String? text;
  final double? borderRadiusValue;
  final Color? color;
  final double? borderWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: borderRadius(borderRadiusValue ?? 10),
        color: color ?? ColorsManager.grey.withOpacity(0.1),
        border: borderWidth != null
            ? Border.all(color: ColorsManager.grey, width: borderWidth!)
            : null,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 16,
          ),
          if (text != null) ...[horizontalSpace(10), DefaultText(text: text!)],
        ],
      ),
    );
  }
}
