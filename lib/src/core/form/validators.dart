// validators/restaurant_validators.dart

class RestaurantValidators {
  static String? name(String value) {
    if (value.isEmpty) return 'Name cannot be empty';
    if (value.length < 2) return 'Name too short';
    return null;
  }

  static String? cuisineType(String value) {
    if (value.isEmpty) return 'Cuisine type required';
    return null;
  }

  static String? location(String value) {
    if (value.isEmpty) return 'Location required';
    return null;
  }

  static String? rating(String value) {
    final numericValue = double.tryParse(value);
    if (numericValue == null) return 'Enter a valid number';
    if (numericValue < 1 || numericValue > 5) return 'Must be 1-5';
    return null;
  }
}
