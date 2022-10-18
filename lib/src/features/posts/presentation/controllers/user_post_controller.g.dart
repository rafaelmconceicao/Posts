// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_post_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$UserPostController on _UserPostController, Store {
  Computed<bool>? _$isMessageValidComputed;

  @override
  bool get isMessageValid =>
      (_$isMessageValidComputed ??= Computed<bool>(() => super.isMessageValid,
              name: '_UserPostController.isMessageValid'))
          .value;

  late final _$progressAtom =
      Atom(name: '_UserPostController.progress', context: context);

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

  late final _$statusAtom =
      Atom(name: '_UserPostController.status', context: context);

  @override
  InputStatus? get status {
    _$statusAtom.reportRead();
    return super.status;
  }

  @override
  set status(InputStatus? value) {
    _$statusAtom.reportWrite(value, super.status, () {
      super.status = value;
    });
  }

  late final _$postAtom =
      Atom(name: '_UserPostController.post', context: context);

  @override
  UserPost get post {
    _$postAtom.reportRead();
    return super.post;
  }

  @override
  set post(UserPost value) {
    _$postAtom.reportWrite(value, super.post, () {
      super.post = value;
    });
  }

  late final _$messageControllerAtom =
      Atom(name: '_UserPostController.messageController', context: context);

  @override
  TextEditingController get messageController {
    _$messageControllerAtom.reportRead();
    return super.messageController;
  }

  @override
  set messageController(TextEditingController value) {
    _$messageControllerAtom.reportWrite(value, super.messageController, () {
      super.messageController = value;
    });
  }

  late final _$sendMessageAsyncAction =
      AsyncAction('_UserPostController.sendMessage', context: context);

  @override
  Future<void> sendMessage(String id) {
    return _$sendMessageAsyncAction.run(() => super.sendMessage(id));
  }

  late final _$editMessageAsyncAction =
      AsyncAction('_UserPostController.editMessage', context: context);

  @override
  Future<void> editMessage(UserPost userPost, String id) {
    return _$editMessageAsyncAction.run(() => super.editMessage(userPost, id));
  }

  late final _$deleteAsyncAction =
      AsyncAction('_UserPostController.delete', context: context);

  @override
  Future<bool> delete(String id) {
    return _$deleteAsyncAction.run(() => super.delete(id));
  }

  late final _$_UserPostControllerActionController =
      ActionController(name: '_UserPostController', context: context);

  @override
  void isFormValid() {
    final _$actionInfo = _$_UserPostControllerActionController.startAction(
        name: '_UserPostController.isFormValid');
    try {
      return super.isFormValid();
    } finally {
      _$_UserPostControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic toView(UserPost userPost) {
    final _$actionInfo = _$_UserPostControllerActionController.startAction(
        name: '_UserPostController.toView');
    try {
      return super.toView(userPost);
    } finally {
      _$_UserPostControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
progress: ${progress},
status: ${status},
post: ${post},
messageController: ${messageController},
isMessageValid: ${isMessageValid}
    ''';
  }
}
