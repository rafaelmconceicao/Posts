// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$RegisterController on _RegisterController, Store {
  Computed<bool>? _$isEmailValidComputed;

  @override
  bool get isEmailValid =>
      (_$isEmailValidComputed ??= Computed<bool>(() => super.isEmailValid,
              name: '_RegisterController.isEmailValid'))
          .value;
  Computed<bool>? _$isPasswordValidComputed;

  @override
  bool get isPasswordValid =>
      (_$isPasswordValidComputed ??= Computed<bool>(() => super.isPasswordValid,
              name: '_RegisterController.isPasswordValid'))
          .value;
  Computed<bool>? _$isNameValidComputed;

  @override
  bool get isNameValid =>
      (_$isNameValidComputed ??= Computed<bool>(() => super.isNameValid,
              name: '_RegisterController.isNameValid'))
          .value;
  Computed<bool>? _$isFormValidComputed;

  @override
  bool get isFormValid =>
      (_$isFormValidComputed ??= Computed<bool>(() => super.isFormValid,
              name: '_RegisterController.isFormValid'))
          .value;

  late final _$formKeyRegisterAtom =
      Atom(name: '_RegisterController.formKeyRegister', context: context);

  @override
  GlobalKey<FormState> get formKeyRegister {
    _$formKeyRegisterAtom.reportRead();
    return super.formKeyRegister;
  }

  @override
  set formKeyRegister(GlobalKey<FormState> value) {
    _$formKeyRegisterAtom.reportWrite(value, super.formKeyRegister, () {
      super.formKeyRegister = value;
    });
  }

  late final _$progressAtom =
      Atom(name: '_RegisterController.progress', context: context);

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

  late final _$_emailAtom =
      Atom(name: '_RegisterController._email', context: context);

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
      Atom(name: '_RegisterController._password', context: context);

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

  late final _$_nameAtom =
      Atom(name: '_RegisterController._name', context: context);

  @override
  String get _name {
    _$_nameAtom.reportRead();
    return super._name;
  }

  @override
  set _name(String value) {
    _$_nameAtom.reportWrite(value, super._name, () {
      super._name = value;
    });
  }

  late final _$passwordVisibleAtom =
      Atom(name: '_RegisterController.passwordVisible', context: context);

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

  late final _$registerAsyncAction =
      AsyncAction('_RegisterController.register', context: context);

  @override
  Future<void> register(BuildContext context) {
    return _$registerAsyncAction.run(() => super.register(context));
  }

  late final _$_RegisterControllerActionController =
      ActionController(name: '_RegisterController', context: context);

  @override
  void setEmail(String value) {
    final _$actionInfo = _$_RegisterControllerActionController.startAction(
        name: '_RegisterController.setEmail');
    try {
      return super.setEmail(value);
    } finally {
      _$_RegisterControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPassword(String value) {
    final _$actionInfo = _$_RegisterControllerActionController.startAction(
        name: '_RegisterController.setPassword');
    try {
      return super.setPassword(value);
    } finally {
      _$_RegisterControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setName(String value) {
    final _$actionInfo = _$_RegisterControllerActionController.startAction(
        name: '_RegisterController.setName');
    try {
      return super.setName(value);
    } finally {
      _$_RegisterControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toggleVisible() {
    final _$actionInfo = _$_RegisterControllerActionController.startAction(
        name: '_RegisterController.toggleVisible');
    try {
      return super.toggleVisible();
    } finally {
      _$_RegisterControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
formKeyRegister: ${formKeyRegister},
progress: ${progress},
passwordVisible: ${passwordVisible},
isEmailValid: ${isEmailValid},
isPasswordValid: ${isPasswordValid},
isNameValid: ${isNameValid},
isFormValid: ${isFormValid}
    ''';
  }
}
