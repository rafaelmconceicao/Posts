import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:mobx/mobx.dart';
import 'package:posts/src/core/failures.dart';
import 'package:posts/src/core/features.dart';
import 'package:posts/src/features/posts/domain/entity/post_user_model.dart';

part 'posts_controller.g.dart';

class PostsController = _PostsController with _$PostsController;

abstract class _PostsController with Store {
  final GetPostsUsecase usecase;

  _PostsController(
    this.usecase,
  ) {
    refreshData();
  }

  @observable
  bool progress = false;

  @observable
  ObservableList<UserPost> postsList = ObservableList<UserPost>();

  @action
  Future<void> refreshData() async {
    progress = true;
    await Future.delayed(const Duration(milliseconds: 500));

    postsList = ObservableList<UserPost>();
    fetchPostsList();
    progress = false;
  }

  @action
  Future<void> fetchPostsList() async {
    progress = true;
    Either<Failure, List<UserPost>> posts = await usecase.getPosts();
    posts.fold((failure) => Left(failure), (result) async {
      for (var element in result) {
        postsList.add(element);
      }
      return Right(postsList.toSet().toList());
    });
    progress = false;
  }
}
