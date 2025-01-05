import 'package:cv/src/core/routes/app_router.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RegisterModules {
  @singleton
  AppRouter get router => AppRouter();
}
