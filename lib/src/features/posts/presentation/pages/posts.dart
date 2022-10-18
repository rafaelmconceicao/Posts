import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:posts/generated/l10n.dart';
import 'package:posts/src/core/features.dart';
import 'package:posts/src/features/posts/presentation/pages/new_post.dart';
import 'package:posts/src/presentation/mobx/base_page.dart';
import 'package:posts/src/utils/authentication_storage/authentication_storage.dart';
import 'package:posts/src/utils/helper/colors_helper.dart';
import 'package:intl/intl.dart';
import 'package:posts/src/utils/helper/text_styles.dart';

class PostsPage extends StatefulWidget {
  const PostsPage({Key? key}) : super(key: key);

  @override
  State<PostsPage> createState() => _PostsPageState();
}

class _PostsPageState extends BaseState<PostsPage, PostsController> {
  var controllerUserPosts = GetIt.instance.get<UserPostController>();

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      return controller!.progress == true
          ? const Center(child: CircularProgressIndicator())
          : Padding(
              padding: const EdgeInsets.only(bottom: 90),
              child: Column(
                children: controller!.postsList
                    .map(
                      (item) => Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        width: MediaQuery.of(context).size.width,
                        color: ThemeApp.light,
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        item.user!,
                                        style: BotTextStyles.nameUserPostCard,
                                      ),
                                      Text(
                                        ((() {
                                          DateTime date =
                                              DateTime.parse(item.date!);

                                          DateFormat dateFormat =
                                              DateFormat("dd/MM/yyyy");

                                          var dt = dateFormat.format(date);

                                          return dt;
                                        })()),
                                        style: BotTextStyles.datePostCard,
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                item.user ==
                                        AuthenticationStorage
                                            .authenticatedUser!.name
                                    ? PopupMenuButton(
                                        icon: const Icon(Icons.more_horiz),
                                        onSelected: (result) {
                                          if (result == 1) {
                                            showDialog(
                                                context: context,
                                                builder: (_) => NewPost(
                                                      post: item,
                                                    ));
                                          }
                                        },
                                        itemBuilder: (_) => [
                                          PopupMenuItem(
                                            value: 1,
                                            child: Text(S
                                                .of(context)
                                                .editMessageTitleButton),
                                          ),
                                          PopupMenuItem(
                                            onTap: () async {
                                              await controllerUserPosts
                                                  .delete(item.id!);
                                              controller!.refreshData();
                                            },
                                            value: 2,
                                            child: Text(S
                                                .of(context)
                                                .deleteMessageTitleButton),
                                          )
                                        ],
                                      )
                                    : SizedBox()
                              ],
                            ),
                            const Divider(height: 30),
                            Text(
                              item.post!,
                              style: BotTextStyles.textPostCard,
                            ),
                          ],
                        ),
                      ),
                    )
                    .toList(),
              ),
            );
    });
  }
}
