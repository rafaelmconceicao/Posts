import 'package:dio/dio.dart';
import 'package:posts/src/core/failures.dart';
import 'package:posts/src/core/util/api_client/api_exception.dart';
import 'package:posts/src/features/news/domain/entity/news_model.dart';
import 'package:posts/src/features/news/infra/datasource/news_datasource.dart';

class GetNewsDatasourceImpl implements GetNewsDatasource{
  var dio = Dio();

  @override
  Future<List<News>> getNews() async {
    try {
      return await dio.get(
        'https://gb-mobile-app-teste.s3.amazonaws.com/data.json',
      ).then((response) async {
        final body = response.data['news'];
        var news = body.map<News>((news) => News.fromJson(news)).toList();
        return news;
      });
    }  on APIException catch(_) {
      throw kServerFailure;
    } catch (_) {
      throw kAppFailure;
    }
  }

}