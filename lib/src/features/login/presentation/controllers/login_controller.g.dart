// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LoginController on _LoginController, Store {
  Computed<bool>? _$isEmailValidComputed;

  @override
  bool get isEmailValid =>
      (_$isEmailValidComputed ??= Computed<bool>(() => super.isEmailValid,
              name: '_LoginController.isEmailValid'))
          .value;
  Computed<bool>? _$isPasswordValidComputed;

  @override
  bool get isPasswordValid =>
      (_$isPasswordValidComputed ??= Computed<bool>(() => super.isPasswordValid,
              name: '_LoginController.isPasswordValid'))
          .value;
  Computed<bool>? _$isFormValidComputed;

  @override
  bool get isFormValid =>
      (_$isFormValidComputed ??= Computed<bool>(() => super.isFormValid,
              name: '_LoginController.isFormValid'))
          .value;

  late final _$formKeyLoginAtom =
      Atom(name: '_LoginController.formKeyLogin', context: context);

  @override
  GlobalKey<FormState> get formKeyLogin {
    _$formKeyLoginAtom.reportRead();
    return super.formKeyLogin;
  }

  @override
  set formKeyLogin(GlobalKey<FormState> value) {
    _$formKeyLoginAtom.reportWrite(value, super.formKeyLogin, () {
      super.formKeyLogin = value;
    });
  }

  late final _$userAtom = Atom(name: '_LoginController.user', context: context);

  @override
  UserApp? get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(UserApp? value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  late final _$progressAtom =
      Atom(name: '_LoginController.progress', context: context);

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
      Atom(name: '_LoginController.status', context: context);

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

  late final _$_emailAtom =
      Atom(name: '_LoginController._email', context: context);

  @override
  String get _email {
    _$_emailAtom.reportRead();
    return super._email;
  }

  @override
  set _email(String value) {
    _$_emailAtom.reportWrite(value, super._email, () {
      super._email = value;
    });
  }

  late final _$_passwordAtom =
      Atom(name: '_LoginController._password', context: context);

  @override
  String get _password {
    _$_passwordAtom.reportRead();
    return super._password;
  }

  @override
  set _password(String value) {
    _$_passwordAtom.reportWrite(value, super._password, () {
      super._password = value;
    });
  }

  late final _$passwordVisibleAtom =
      Atom(name: '_LoginController.passwordVisible', context: context);

  @override
  bool get passwordVisible {
    _$passwordVisibleAtom.reportRead();
    return super.passwordVisible;
  }

  @override
  set passwordVisible(bool value) {
    _$passwordVisibleAtom.reportWrite(value, super.passwordVisible, () {
      super.passwordVisible = value;
    });
  }

  late final _$_LoginControllerActionController =
      ActionController(name: '_LoginController', context: context);

  @override
  void setEmail(String value) {
    final _$actionInfo = _$_LoginControllerActionController.startAction(
        name: '_LoginController.setEmail');
    try {
      return super.setEmail(value);
    } finally {
      _$_LoginControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPassword(String value) {
    final _$actionInfo = _$_LoginControllerActionController.startAction(
        name: '_LoginController.setPassword');
    try {
      return super.setPassword(value);
    } finally {
      _$_LoginControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toggleVisible() {
    final _$actionInfo = _$_LoginControllerActionController.startAction(
        name: '_LoginController.toggleVisible');
    try {
      return super.toggleVisible();
    } finally {
      _$_LoginControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void login(BuildContext context) {
    final _$actionInfo = _$_LoginControllerActionController.startAction(
        name: '_LoginController.login');
    try {
      return super.login(context);
    } finally {
      _$_LoginControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
formKeyLogin: ${formKeyLogin},
user: ${user},
progress: ${progress},
status: ${status},
passwordVisible: ${passwordVisible},
isEmailValid: ${isEmailValid},
isPasswordValid: ${isPasswordValid},
isFormValid: ${isFormValid}
    ''';
  }
}
