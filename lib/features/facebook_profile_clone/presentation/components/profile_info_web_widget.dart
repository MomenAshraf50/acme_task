import 'package:acme_task/core/util/resources/app_assets.dart';
import 'package:acme_task/core/util/resources/app_string.dart';
import 'package:acme_task/core/util/resources/colors_manager.dart';
import 'package:acme_task/core/util/resources/constants.dart';
import 'package:acme_task/core/util/widgets/default_text.dart';
import 'package:acme_task/core/util/widgets/web_info_widget.dart';
import 'package:flutter/material.dart';

class ProfileInfoWebWidget extends StatelessWidget {
  const ProfileInfoWebWidget({super.key, required this.constraints});
  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: constraints.maxWidth < 1200 ? 900 : 350,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: ColorsManager.white,
        borderRadius: borderRadius(2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                AppAssets.introImage,
                width: 30,
                height: 30,
              ),
              horizontalSpace(10),
              const DefaultText(
                text: AppString.intro,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
          verticalSpace(10),
          const DefaultText(
            text:
            '"Nếu chúng ta thay đổi, mọi thứ sẽ thay đổi." Jim Rohn',
            textAlign: TextAlign.center,
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Divider(
              height: 1,
              color: ColorsManager.lightGrey,
            ),
          ),
          ...List.generate(
            6,
                (index) => WebInfoWidget(
              image: AppAssets.infoImages[index],
              firstText: AppString.firstTextList[index],
              secondText: index != 5
                  ? AppString.secondTextList[index]
                  : null,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Divider(
              height: 1,
              color: ColorsManager.lightGrey,
            ),
          ),
          Column(
            children: [
              Image.asset(
                AppAssets.starImage,
                height: 30,
                width: 30,
              ),
              verticalSpace(10),
              const DefaultText(
                text:
                'Showcase what\'s important to you by adding photos, Pages, groups and more to your featured section on your public profile.',
                textAlign: TextAlign.center,
              ),
              TextButton(
                onPressed: () {},
                child: const DefaultText(
                  text: AppString.addToFeatured,
                  color: ColorsManager.webMainColor,
                ),
              ),
              verticalSpace(10),
              Row(
                mainAxisAlignment:
                MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: ColorsManager.grey,
                          width: 1),
                      borderRadius: borderRadius(2),
                    ),
                    child: const DefaultText(
                        text: '🌐 tungtung.vn'),
                  ),
                  horizontalSpace(5),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: ColorsManager.grey,
                          width: 1),
                      borderRadius: borderRadius(2),
                    ),
                    child: const DefaultText(
                        text: '🌐 penphy.com'),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
