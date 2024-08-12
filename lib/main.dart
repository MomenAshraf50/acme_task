import 'package:acme_task/core/util/resources/app_string.dart';
import 'package:acme_task/core/util/resources/colors_manager.dart';
import 'package:acme_task/features/facebook_profile_clone/presentation/screens/profile_layout/profile_layout_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap5/flutter_bootstrap5.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterBootstrap5(
      builder:(ctx) => MaterialApp(
        title: AppString.appName,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: ColorsManager.mainColor),
          useMaterial3: true,
        ),
        builder: (context, child) {
          return child!;
        },
        home: const ProfileLayoutScreen(),
      ),
    );
  }
}

