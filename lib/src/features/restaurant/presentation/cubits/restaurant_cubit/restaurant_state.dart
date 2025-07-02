part of 'restaurant_cubit.dart';

@freezed
class RestaurantState with _$RestaurantState {
  const factory RestaurantState({
    @Default([]) List<RestaurantDto> restaurants,
    @Default(FormStatus.initial()) FormStatus status,
    @Default('name') String sortBy,
  }) = _RestaurantState;

  factory RestaurantState.initial() => const RestaurantState();
}
