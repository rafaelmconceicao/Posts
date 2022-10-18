// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Bem-vindo {userName}`
  String homePageWelcomeUser(Object userName) {
    return Intl.message(
      'Bem-vindo $userName',
      name: 'homePageWelcomeUser',
      desc: '',
      args: [userName],
    );
  }

  /// `Campo inválido.`
  String get textFieldGenericInvalidError {
    return Intl.message(
      'Campo inválido.',
      name: 'textFieldGenericInvalidError',
      desc: '',
      args: [],
    );
  }

  /// `Campo obrigatório.`
  String get textFieldGenericEmptyError {
    return Intl.message(
      'Campo obrigatório.',
      name: 'textFieldGenericEmptyError',
      desc: '',
      args: [],
    );
  }

  /// `Enviar post`
  String get sendMessageTitleButton {
    return Intl.message(
      'Enviar post',
      name: 'sendMessageTitleButton',
      desc: '',
      args: [],
    );
  }

  /// `Editar`
  String get editMessageTitleButton {
    return Intl.message(
      'Editar',
      name: 'editMessageTitleButton',
      desc: '',
      args: [],
    );
  }

  /// `Excluir`
  String get deleteMessageTitleButton {
    return Intl.message(
      'Excluir',
      name: 'deleteMessageTitleButton',
      desc: '',
      args: [],
    );
  }

  /// `Nome`
  String get nameHintText {
    return Intl.message(
      'Nome',
      name: 'nameHintText',
      desc: '',
      args: [],
    );
  }

  /// `E-mail`
  String get emailHintText {
    return Intl.message(
      'E-mail',
      name: 'emailHintText',
      desc: '',
      args: [],
    );
  }

  /// `Senha`
  String get passwordHintText {
    return Intl.message(
      'Senha',
      name: 'passwordHintText',
      desc: '',
      args: [],
    );
  }

  /// `Ainda não tem uma conta?`
  String get notHaveAccount {
    return Intl.message(
      'Ainda não tem uma conta?',
      name: 'notHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Cadastre-se`
  String get registerButton {
    return Intl.message(
      'Cadastre-se',
      name: 'registerButton',
      desc: '',
      args: [],
    );
  }

  /// `Entrar`
  String get loginTitleButton {
    return Intl.message(
      'Entrar',
      name: 'loginTitleButton',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get loginTitlePage {
    return Intl.message(
      'Login',
      name: 'loginTitlePage',
      desc: '',
      args: [],
    );
  }

  /// `Cadastre-se`
  String get registerTitlePage {
    return Intl.message(
      'Cadastre-se',
      name: 'registerTitlePage',
      desc: '',
      args: [],
    );
  }

  /// `Cadastrar`
  String get registerTitleButton {
    return Intl.message(
      'Cadastrar',
      name: 'registerTitleButton',
      desc: '',
      args: [],
    );
  }

  /// `Já tem uma conta?`
  String get alreadyHaveAnAccount {
    return Intl.message(
      'Já tem uma conta?',
      name: 'alreadyHaveAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `Faça login`
  String get signInButton {
    return Intl.message(
      'Faça login',
      name: 'signInButton',
      desc: '',
      args: [],
    );
  }

  /// `Sair do aplicativo`
  String get exitApplication {
    return Intl.message(
      'Sair do aplicativo',
      name: 'exitApplication',
      desc: '',
      args: [],
    );
  }

  /// `Deseja realmente sair da sua conta?`
  String get reallyLogOut {
    return Intl.message(
      'Deseja realmente sair da sua conta?',
      name: 'reallyLogOut',
      desc: '',
      args: [],
    );
  }

  /// `Cancelar`
  String get cancelTitleButton {
    return Intl.message(
      'Cancelar',
      name: 'cancelTitleButton',
      desc: '',
      args: [],
    );
  }

  /// `Sair`
  String get exitTitleButton {
    return Intl.message(
      'Sair',
      name: 'exitTitleButton',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'pt', countryCode: 'BR'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
