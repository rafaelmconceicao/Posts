import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:posts/src/core/failures.dart';
import 'package:posts/src/features/posts/domain/entity/post_user_model.dart';
import 'package:posts/src/features/posts/presentation/usecase/user_post_usecase.dart';
import 'package:posts/src/utils/helper/textformfield_helper.dart';

part 'user_post_controller.g.dart';

class UserPostController = _UserPostController with _$UserPostController;

abstract class _UserPostController with Store {
  final UserPostUsecase usecase;

  _UserPostController(this.usecase,);

  final formKey = GlobalKey<FormState>();

  @observable
  bool progress = false;

  @observable
  InputStatus? status;

  @observable
  UserPost post = UserPost();

  @observable
  TextEditingController messageController = TextEditingController();


  @computed
  bool get isMessageValid => messageController.text.isNotEmpty;

  @action
  void isFormValid() {
    if (isMessageValid) {
      status = InputStatus.valid;
    } else if ( messageController.text.isEmpty) {
      status = InputStatus.empty;
    } else {
      status = InputStatus.invalid;
    }
  }

  @action
  toView(UserPost userPost){
    messageController.text = userPost.post!;
  }

  @action
  Future<void> sendMessage(String id) async {

    post.post =  messageController.text;
    post.date = DateTime.now().toString();
    post.user = id;

    if (formKey.currentState!.validate()) {
      _sending( post);
    }
  }

  Future<void> _sending(UserPost post) async {
    progress = true;
    Either<Failure, UserPost> message = await usecase.addPost(post, post.user!);

    message.fold((failure) => Left(failure), (result) {
      return Right(result);
    });
    progress = false;
  }

  @action
  Future<void> editMessage(UserPost userPost, String id) async {
    post.id = userPost.id;
    post.post =  messageController.text;
    post.date = userPost.date;
    post.user = id;

    if (formKey.currentState!.validate()) {
      _editing(post);
    }
  }

  Future<void> _editing( UserPost post) async {
    progress = true;
    Either<Failure, bool> message = await usecase.updatePost(post);

    message.fold((failure) => Left(failure), (result) {
      Right(result);
    });
    progress = false;
  }

  @action
  Future<bool> delete( String id) async {
    post.id = id;

    _delPost(post);
    return true;
  }

  Future<void> _delPost(UserPost post) async {
    progress = true;
    Either<Failure, UserPost> delete = await usecase.delPost(post);
    delete.fold(
        (l) => Left(l), (result) {
      return Right(result);
    });
    progress = false;
  }

}
