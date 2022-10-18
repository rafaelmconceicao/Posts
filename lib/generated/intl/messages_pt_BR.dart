// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a pt_BR locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'pt_BR';

  static String m0(userName) => "Bem-vindo ${userName}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "alreadyHaveAnAccount":
            MessageLookupByLibrary.simpleMessage("Já tem uma conta?"),
        "cancelTitleButton": MessageLookupByLibrary.simpleMessage("Cancelar"),
        "deleteMessageTitleButton":
            MessageLookupByLibrary.simpleMessage("Excluir"),
        "editMessageTitleButton":
            MessageLookupByLibrary.simpleMessage("Editar"),
        "emailHintText": MessageLookupByLibrary.simpleMessage("E-mail"),
        "exitApplication":
            MessageLookupByLibrary.simpleMessage("Sair do aplicativo"),
        "exitTitleButton": MessageLookupByLibrary.simpleMessage("Sair"),
        "homePageWelcomeUser": m0,
        "loginTitleButton": MessageLookupByLibrary.simpleMessage("Entrar"),
        "loginTitlePage": MessageLookupByLibrary.simpleMessage("Login"),
        "nameHintText": MessageLookupByLibrary.simpleMessage("Nome"),
        "notHaveAccount":
            MessageLookupByLibrary.simpleMessage("Ainda não tem uma conta?"),
        "passwordHintText": MessageLookupByLibrary.simpleMessage("Senha"),
        "reallyLogOut": MessageLookupByLibrary.simpleMessage(
            "Deseja realmente sair da sua conta?"),
        "registerButton": MessageLookupByLibrary.simpleMessage("Cadastre-se"),
        "registerTitleButton":
            MessageLookupByLibrary.simpleMessage("Cadastrar"),
        "registerTitlePage":
            MessageLookupByLibrary.simpleMessage("Cadastre-se"),
        "sendMessageTitleButton":
            MessageLookupByLibrary.simpleMessage("Enviar post"),
        "signInButton": MessageLookupByLibrary.simpleMessage("Faça login"),
        "textFieldGenericEmptyError":
            MessageLookupByLibrary.simpleMessage("Campo obrigatório."),
        "textFieldGenericInvalidError":
            MessageLookupByLibrary.simpleMessage("Campo inválido.")
      };
}
