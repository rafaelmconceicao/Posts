import 'dart:convert';

import 'package:posts/src/core/failures.dart';
import 'package:posts/src/core/util/api_client/api_client.dart';
import 'package:posts/src/core/util/api_client/api_exception.dart';
import 'package:posts/src/features/posts/domain/entity/post_user_model.dart';
import 'package:posts/src/features/posts/infra/datasource/get_posts_datasource.dart';

class GetPostsDatasourceImpl implements GetPostsDatasource {
  @override
  Future<List<UserPost>> getPosts() async {
    try {
      return await APIClient.get(
          '/post/get.php',
          queryParameters: {
            "empresa_id": "demonstracao1",
          },
      ).then((response) async {
        final body = json.decode(response.data) ;
        var data = body['data'];
        var posts = data.map<UserPost>((post) => UserPost.fromJson(post)).toList();
        return posts;
      });

    } on APIException catch(_) {
      throw kServerFailure;
    } catch (_) {
      throw kAppFailure;
    }
  }


}
