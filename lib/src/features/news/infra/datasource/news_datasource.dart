
import 'package:posts/src/features/news/domain/entity/news_model.dart';

abstract class GetNewsDatasource {
  Future<List<News>> getNews();
}