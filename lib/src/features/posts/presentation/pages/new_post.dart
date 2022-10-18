import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:posts/generated/l10n.dart';
import 'package:posts/src/features/posts/domain/entity/post_user_model.dart';
import 'package:posts/src/features/posts/presentation/controllers/posts_controller.dart';
import 'package:posts/src/features/posts/presentation/controllers/user_post_controller.dart';
import 'package:posts/src/presentation/mobx/base_page.dart';
import 'package:posts/src/utils/authentication_storage/authentication_storage.dart';
import 'package:posts/src/utils/helper/textformfield_helper.dart';
import 'package:posts/src/utils/ui/widgets/enabled_button.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class NewPost extends StatefulWidget {
  const NewPost({Key? key, this.post, this.userId}) : super(key: key);
  final UserPost? post;
  final String? userId;

  @override
  State<NewPost> createState() => _NewPostState();
}

class _NewPostState extends BaseState<NewPost, UserPostController> {
  var postsController = GetIt.instance.get<PostsController>();

  @override
  void initState() {
    if (widget.post != null) {
      controller!.toView(widget.post!);
    } else {
      controller!.messageController.clear();
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Observer(builder: (context) {
          return Form(
            key: controller!.formKey,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Icon(Icons.close),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Observer(builder: (context) {
                    return BotTextFormField(
                      textEditingController: controller!.messageController,
                      status: controller!.status,
                      maxLines: 6,
                      maxLenght: 280,
                    );
                  }),
                  const SizedBox(
                    height: 30,
                  ),
                  EnabledButton(
                    onPressed: () {
                      controller!.isFormValid();
                      if (controller!.status == InputStatus.valid) {
                        widget.post != null
                            ? controller!.editMessage(widget.post!, AuthenticationStorage.authenticatedUser!.id!).whenComplete(() {
                                postsController.refreshData();
                                Navigator.pop(context);
                              })
                            : controller!.sendMessage( AuthenticationStorage.authenticatedUser!.id!).whenComplete(() {
                              postsController.refreshData();
                                Navigator.pop(context);
                              });
                      }
                    },
                    title: widget.post != null
                        ? S.of(context).editMessageTitleButton
                        : S.of(context).sendMessageTitleButton,
                  )
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
