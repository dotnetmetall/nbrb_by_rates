import 'package:flutter/material.dart';
import 'package:rates_app/src/infrastructure/di/dependency_configuring.dart';
import 'src/app.dart';
import 'src/common/logging/logger_configuring.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureDependenciesAsync();
  configureLogger();

  runApp(App());
}
