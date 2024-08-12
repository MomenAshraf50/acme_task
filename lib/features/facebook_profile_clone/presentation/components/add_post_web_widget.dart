import 'package:acme_task/core/util/resources/app_assets.dart';
import 'package:acme_task/core/util/resources/app_string.dart';
import 'package:acme_task/core/util/resources/colors_manager.dart';
import 'package:acme_task/core/util/resources/constants.dart';
import 'package:acme_task/features/facebook_profile_clone/presentation/components/actions_button.dart';
import 'package:acme_task/features/facebook_profile_clone/presentation/components/post_type_button.dart';
import 'package:flutter/material.dart';

class AddPostWebWidget extends StatelessWidget {
  const AddPostWebWidget({super.key, required this.constraints});
  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    return Container(
      width:
      constraints.maxWidth < 1200 ? 900 : 530,
      decoration: BoxDecoration(
        color: ColorsManager.white,
        borderRadius: borderRadius(2),
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(10),
            color:
            ColorsManager.grey.withOpacity(0.1),
            child: Wrap(
              children: [
                const PostTypeButton(
                  text: AppString.createPost,
                  icon: Icons.edit,
                ),
                Padding(
                  padding:
                  const EdgeInsets.symmetric(
                      horizontal: 10.0),
                  child: Container(
                    height: 20,
                    width: 1,
                    color: ColorsManager.grey,
                  ),
                ),
                const PostTypeButton(
                  text: AppString.photoVideo,
                  icon: Icons.camera_alt,
                ),
                Padding(
                  padding:
                  const EdgeInsets.symmetric(
                      horizontal: 10.0),
                  child: Container(
                    height: 20,
                    width: 1,
                    color: ColorsManager.grey,
                  ),
                ),
                const PostTypeButton(
                  text: AppString.liveVideo,
                  icon: Icons
                      .video_camera_back_rounded,
                ),
                Padding(
                  padding:
                  const EdgeInsets.symmetric(
                      horizontal: 10.0),
                  child: Container(
                    height: 20,
                    width: 1,
                    color: ColorsManager.grey,
                  ),
                ),
                const PostTypeButton(
                  text: AppString.lifeEvent,
                  icon: Icons.flag,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                const Divider(
                  height: 1,
                  color: ColorsManager.lightGrey,
                ),
                verticalSpace(10),
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 24,
                      backgroundImage: AssetImage(
                          AppAssets.profilePic),
                    ),
                    horizontalSpace(20),
                    Expanded(
                      child: TextFormField(
                        decoration:
                        const InputDecoration(
                          hintText: AppString
                              .whatsOnYourMind,
                          border: InputBorder.none,
                        ),
                      ),
                    )
                  ],
                ),
                verticalSpace(10),
                const Divider(
                  height: 1,
                  color: ColorsManager.lightGrey,
                ),
                verticalSpace(10),
                Row(
                  children: [
                    const ActionsButton(
                      icon: Icons.image,
                      text: AppString.photoVideo,
                    ),
                    horizontalSpace(10),
                    const ActionsButton(
                      icon: Icons.person,
                      text: AppString.tagFriends,
                    ),
                    horizontalSpace(10),
                    const ActionsButton(
                      icon: Icons.emoji_emotions,
                      text: AppString.feelingActivity,
                    ),
                    horizontalSpace(10),
                    const ActionsButton(
                      icon: Icons.more_horiz_outlined,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
