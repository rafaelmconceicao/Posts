import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get_it/get_it.dart';
import 'package:posts/app/core/presenter/widgets/boticario_app_widget.dart';
import 'package:posts/generated/l10n.dart';
import 'package:posts/src/di/di.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initializeDi(GetIt.instance);
  runApp(const BoticarioApp());
}

