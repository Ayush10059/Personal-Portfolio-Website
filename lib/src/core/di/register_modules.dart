import 'package:cv/src/core/logger/logger.dart';
import 'package:cv/src/core/routes/app_router.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RegisterModules {
  @singleton
  AppRouter get router => AppRouter();

  @lazySingleton
  Dio dio() => Dio(BaseOptions(
    // TODO: Base url
        baseUrl: "Env.instance.baseUrl",
        receiveTimeout: const Duration(seconds: 60),
        connectTimeout: const Duration(seconds: 60),
        responseType: ResponseType.json,
        headers: <String, dynamic>{
          'Accept': 'application/json',
          'Content-Type': 'application/json',
        },
      ))
        ..interceptors.addAll([
          LogInterceptor(
              logPrint: logger.d, responseBody: true, requestBody: true),
        ]);
}
