import 'package:dartz/dartz.dart';
import 'package:posts/src/core/failures.dart';
import 'package:posts/src/features/posts/domain/entity/post_user_model.dart';
import 'package:posts/src/features/posts/domain/repository/user_post_repository.dart';
import 'package:posts/src/features/posts/infra/datasource/user_post_datasource.dart';

class UserPostRepositoryImpl implements UserPostRepository{
  UserPostRepositoryImpl(this.datasource);

  final UserPostDatasource datasource;

  @override
  Future<Either<Failure, UserPost>> addPost(UserPost post, String userId) async {
    try {
      return Right(await datasource.addPost(post, userId));
    } on Failure catch (e) {
    return Left(e);
    } catch (_) {
    return const Left(AppFailure());
    }
  }

  @override
  Future<Either<Failure, UserPost>> delPost(UserPost post) async {
    try {
      return Right(await datasource.delPost(post));
    } on Failure catch (e) {
    return Left(e);
    } catch (_) {
    return const Left(AppFailure());
    }
  }

  @override
  Future<Either<Failure, bool>> updatePost(UserPost post) async {
    try {
      return Right(await datasource.updatePost(post));
    } on Failure catch (e) {
    return Left(e);
    } catch (_) {
    return const Left(AppFailure());
    }
  }

}