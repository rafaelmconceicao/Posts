// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$NewsController on _NewsController, Store {
  late final _$progressAtom =
      Atom(name: '_NewsController.progress', context: context);

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

  late final _$newsListAtom =
      Atom(name: '_NewsController.newsList', context: context);

  @override
  ObservableList<News> get newsList {
    _$newsListAtom.reportRead();
    return super.newsList;
  }

  @override
  set newsList(ObservableList<News> value) {
    _$newsListAtom.reportWrite(value, super.newsList, () {
      super.newsList = value;
    });
  }

  late final _$fetchNewsListAsyncAction =
      AsyncAction('_NewsController.fetchNewsList', context: context);

  @override
  Future<void> fetchNewsList() {
    return _$fetchNewsListAsyncAction.run(() => super.fetchNewsList());
  }

  @override
  String toString() {
    return '''
progress: ${progress},
newsList: ${newsList}
    ''';
  }
}
