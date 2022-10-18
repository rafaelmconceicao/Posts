import 'package:posts/src/features/posts/domain/entity/post_user_model.dart';

abstract class GetPostsDatasource{
  Future<List<UserPost>> getPosts();
}