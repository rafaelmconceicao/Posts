import 'package:posts/src/core/failures.dart';
import 'package:posts/src/features/news/domain/entity/news_model.dart';
import 'package:dartz/dartz.dart';

abstract class GetNewsUsecase {
  Future<Either<Failure, List<News>>> getNews();
}