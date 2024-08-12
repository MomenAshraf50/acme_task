import 'package:acme_task/core/util/resources/app_string.dart';
import 'package:acme_task/core/util/resources/colors_manager.dart';
import 'package:acme_task/core/util/resources/constants.dart';
import 'package:acme_task/core/util/widgets/default_text.dart';
import 'package:acme_task/features/facebook_profile_clone/presentation/components/chat_item_builder.dart';
import 'package:flutter/material.dart';

class ChatsMenu extends StatelessWidget {
  const ChatsMenu({super.key,});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              decoration: const BoxDecoration(
                color: ColorsManager.lightGrey,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, -1),
                  )
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const DefaultText(
                    text: AppString.contacts,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                  verticalSpace(10),
                  ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 10,
                      itemBuilder: (context, index) =>
                      const ChatItemBuilder()),
                  verticalSpace(10),
                  const DefaultText(
                    text: AppString.groupConversations,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                  verticalSpace(10),
                  ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 3,
                      itemBuilder: (context, index) =>
                      const ChatItemBuilder()),
                  verticalSpace(10),
                  const DefaultText(
                    text: AppString.moreContacts,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                  ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 10,
                      itemBuilder: (context, index) =>
                      const ChatItemBuilder()),
                  verticalSpace(50),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              color: ColorsManager.white,
              child: Row(
                children: [
                  const Icon(Icons.search,color: ColorsManager.grey,),
                  horizontalSpace(10),
                  Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: AppString.search),
                      )),
                  const Icon(Icons.settings,color: ColorsManager.grey,),
                  horizontalSpace(5),
                  const Icon(Icons.post_add,color: ColorsManager.grey,),
                  horizontalSpace(5),
                  const Icon(Icons.group  ,color: ColorsManager.grey,),
                  horizontalSpace(5),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
