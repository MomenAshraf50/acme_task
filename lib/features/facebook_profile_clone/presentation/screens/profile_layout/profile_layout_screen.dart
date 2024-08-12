import 'package:acme_task/features/facebook_profile_clone/presentation/screens/mobile_profile/mobile_profile_screen.dart';
import 'package:acme_task/features/facebook_profile_clone/presentation/screens/web_profile/web_profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileLayoutScreen extends StatelessWidget {
  const ProfileLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        ScreenUtil.init(context);
        if (constraints.maxWidth < 600) {
          return MobileProfileScreen(constraints: constraints,);
        } else {
          return WebProfileScreen(constraints: constraints,);
        }
      },
    );
  }
}
