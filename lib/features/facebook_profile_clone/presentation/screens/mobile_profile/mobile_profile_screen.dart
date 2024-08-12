import 'package:acme_task/core/util/resources/app_assets.dart';
import 'package:acme_task/core/util/resources/app_string.dart';
import 'package:acme_task/core/util/resources/colors_manager.dart';
import 'package:acme_task/core/util/resources/constants.dart';
import 'package:acme_task/core/util/widgets/default_text.dart';
import 'package:acme_task/core/util/widgets/defult_button.dart';
import 'package:acme_task/core/util/widgets/mobile_info_widget.dart';
import 'package:acme_task/features/facebook_profile_clone/presentation/components/mobile_appbar.dart';
import 'package:acme_task/features/facebook_profile_clone/presentation/components/post_item_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MobileProfileScreen extends StatelessWidget {
  const MobileProfileScreen({super.key, required this.constraints});

  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    List<IconData> bottomNavIcons = [
      Icons.home,
      Icons.video_collection_rounded,
      Icons.group,
      Icons.notifications,
      Icons.menu
    ];

    return Scaffold(
      backgroundColor: ColorsManager.white,
      appBar: mobileAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: appPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AspectRatio(
                aspectRatio: 11 / 9,
                child: Stack(
                  children: [
                    AspectRatio(
                      aspectRatio: 16 / 9,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10.sp),
                            topLeft: Radius.circular(10.sp),
                          ),
                          image: const DecorationImage(
                            image: AssetImage(AppAssets.coverPic),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: AspectRatio(
                        aspectRatio: 18 / 9,
                        child: CircleAvatar(
                          backgroundColor: ColorsManager.white,
                          child: Padding(
                            padding: EdgeInsets.all(5.sp),
                            child: AspectRatio(
                              aspectRatio: 1,
                              child: CircleAvatar(
                                backgroundImage:
                                    const AssetImage(AppAssets.profilePic),
                                child: Padding(
                                  padding: EdgeInsets.all(8.sp),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Align(
                                        alignment: Alignment.bottomRight,
                                        child: CircleAvatar(
                                          radius: 16.sp,
                                          backgroundColor: ColorsManager.white,
                                          child: Padding(
                                            padding: EdgeInsets.all(1.sp),
                                            child: CircleAvatar(
                                              radius: 16.sp,
                                              backgroundColor:
                                                  ColorsManager.lightGrey,
                                              child: Icon(
                                                size: 16.sp,
                                                Icons.camera_alt,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              verticalSpace(smallVerticalHeight),
              Text.rich(
                textAlign: TextAlign.center,
                TextSpan(
                  text: 'Dai Nguyen ',
                  style: TextStyle(
                      fontSize: headLine3FontSize, fontWeight: FontWeight.bold),
                  children: const [
                    TextSpan(
                        text: '(Nguyễn Chánh Đại)',
                        style: TextStyle(fontWeight: FontWeight.normal))
                  ],
                ),
              ),
              DefaultText(
                text: '"Nếu chúng ta thay đổi, mọi thứ sẽ thay đổi." Jim Rohn',
                fontSize: body2FontSize,
                textAlign: TextAlign.center,
              ),
              verticalSpace(smallVerticalHeight),
              Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: DefaultButton(
                      onPressed: () {},
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.h),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              Icons.camera_alt,
                              color: ColorsManager.white,
                            ),
                            horizontalSpace(10),
                            const DefaultText(
                              maxLines: 1,
                              text: AppString.addStory,
                              // fontSize: body3FontSize,
                              color: ColorsManager.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  horizontalSpace(10),
                  Expanded(
                    flex: 1,
                    child: DefaultButton(
                      color: ColorsManager.lightGrey,
                      onPressed: () {},
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.h),
                        child: const Icon(
                          Icons.settings,
                          color: ColorsManager.black,
                        ),
                      ),
                    ),
                  ),
                  horizontalSpace(extraSmallHorizontalWidth),
                  Expanded(
                    flex: 1,
                    child: DefaultButton(
                      color: ColorsManager.lightGrey,
                      onPressed: () {},
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.h),
                        child: const Icon(
                          Icons.more_horiz_outlined,
                          color: ColorsManager.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              verticalSpace(smallVerticalHeight),
              Divider(
                color: ColorsManager.grey,
                height: 1.h,
              ),
              verticalSpace(smallVerticalHeight),
              ...List.generate(
                6,
                (index) => MobileInfoWidget(
                  image: AppAssets.infoImages[index],
                  firstText: AppString.firstTextList[index],
                  secondText:
                      index != 5 ? AppString.secondTextList[index] : null,
                ),
              ),
              verticalSpace(smallVerticalHeight),
              Divider(
                color: ColorsManager.grey,
                height: 1.h,
              ),
              verticalSpace(smallVerticalHeight),
              Row(
                children: [
                  CircleAvatar(
                    radius: 24.sp,
                    backgroundImage: const AssetImage(AppAssets.profilePic),
                  ),
                  horizontalSpace(smallHorizontalWidth),
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                          hintText: AppString.whatsOnYourMind,
                          border: InputBorder.none),
                    ),
                  )
                ],
              ),
              verticalSpace(smallVerticalHeight),
              Divider(
                color: ColorsManager.grey,
                height: 1.h,
              ),
              verticalSpace(smallVerticalHeight),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => const PostItemBuilder(),
                separatorBuilder: (context, index) => Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.h),
                  child: Divider(
                    color: ColorsManager.grey,
                    height: 1.h,
                  ),
                ),
                itemCount: 5,
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: constraints.maxWidth > 372
          ? BottomNavigationBar(
              currentIndex: 4,
              unselectedItemColor: ColorsManager.grey,
              selectedItemColor: ColorsManager.mainColor,
              showSelectedLabels: false,
              type: BottomNavigationBarType.shifting,
              items: List.generate(
                5,
                (index) => BottomNavigationBarItem(
                  label: '',
                  icon: Icon(bottomNavIcons[index]),
                ),
              ),
            )
          : null,
    );
  }
}
