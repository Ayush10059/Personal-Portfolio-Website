// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cv/src/core/di/register_modules.dart' as _i430;
import 'package:cv/src/core/routes/app_router.dart' as _i150;
import 'package:cv/src/features/restaurant/data/repository/restaurant_repository_impl.dart'
    as _i1007;
import 'package:cv/src/features/restaurant/data/source/restaurant_remote_source.dart'
    as _i442;
import 'package:cv/src/features/restaurant/domain/repository/restaurant_repository.dart'
    as _i428;
import 'package:cv/src/features/restaurant/presentation/cubits/add_restaurant_form_cubit/add_restaurant_form_cubit.dart'
    as _i442;
import 'package:cv/src/features/restaurant/presentation/cubits/restaurant_cubit/restaurant_cubit.dart'
    as _i935;
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
  gh.factory<_i442.AddRestaurantFormCubit>(
      () => _i442.AddRestaurantFormCubit());
  gh.singleton<_i150.AppRouter>(() => registerModules.router);
  gh.lazySingleton<_i361.Dio>(() => registerModules.dio());
  gh.lazySingleton<_i442.RestaurantRemoteSource>(
      () => _i442.RestaurantRemoteSourceImpl());
  gh.lazySingleton<_i428.RestaurantRepository>(() =>
      _i1007.RestaurantRepositoryImpl(gh<_i442.RestaurantRemoteSource>()));
  gh.factory<_i935.RestaurantCubit>(
      () => _i935.RestaurantCubit(gh<_i428.RestaurantRepository>()));
  return getIt;
}

class _$RegisterModules extends _i430.RegisterModules {}
