import 'dart:convert';

import 'package:posts/src/core/failures.dart';
import 'package:posts/src/core/util/api_client/api_client.dart';
import 'package:posts/src/features/posts/domain/entity/post_user_model.dart';
import 'package:posts/src/features/posts/infra/datasource/user_post_datasource.dart';

class UserPostDatasourceImpl implements UserPostDatasource {

  @override
  Future<UserPost> addPost(UserPost post, String userId) async {
    try {
      return await APIClient.post(
          '/post/post.php',
          queryParameters: {
            "empresa_id": "demonstracao1",
            "user": userId,
          },
          data: jsonEncode(post.toJson())
      ).then((response) async {
        final body = json.decode(response.data)['data'];
        return UserPost.fromJson(body);
      });

    } catch (_) {
      throw kAppFailure;
    }
  }

  @override
  Future<UserPost> delPost(UserPost post) async{
    try {
      return await APIClient.post(
          '/post/delete.php',
          queryParameters: {
            "empresa_id": "demonstracao1",
          },
          data: jsonEncode(post.toJson())
      ).then((response) async {
        final body = json.decode(response.data)['data'];
        return UserPost.fromJson(body);
      });

    } catch (_) {
      throw kAppFailure;
    }
  }

  @override
  Future<bool> updatePost(UserPost post) async {
    try {
      return await APIClient.post(
          '/post/put.php',
          queryParameters: {
            "empresa_id": "demonstracao1",
          },
          data: jsonEncode(post.toJson())
      ).then((response) async {
        final body = json.decode(response.data)['data'];
        return body;
      });
    } catch (_) {
      throw kAppFailure;
    }
  }
}
