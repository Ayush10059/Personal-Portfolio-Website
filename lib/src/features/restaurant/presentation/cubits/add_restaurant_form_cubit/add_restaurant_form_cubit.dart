import 'package:cv/src/core/base/base_cubit.dart';
import 'package:cv/src/core/form/field.dart';
import 'package:cv/src/core/form/form_mixin.dart';
import 'package:cv/src/core/form/form_status.dart';
import 'package:cv/src/core/form/validators.dart';
import 'package:cv/src/features/restaurant/data/models/restaurant_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

part 'add_restaurant_form_cubit.freezed.dart';
part 'add_restaurant_form_state.dart';

@injectable
class AddRestaurantFormCubit extends BaseCubit<AddRestaurantFormState> {
  AddRestaurantFormCubit() : super(AddRestaurantFormState.initial());

  void onNameChange(String value) {
    emit(
      state.copyWith(
        name: Field(
          value: value,
          isValid: RestaurantValidators.name(value) == null,
          errorMessage: RestaurantValidators.name(value) ?? '',
        ),
      ),
    );
  }

  void onCuisineTypeChange(String value) {
    emit(
      state.copyWith(
        cuisineType: Field(
          value: value,
          isValid: RestaurantValidators.cuisineType(value) == null,
          errorMessage: RestaurantValidators.cuisineType(value) ?? '',
        ),
      ),
    );
  }

  void onLocationChange(String value) {
    emit(
      state.copyWith(
        location: Field(
          value: value,
          isValid: RestaurantValidators.location(value) == null,
          errorMessage: RestaurantValidators.location(value) ?? '',
        ),
      ),
    );
  }

  void onRatingChange(String value) {
    emit(
      state.copyWith(
        rating: Field(
          value: value,
          isValid: RestaurantValidators.rating(value) == null,
          errorMessage: RestaurantValidators.rating(value) ?? '',
        ),
      ),
    );
  }

  RestaurantDto get restaurantDto => RestaurantDto(
        id: const Uuid().v4(),
        name: state.name.value,
        cuisineType: state.cuisineType.value,
        location: state.location.value,
        rating: double.tryParse(state.rating.value) ?? 0,
      );
}
