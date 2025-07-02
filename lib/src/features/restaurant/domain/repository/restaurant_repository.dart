import 'package:cv/src/core/typedefs/typedefs.dart';
import 'package:cv/src/features/restaurant/data/models/restaurant_dto.dart';

abstract class RestaurantRepository {
  EitherResponse<List<RestaurantDto>> getRestaurants();

  EitherResponse<String> addRestaurant(RestaurantDto restaurantDto);

  EitherResponse<String> updateRestaurant(RestaurantDto restaurantDto);

  EitherResponse<String> deleteRestaurant(String restaurantId);
}
