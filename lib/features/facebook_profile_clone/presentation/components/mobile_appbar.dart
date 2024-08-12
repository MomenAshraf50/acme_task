import 'package:acme_task/core/util/resources/colors_manager.dart';
import 'package:acme_task/core/util/resources/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar mobileAppBar() {
  TextEditingController searchController = TextEditingController();
  searchController.text = 'Dai Nguyen';
  return AppBar(
    elevation: 1.sp,
    shadowColor: ColorsManager.lightGrey,
    backgroundColor: ColorsManager.white,
    surfaceTintColor: ColorsManager.white,
    leading: IconButton(
      onPressed: () {},
      icon: Icon(
        Icons.arrow_back_ios_new,
        size: 18.sp,
      ),
    ),
    titleSpacing: 0,
    title: Container(
      decoration: BoxDecoration(
        borderRadius: borderRadius(24.sp),
        color: ColorsManager.lightGrey,
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Icon(
              size: 18.sp,
              Icons.search,
              color: ColorsManager.grey,
            ),
          ),
          Expanded(
            child: TextFormField(
              controller: searchController,
              style: TextStyle(fontSize: body2FontSize),
              decoration: const InputDecoration(
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    ),
    actions: [
      IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.favorite,
            size: 24.sp,
          ))
    ],
  );
}
