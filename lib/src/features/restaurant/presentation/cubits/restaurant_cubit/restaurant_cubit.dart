import 'package:cv/src/core/base/base_cubit.dart';
import 'package:cv/src/core/form/form_status.dart';
import 'package:cv/src/features/restaurant/data/models/restaurant_dto.dart';
import 'package:cv/src/features/restaurant/domain/repository/restaurant_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'restaurant_cubit.freezed.dart';
part 'restaurant_state.dart';

@injectable
class RestaurantCubit extends BaseCubit<RestaurantState> {
  RestaurantCubit(this._restaurantRepository)
      : super(RestaurantState.initial());

  final RestaurantRepository _restaurantRepository;

  Future<void> fetchRestaurants() async {
    emit(state.copyWith(status: const FormStatus.submitting()));

    await handleBusinessLogic(
      call: _restaurantRepository.getRestaurants(),
      onSuccess: (restaurants) => state.copyWith(
        restaurants: restaurants,
        status: const FormStatus.success(),
      ),
      onFailure: (error) => state.copyWith(
        status: FormStatus.error(error: error.toString()),
      ),
    );
  }

  Future<void> addRestaurant(RestaurantDto restaurantDto) async {
    emit(state.copyWith(status: const FormStatus.submitting()));

    await handleBusinessLogic(
      call: _restaurantRepository.addRestaurant(restaurantDto),
      onSuccess: (message) {
        // After adding, refresh the list
        fetchRestaurants();
        return state.copyWith(
          status: FormStatus.success(message: message),
        );
      },
      onFailure: (error) => state.copyWith(
        status: FormStatus.error(error: error.toString()),
      ),
    );
  }

  Future<void> updateRestaurant(RestaurantDto restaurantDto) async {
    emit(state.copyWith(status: const FormStatus.submitting()));

    await handleBusinessLogic(
      call: _restaurantRepository.updateRestaurant(restaurantDto),
      onSuccess: (message) {
        // After updating, refresh the list
        fetchRestaurants();
        return state.copyWith(
          status: FormStatus.success(message: message),
        );
      },
      onFailure: (error) => state.copyWith(
        status: FormStatus.error(error: error.toString()),
      ),
    );
  }

  Future<void> deleteRestaurant(String id) async {
    emit(state.copyWith(status: const FormStatus.submitting()));

    await handleBusinessLogic(
      call: _restaurantRepository.deleteRestaurant(id),
      onSuccess: (message) {
        // Remove the deleted restaurant from the list
        final updatedList = state.restaurants.where((r) => r.id != id).toList();
        return state.copyWith(
          restaurants: updatedList,
          status: FormStatus.success(message: message),
        );
      },
      onFailure: (error) => state.copyWith(
        status: FormStatus.error(error: error.toString()),
      ),
    );
  }

  // Future<void> rateRestaurant(String id, double rating) async {
  //   emit(state.copyWith(status: const FormStatus.submitting()));

  //   await handleBusinessLogic(
  //     call: _restaurantRepository.rateRestaurant(id, rating),
  //     onSuccess: (message) {
  //       // Update the rating in the local list
  //       final updatedList = state.restaurants.map((restaurant) {
  //         if (restaurant.id == id) {
  //           return restaurant.copyWith(
  //             rating: rating,
  //             // Update other rating-related fields if needed
  //           );
  //         }
  //         return restaurant;
  //       }).toList();

  //       return state.copyWith(
  //         restaurants: updatedList,
  //         status: FormStatus.success(message: message),
  //       );
  //     },
  //     onFailure: (error) => state.copyWith(
  //       status: FormStatus.error(error: error.toString()),
  //     ),
  //   );
  // }

  void sortRestaurants({required String by}) {
    List<RestaurantDto> sorted = List.from(state.restaurants);

    if (by == 'name') {
      sorted.sort((a, b) => a.name.compareTo(b.name));
    } else if (by == 'rating') {
      sorted.sort((a, b) => (b.rating).compareTo(a.rating));
    }

    emit(state.copyWith(restaurants: sorted));
  }
}
