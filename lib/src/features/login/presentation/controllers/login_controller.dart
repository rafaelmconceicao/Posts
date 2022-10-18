import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:posts/src/core/failures.dart';
import 'package:posts/src/features/home/presentation/pages/bottom_nav_bar.dart';
import 'package:posts/src/features/login/domain/entity/user_app_model.dart';
import 'package:posts/src/features/login/presentation/usecase/login_usecase.dart';
import 'package:posts/src/utils/authentication_storage/authentication_storage.dart';
import 'package:posts/src/utils/helper/textformfield_helper.dart';
import 'package:posts/src/utils/ui/components/dialogs.dart';

part 'login_controller.g.dart';

class LoginController = _LoginController with _$LoginController;

abstract class _LoginController with Store {
  final LoginUsecase usecase;

  _LoginController(this.usecase);

  @observable
  GlobalKey<FormState> formKeyLogin = GlobalKey<FormState>();

  @observable
  UserApp? user;

  @observable
  bool progress = false;

  @observable
  InputStatus? status;

  @observable
  String _email = '';

  @observable
  String _password = '';

  @action
  void setEmail(String value) => _email = value;

  @action
  void setPassword(String value) => _password = value;

  @computed
  bool get isEmailValid => RegExp(
          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.'
          r'[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
      .hasMatch(_email);

  @computed
  bool get isPasswordValid => _password.isNotEmpty;

  @computed
  bool get isFormValid => isEmailValid && isPasswordValid;

  @observable
  bool passwordVisible = false;

  @action
  void toggleVisible() => passwordVisible = !passwordVisible;

  @action
  void login(BuildContext context) {
    UserApp user = UserApp();

    user.email = _email;
    user.password = _password;

    if (formKeyLogin.currentState!.validate()) {
      _continue(context, user);
    }
  }

  Future<void> _continue(BuildContext context, UserApp userApp) async {
    progress = true;

    Either<Failure, UserApp> login = await usecase.login(userApp);
    login.fold(
      (failure) {
        customDialog(
            context: context,
            title: "Erro ao fazer login!",
            description: "Revise seu usuário e senha e tente novamente.",
            closeOnly: true);

        return Left(failure);
      },
      (result) {
        user = result;
        AuthenticationStorage.authenticatedUser = result;
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (builder) => const BottomNavBar()),
            (route) => false);
        return Right(result);
      },
    );
    progress = false;
  }
}
