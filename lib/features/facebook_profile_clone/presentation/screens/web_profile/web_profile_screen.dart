import 'package:acme_task/core/util/resources/colors_manager.dart';
import 'package:acme_task/features/facebook_profile_clone/presentation/components/chats_menu.dart';
import 'package:acme_task/features/facebook_profile_clone/presentation/components/posts_info_widget.dart';
import 'package:acme_task/features/facebook_profile_clone/presentation/components/web_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap5/flutter_bootstrap5.dart';

class WebProfileScreen extends StatelessWidget {
  const WebProfileScreen({super.key, required this.constraints});
  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.lightGrey,
      appBar: webAppBar(),
      body: Row(
        children: [
          Expanded(
            flex: 9,
            child: SingleChildScrollView(
              child: PostsInfoWidget(constraints: constraints,),
            ),
          ),
          if (constraints.maxWidth > 1000) ...[
            const ChatsMenu(),
          ],
        ],
      ),
    );
  }
}
