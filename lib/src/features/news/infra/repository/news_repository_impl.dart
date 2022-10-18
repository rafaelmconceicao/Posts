import 'package:dartz/dartz.dart';
import 'package:posts/src/core/failures.dart';
import 'package:posts/src/features/news/domain/entity/news_model.dart';
import 'package:posts/src/features/news/domain/repository/news_repository.dart';
import 'package:posts/src/features/news/infra/datasource/news_datasource.dart';

class GetNewsRepositoryImpl implements GetNewsRepository{
  GetNewsRepositoryImpl(this.datasource);

  final GetNewsDatasource datasource;

  @override
  Future<Either<Failure, List<News>>> getNews() async {
    try {
      return Right(await datasource.getNews());
    } on Failure catch (e) {
    return Left(e);
    } catch (_) {
    return const Left(AppFailure());
    }
  }

}