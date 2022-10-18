
import 'package:dartz/dartz.dart';
import 'package:posts/src/core/failures.dart';
import 'package:posts/src/features/posts/domain/entity/post_user_model.dart';

abstract class GetPostsUsecase {
  Future<Either<Failure, List<UserPost>>> getPosts();
}