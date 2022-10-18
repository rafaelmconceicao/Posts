// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:posts/src/core/features.dart';
import 'package:posts/src/features/posts/domain/entity/post_user_model.dart';

final getIt = GetIt.instance;

void setupDependencyInjection() {
  GetIt.instance.registerSingleton<GetPostsDatasource>(MockAPI());
  GetIt.instance.registerSingleton<GetPostsRepository>(GetPostsRepositoryImpl(getIt()));
  GetIt.instance.registerSingleton<GetPostsUsecase>(GetPostsUsecaseImpl(getIt()));
  GetIt.instance.registerSingleton<PostsController>(PostsController(getIt()));
}

class MockAPI extends GetPostsDatasource {
  @override
  Future<List<UserPost>> getPosts() {
    return Future.value([
      UserPost(id: '1', user: 'test', post: 'Lorem Ipsum', date: '10/10/2022',
          picture: 'imageUrl'),
      UserPost(id: '2', user: 'test 2', post: 'Test  2', date: '17/10/2022',
          picture: null),
    ]);
  }
}

void main() {
  setupDependencyInjection();
  final postsController = getIt.get<PostsController>();

  group('Given Post List Page Loads', () {
    test('Page should load a list of posts', () async {

      await postsController.fetchPostsList();

      expect(postsController.postsList.length, 2);

      expect(postsController.postsList[0].user, 'test');
      expect(postsController.postsList[0].date, '10/10/2022');
      expect(postsController.postsList[1].id, '2');
      expect(postsController.postsList[1].picture, isNull);
      expect(postsController.postsList.name, isNotNull);
    });
  });

}
