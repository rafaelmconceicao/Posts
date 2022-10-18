import 'package:dartz/dartz.dart';
import 'package:mobx/mobx.dart';
import 'package:posts/src/core/failures.dart';
import 'package:posts/src/features/news/domain/entity/news_model.dart';
import 'package:posts/src/features/news/presentation/usecase/news_usecase.dart';

part 'news_controller.g.dart';

class NewsController = _NewsController with _$NewsController;

abstract class _NewsController with Store {
  GetNewsUsecase usecase;

  _NewsController(this.usecase){
    fetchNewsList();
  }

  @observable
  bool progress = false;

  @observable
  ObservableList<News> newsList = ObservableList<News>();

  @action
  Future<void> fetchNewsList() async {
    progress = true;
    Either<Failure, List<News>> news = await usecase.getNews();
    news.fold(
            (failure) => Left(failure),
            (result) async {
          for (var element in result){
            newsList.add(element);
          }
          return Right(newsList.toSet().toList());
        });
    progress = false;
  }

}