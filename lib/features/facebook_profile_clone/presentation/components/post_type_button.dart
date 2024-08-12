import 'package:acme_task/core/util/resources/constants.dart';
import 'package:acme_task/core/util/widgets/default_text.dart';
import 'package:flutter/material.dart';

class PostTypeButton extends StatelessWidget {
  const PostTypeButton({super.key, required this.icon, required this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          size: 16,
        ),
        horizontalSpace(5),
        DefaultText(
          text: text,
          fontWeight: FontWeight.bold,
          maxLines: 1,
        ),
      ],
    );
  }
}
