import 'package:dartz/dartz.dart';
import 'package:posts/src/core/failures.dart';
import 'package:posts/src/features/news/domain/entity/news_model.dart';
import 'package:posts/src/features/news/domain/repository/news_repository.dart';
import 'package:posts/src/features/news/presentation/usecase/news_usecase.dart';

class GetNewsUsecaseImpl implements GetNewsUsecase{
  GetNewsUsecaseImpl(this.repository);

  final GetNewsRepository repository;

  @override
  Future<Either<Failure, List<News>>> getNews() {
    return repository.getNews();
  }

}