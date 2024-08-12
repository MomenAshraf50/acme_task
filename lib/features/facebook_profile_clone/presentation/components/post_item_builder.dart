import 'package:acme_task/core/util/resources/app_assets.dart';
import 'package:acme_task/core/util/resources/app_string.dart';
import 'package:acme_task/core/util/resources/colors_manager.dart';
import 'package:acme_task/core/util/resources/constants.dart';
import 'package:acme_task/core/util/widgets/default_text.dart';
import 'package:acme_task/features/facebook_profile_clone/presentation/components/post_action_button.dart';
import 'package:flutter/material.dart';

class PostItemBuilder extends StatelessWidget {
  const PostItemBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: borderRadius(2),
        color: ColorsManager.white
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  radius: 24,
                  backgroundImage: AssetImage(AppAssets.profilePic),
                ),
                horizontalSpace(10),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text.rich(
                        TextSpan(
                          text: 'Dai Nguyen ',
                          style: TextStyle(
                            fontSize: 16,
                            color: ColorsManager.webMainColor,
                            fontWeight: FontWeight.bold,
                          ),
                          children: [
                            TextSpan(
                              text: 'updated his cover photo',
                              style: TextStyle(
                                color: ColorsManager.grey,
                                fontSize: 14
                              ),
                            )
                          ],
                        ),
                      ),
                      DefaultText(
                        text: '29 mins . 🌍',
                        fontSize: 10,
                        color: ColorsManager.black,
                      ),
                    ],
                  ),
                ),
                horizontalSpace(10),
                const Icon(
                  Icons.more_horiz_outlined,
                ),
              ],
            ),
            verticalSpace(10),
            const Text.rich(
              TextSpan(
                text: 'Source : ',
                style: TextStyle(
                  fontSize: 16,
                ),
                children: [
                  TextSpan(
                    text: 'https://icons8.com/ouch',
                    style: TextStyle(
                      color: ColorsManager.blue,
                    ),
                  )
                ],
              ),
            ),
            verticalSpace(10),
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Image.asset(
                AppAssets.coverPic,
                fit: BoxFit.cover,
              ),
            ),
            verticalSpace(10),
            Row(
              children: List.generate(
                3,
                    (index) => PostActionButton(
                      fontSize: 16,
                  width: 20,
                  height: 20,
                  icon: AppAssets.postActionIcons[index],
                  text: AppString.postActionText[index],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
