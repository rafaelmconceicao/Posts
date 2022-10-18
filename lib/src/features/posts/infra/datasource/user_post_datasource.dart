import 'package:posts/src/features/posts/domain/entity/post_user_model.dart';

abstract class UserPostDatasource{
  Future<UserPost> addPost(UserPost post, String userId);
  Future<bool> updatePost(UserPost post);
  Future<UserPost> delPost(UserPost post);
}