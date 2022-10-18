import 'package:dartz/dartz.dart';
import 'package:posts/src/core/failures.dart';
import 'package:posts/src/features/posts/domain/entity/post_user_model.dart';
import 'package:posts/src/features/posts/domain/repository/user_post_repository.dart';
import 'package:posts/src/features/posts/presentation/usecase/user_post_usecase.dart';

class UserPostUsecaseImpl implements UserPostUsecase{
  UserPostUsecaseImpl(this.repository);

  final UserPostRepository repository;

  @override
  Future<Either<Failure, UserPost>> addPost(UserPost post, String userId) {
   return repository.addPost(post, userId);
  }

  @override
  Future<Either<Failure, UserPost>> delPost(UserPost post) {
    return repository.delPost(post);
  }

  @override
  Future<Either<Failure, bool>> updatePost(UserPost post) {
    return repository.updatePost(post);
  }

}