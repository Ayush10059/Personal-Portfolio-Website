// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cv/src/core/di/register_modules.dart' as _i430;
import 'package:cv/src/core/routes/app_router.dart' as _i150;
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt $initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final registerModules = _$RegisterModules();
  gh.singleton<_i150.AppRouter>(() => registerModules.router);
  gh.lazySingleton<_i361.Dio>(() => registerModules.dio());
  return getIt;
}

class _$RegisterModules extends _i430.RegisterModules {}
