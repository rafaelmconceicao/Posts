
import 'package:dartz/dartz.dart';
import 'package:posts/src/core/failures.dart';
import 'package:posts/src/features/posts/domain/entity/post_user_model.dart';
import 'package:posts/src/features/posts/domain/repository/get_posts_repository.dart';
import 'package:posts/src/features/posts/infra/datasource/get_posts_datasource.dart';

class GetPostsRepositoryImpl implements GetPostsRepository{
  GetPostsRepositoryImpl(this.datasource);

  final GetPostsDatasource datasource;

  @override
  Future<Either<Failure, List<UserPost>>> getPosts() async {
    try {
      return Right(await datasource.getPosts());
    } on Failure catch (e) {
    return Left(e);
    } catch (_) {
    return const Left(AppFailure());
    }
  }

}