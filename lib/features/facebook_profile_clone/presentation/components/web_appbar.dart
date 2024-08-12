import 'package:acme_task/core/util/resources/app_assets.dart';
import 'package:acme_task/core/util/resources/app_string.dart';
import 'package:acme_task/core/util/resources/colors_manager.dart';
import 'package:acme_task/core/util/resources/constants.dart';
import 'package:acme_task/core/util/widgets/default_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap5/flutter_bootstrap5.dart';

AppBar webAppBar() {
  TextEditingController searchController = TextEditingController();
  searchController.text = 'Dai Nguyen';
  return AppBar(
    backgroundColor: ColorsManager.webMainColor,
    title: FB5Container.lg(
      child: FB5Row(
        classNames:
            'align-items-center p-5 justify-content-between px-xs-3 px-lg-0',
        children: [
          FB5Col(
            classNames: 'col-5',
            child: Row(
              children: [
                Image.asset(
                  AppAssets.facebookLogo,
                  width: 40,
                  height: 40,
                ),
                Expanded(
                  child: Container(
                    height: 30,
                    decoration: BoxDecoration(
                      color: ColorsManager.white,
                      borderRadius: borderRadius(2),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              controller: searchController,
                              decoration: const InputDecoration(
                                contentPadding: EdgeInsets.only(bottom: 20),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          const Icon(
                            Icons.search,
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          FB5Col(
            classNames: 'col-1',
            child: horizontalSpace(smallHorizontalWidth),
          ),
          FB5Col(
            classNames: 'col-6',
            child: FB5Container.sm(
              child: Row(
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(AppAssets.profilePic),
                      ),
                    ),
                  ),
                  horizontalSpace(10),
                  const DefaultText(
                    text: 'Dai',
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: ColorsManager.white,
                  ),
                  horizontalSpace(10),
                  Container(
                    height: 30,
                    width: 1,
                    color: ColorsManager.black.withOpacity(0.3),
                  ),
                  horizontalSpace(10),
                  const DefaultText(
                    text: AppString.home,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: ColorsManager.white,
                  ),
                  horizontalSpace(10),
                  Container(
                    height: 30,
                    width: 1,
                    color: ColorsManager.black.withOpacity(0.3),
                  ),
                  horizontalSpace(10),
                  const DefaultText(
                    text: AppString.create,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: ColorsManager.white,
                  ),
                  FB5Col(
                    classNames: 'd-none d-lg-block',
                    child: Row(
                      children: [
                        horizontalSpace(10),
                        Container(
                          height: 30,
                          width: 1,
                          color: ColorsManager.black.withOpacity(0.3),
                        ),
                        horizontalSpace(5),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.group),
                        ),
                        horizontalSpace(5),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.message),
                        ),
                        horizontalSpace(5),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.notifications),
                        ),
                        horizontalSpace(5),
                        Container(
                          height: 30,
                          width: 1,
                          color: ColorsManager.black.withOpacity(0.3),
                        ),
                        horizontalSpace(5),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.info),
                        ),
                        horizontalSpace(5),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_drop_down_sharp),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
