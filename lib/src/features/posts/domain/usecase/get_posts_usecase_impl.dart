import 'package:dartz/dartz.dart';
import 'package:posts/src/core/failures.dart';
import 'package:posts/src/features/posts/domain/entity/post_user_model.dart';
import 'package:posts/src/features/posts/domain/repository/get_posts_repository.dart';
import 'package:posts/src/features/posts/presentation/usecase/get_posts_usecase.dart';

class GetPostsUsecaseImpl implements GetPostsUsecase{
  GetPostsUsecaseImpl(this.repository);

  final GetPostsRepository repository;

  @override
  Future<Either<Failure, List<UserPost>>> getPosts() {
    return repository.getPosts();
  }

}