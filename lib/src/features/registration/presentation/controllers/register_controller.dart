import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:posts/src/core/failures.dart';
import 'package:posts/src/features/login/domain/entity/user_app_model.dart';
import 'package:posts/src/features/registration/presentation/usecase/register_usecase.dart';
import 'package:posts/src/utils/ui/components/dialogs.dart';

part 'register_controller.g.dart';

class RegisterController = _RegisterController with _$RegisterController;

abstract class _RegisterController with Store {
  final RegisterUsecase usecase;

  _RegisterController(this.usecase);

  @observable
  GlobalKey<FormState> formKeyRegister = GlobalKey<FormState>();

  @observable
  bool progress = false;

  @observable
  String _email = '';

  @observable
  String _password = '';

  @observable
  String _name = '';

  @action
  void setEmail(String value) => _email = value;

  @action
  void setPassword(String value) => _password = value;

  @action
  void setName(String value) => _name = value;

  @computed
  bool get isEmailValid => RegExp(
          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.'
          r'[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
      .hasMatch(_email);

  @computed
  bool get isPasswordValid => _password.isNotEmpty;

  @computed
  bool get isNameValid => _name.isNotEmpty;

  @observable
  bool passwordVisible = false;

  @action
  void toggleVisible() => passwordVisible = !passwordVisible;

  @computed
  bool get isFormValid => isEmailValid && isPasswordValid;

  @action
  Future<void> register(BuildContext context) async {
    UserApp user = UserApp();

    user.email = _email;
    user.password = _password;
    user.name = _name;

    if (formKeyRegister.currentState!.validate()) {
      _continue(context, user);
    }
  }

  Future<void> _continue(BuildContext context, UserApp userApp) async {
    progress = true;
    Either<Failure, String> register = await usecase.registerUser(userApp);

    register.fold((failure) {
        customDialog(
            context: context,
            title: "Erro ao fazer cadastro!",
            description: "",
            closeOnly: true);
      return Left(failure);
    }, (result) {
      customDialog(
          context: context,
          title: 'Cadastro realizado com sucesso!',
          description: 'Deseja realizar login?',
          backTwoPages: true,
          closeOnly: false);
      return Right(result);
    });
    progress = false;
  }
}
