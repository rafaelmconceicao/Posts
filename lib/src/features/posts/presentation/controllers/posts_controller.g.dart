// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'posts_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PostsController on _PostsController, Store {
  late final _$progressAtom =
      Atom(name: '_PostsController.progress', context: context);

  @override
  bool get progress {
    _$progressAtom.reportRead();
    return super.progress;
  }

  @override
  set progress(bool value) {
    _$progressAtom.reportWrite(value, super.progress, () {
      super.progress = value;
    });
  }

  late final _$postsListAtom =
      Atom(name: '_PostsController.postsList', context: context);

  @override
  ObservableList<UserPost> get postsList {
    _$postsListAtom.reportRead();
    return super.postsList;
  }

  @override
  set postsList(ObservableList<UserPost> value) {
    _$postsListAtom.reportWrite(value, super.postsList, () {
      super.postsList = value;
    });
  }

  late final _$refreshDataAsyncAction =
      AsyncAction('_PostsController.refreshData', context: context);

  @override
  Future<void> refreshData() {
    return _$refreshDataAsyncAction.run(() => super.refreshData());
  }

  late final _$fetchPostsListAsyncAction =
      AsyncAction('_PostsController.fetchPostsList', context: context);

  @override
  Future<void> fetchPostsList() {
    return _$fetchPostsListAsyncAction.run(() => super.fetchPostsList());
  }

  @override
  String toString() {
    return '''
progress: ${progress},
postsList: ${postsList}
    ''';
  }
}
