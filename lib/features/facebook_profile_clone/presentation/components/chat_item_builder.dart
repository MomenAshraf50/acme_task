import 'package:acme_task/core/util/resources/app_assets.dart';
import 'package:acme_task/core/util/resources/colors_manager.dart';
import 'package:acme_task/core/util/resources/constants.dart';
import 'package:acme_task/core/util/widgets/default_text.dart';
import 'package:flutter/material.dart';

class ChatItemBuilder extends StatelessWidget{
  const ChatItemBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 16,
            backgroundImage: AssetImage(AppAssets.profilePic),
          ),
          horizontalSpace(5),
          const Expanded(
            child: DefaultText(
              text: 'MO MO',
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
          horizontalSpace(5),
          CircleAvatar(
            radius: 4, backgroundColor: ColorsManager.green,
          ),
          horizontalSpace(10),
        ],
      ),
    );
  }

}