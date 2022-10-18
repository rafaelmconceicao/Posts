import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:posts/generated/l10n.dart';
import 'package:posts/src/features/home/presentation/components/exit_dialog.dart';
import 'package:posts/src/features/posts/presentation/controllers/posts_controller.dart';
import 'package:posts/src/features/posts/presentation/pages/posts.dart';
import 'package:posts/src/utils/authentication_storage/authentication_storage.dart';
import 'package:posts/src/utils/helper/colors_helper.dart';
import 'package:posts/src/utils/helper/text_styles.dart';
import 'package:posts/src/utils/ui/components/clip_path_class.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var controller = GetIt.instance.get<PostsController>();

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: controller.refreshData,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipPath(
              clipper: ClipPathClass(),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 120,
                color: ThemeApp.primary,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(30, 60, 20, 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Observer(builder: (context) {
                        return Text(
                          S.of(context).homePageWelcomeUser(AuthenticationStorage
                                  .authenticatedUser!
                                  .name!.split(" ")
                              .elementAt(0)
                              ),
                          style: BotTextStyles.nameUser,
                        );
                      }),
                      GestureDetector(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (builder) => const ExitDialog());
                          },
                          child: const Icon(
                            Icons.exit_to_app,
                            color: ThemeApp.light,
                          ))
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const PostsPage(),
          ],
        ),
      ),
    );
  }
}
