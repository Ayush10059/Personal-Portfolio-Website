import 'package:cv/src/core/base/base_repository.dart';
import 'package:cv/src/core/typedefs/typedefs.dart';
import 'package:cv/src/features/restaurant/data/models/restaurant_dto.dart';
import 'package:cv/src/features/restaurant/data/source/restaurant_remote_source.dart';
import 'package:cv/src/features/restaurant/domain/repository/restaurant_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: RestaurantRepository)
class RestaurantRepositoryImpl extends BaseRepository
    implements RestaurantRepository {
  RestaurantRepositoryImpl(this._remoteSource);

  final RestaurantRemoteSource _remoteSource;

  @override
  EitherResponse<List<RestaurantDto>> getRestaurants() => handleNetworkCall(
        call: _remoteSource.getRestaurants(),
        onSuccess: (restaurants) => restaurants,
      );

  @override
  EitherResponse<String> addRestaurant(RestaurantDto restaurantDto) =>
      handleNetworkCall(
        call: _remoteSource.addRestaurant(restaurantDto),
        onSuccess: (_) => 'Restaurant added successfully',
      );

  @override
  EitherResponse<String> updateRestaurant(RestaurantDto restaurantDto) =>
      handleNetworkCall(
        call: _remoteSource.updateRestaurant(restaurantDto),
        onSuccess: (_) => 'Rating updated successfully',
      );

  @override
  EitherResponse<String> deleteRestaurant(String restaurantId) =>
      handleNetworkCall(
        call: _remoteSource.deleteRestaurant(restaurantId),
        onSuccess: (_) => 'Restaurant deleted successfully',
      );
}
