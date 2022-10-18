import 'package:dartz/dartz.dart';
import 'package:posts/src/core/failures.dart';
import 'package:posts/src/features/news/domain/entity/news_model.dart';

abstract class GetNewsRepository {
  Future<Either<Failure, List<News>>> getNews();
}