
import 'package:dartz/dartz.dart';
import 'package:posts/src/core/failures.dart';
import 'package:posts/src/features/posts/domain/entity/post_user_model.dart';

abstract class UserPostRepository {
  Future<Either<Failure, UserPost>> addPost(UserPost post, String userId);
  Future<Either<Failure, bool>> updatePost(UserPost post);
  Future<Either<Failure, UserPost>> delPost(UserPost post);
}