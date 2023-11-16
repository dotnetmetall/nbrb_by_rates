import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:rates_app/src/infrastructure/di/dependency_configuring.config.dart';
import 'package:shared_preferences/shared_preferences.dart';

@InjectableInit(initializerName: 'initDependencies', preferRelativeImports: true, asExtension: true)
Future<void> configureDependenciesAsync() {
  return GetIt.instance.initDependencies();
}

@module
abstract class RegisterModule {
  @preResolve
  @singleton
  Future<SharedPreferences> getSharedPreferences() => SharedPreferences.getInstance();

  @singleton
  Dio getHttpClient() {
    var dio = Dio();
    dio.options.baseUrl = "https://api.nbrb.by";
    // dio.options.connectTimeout = 5 * 1000;
    // dio.options.receiveTimeout = 5 * 1000;
    // dio.options.sendTimeout = 5 * 1000;

    return dio;
  }
}
