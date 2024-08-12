import 'package:acme_task/core/util/resources/app_assets.dart';
import 'package:acme_task/core/util/resources/app_string.dart';
import 'package:acme_task/core/util/resources/colors_manager.dart';
import 'package:acme_task/core/util/resources/constants.dart';
import 'package:acme_task/core/util/widgets/default_text.dart';
import 'package:acme_task/core/util/widgets/defult_button.dart';
import 'package:acme_task/features/facebook_profile_clone/presentation/components/actions_button.dart';
import 'package:acme_task/features/facebook_profile_clone/presentation/components/add_post_web_widget.dart';
import 'package:acme_task/features/facebook_profile_clone/presentation/components/post_item_builder.dart';
import 'package:acme_task/features/facebook_profile_clone/presentation/components/profile_info_web_widget.dart';
import 'package:acme_task/features/facebook_profile_clone/presentation/components/tab_button.dart';
import 'package:flutter/material.dart';

class PostsInfoWidget extends StatelessWidget {
  const PostsInfoWidget({super.key, required this.constraints});
  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    Widget wrapper({required List<Widget> children}) {
      if (constraints.maxWidth < 1200) {
        return Column(
          children: children,
        );
      } else {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: children,
        );
      }
    }

    Widget isExpanded({required Widget child}) {
      if (constraints.maxWidth > 1200) {
        return Expanded(
          child: child,
        );
      } else {
        return child;
      }
    }
    return Column(
      children: [
        Container(
          width: constraints.maxWidth > 1000 ? 900 : null,
          height: 350,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppAssets.coverPic),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: ColorsManager.white,
                        boxShadow: [
                          BoxShadow(
                            color: ColorsManager.black,
                            offset: Offset(0, -30),
                            blurRadius: 50,
                          )
                        ],
                      ),
                      child: Row(
                        children: [
                          horizontalSpace(180),
                          const TabButton(
                            classNames: '',
                            text: AppString.timeline,
                            showIcon: true,
                          ),
                          horizontalSpace(10),
                          const TabButton(
                            classNames: '',
                            text: AppString.about,
                          ),
                          horizontalSpace(10),
                          const TabButton(
                            classNames: '',
                            text: AppString.friends,
                            secondText: '1,497',
                          ),
                          horizontalSpace(10),
                          const TabButton(
                            classNames: '',
                            text: AppString.photos,
                          ),
                          horizontalSpace(10),
                          TabButton(
                            classNames:
                            constraints.maxWidth > 1000
                                ? 'd-none d-lg-block'
                                : 'd-none d-md-block',
                            text: AppString.archive,
                            prefixIcon: Icons.lock,
                          ),
                          horizontalSpace(10),
                          TabButton(
                            classNames:
                            constraints.maxWidth > 1000
                                ? 'd-none d-xl-block'
                                : 'd-none d-md-block',
                            text: AppString.more,
                            showIcon: true,
                            showDividerEnd: true,
                          ),
                          horizontalSpace(10),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          backgroundColor: ColorsManager.white,
                          radius: 80,
                          child: Padding(
                            padding: EdgeInsets.all(5),
                            child: CircleAvatar(
                              radius: 80,
                              backgroundImage: AssetImage(
                                  AppAssets.profilePic),
                            ),
                          ),
                        ),
                        horizontalSpace(20),
                        const Expanded(
                          child: Column(
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: [
                              DefaultText(
                                text: 'Dai Nguyen',
                                color: ColorsManager.white,
                                fontSize: 24,
                                maxLines: 2,
                              ),
                              DefaultText(
                                maxLines: 2,
                                text: '(Nguyễn Chánh Đại)',
                                color: ColorsManager.white,
                                fontSize: 18,
                              ),
                            ],
                          ),
                        ),
                        DefaultButton(
                          onPressed: () {},
                          color: ColorsManager.white,
                          borderRadius: 0,
                          width: 100,
                          child: const DefaultText(
                            text: AppString.editProfile,
                            fontSize: 12,
                          ),
                        ),
                        horizontalSpace(20),
                        DefaultButton(
                          onPressed: () {},
                          color: ColorsManager.white,
                          borderRadius: 0,
                          width: 100,
                          child: const DefaultText(
                            text: AppString.activityLog,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        verticalSpace(20),
        SizedBox(
          width: constraints.maxWidth > 1000 ? 900 : null,
          child: wrapper(
            children: [
              ProfileInfoWebWidget(
                constraints: constraints,
              ),
              if (constraints.maxWidth > 1200)
                horizontalSpace(20)
              else
                verticalSpace(20),
              isExpanded(
                child: Column(
                  children: [
                    AddPostWebWidget(
                      constraints: constraints,
                    ),
                    Container(
                      width:
                      constraints.maxWidth < 1200 ? 900 : 530,
                      padding: const EdgeInsets.symmetric(
                          vertical: 10.0),
                      child: Row(
                        children: [
                          const Expanded(
                            child: DefaultText(
                              text: AppString.posts,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const ActionsButton(
                            icon: Icons.menu_open,
                            text: AppString.managePosts,
                            borderRadiusValue: 2,
                            color: Colors.white60,
                            borderWidth: 1,
                          ),
                          horizontalSpace(10),
                          const ActionsButton(
                            icon: Icons.menu,
                            text: AppString.listView,
                            borderRadiusValue: 2,
                            color: Colors.white60,
                            borderWidth: 1,
                          ),
                          const ActionsButton(
                            icon: Icons.grid_view_rounded,
                            text: AppString.gridView,
                            borderRadiusValue: 2,
                            color: Colors.white60,
                            borderWidth: 1,
                          ),
                        ],
                      ),
                    ),
                    ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) =>
                      const PostItemBuilder(),
                      itemCount: 5,
                      separatorBuilder: (context, index) =>
                          verticalSpace(10),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
