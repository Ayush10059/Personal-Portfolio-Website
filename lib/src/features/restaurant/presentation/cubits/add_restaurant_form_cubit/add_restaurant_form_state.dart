part of 'add_restaurant_form_cubit.dart';

@freezed
class AddRestaurantFormState with _$AddRestaurantFormState, FormMixin {
  const AddRestaurantFormState._();

  const factory AddRestaurantFormState({
    @Default(FormStatus.initial()) FormStatus status,
    required Field<String> name,
    required Field<String> cuisineType,
    required Field<String> location,
    required Field<String> rating,
  }) = _AddRestaurantFormState;

  factory AddRestaurantFormState.initial() => const AddRestaurantFormState(
        status: FormStatus.initial(),
        name: Field<String>(value: '', isValid: false),
        cuisineType: Field<String>(value: '', isValid: false),
        location: Field<String>(value: '', isValid: false),
        rating: Field<String>(value: '', isValid: false),
      );

  @override
  Map<String, dynamic> get values => {
        'name': name.value.trim(),
        'cuisineType': cuisineType.value.trim(),
        'location': location.value.trim(),
        'rating': rating.value.trim(),
      };

  bool get valid => isValid;

  @override
  List<Field> get fields => [name, cuisineType, location, rating];
}
