import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cv/src/features/restaurant/data/models/restaurant_dto.dart';
import 'package:injectable/injectable.dart';

abstract class RestaurantRemoteSource {
  Future<List<RestaurantDto>> getRestaurants();
  Future<RestaurantDto> addRestaurant(RestaurantDto restaurant);
  Future<void> updateRestaurant(RestaurantDto restaurant);
  Future<void> deleteRestaurant(String id);
}

@LazySingleton(as: RestaurantRemoteSource)
class RestaurantRemoteSourceImpl implements RestaurantRemoteSource {
  final CollectionReference _restaurantsCollection =
      FirebaseFirestore.instance.collection('restaurants');

  @override
  Future<List<RestaurantDto>> getRestaurants() async {
    try {
      final querySnapshot = await _restaurantsCollection.orderBy('name').get();

      return querySnapshot.docs.map((doc) {
        return RestaurantDto.fromJson({
          ...doc.data() as Map<String, dynamic>,
          'id': doc.id,
        });
      }).toList();
    } catch (e) {
      throw Exception('Failed to fetch restaurants: $e');
    }
  }

  @override
  Future<RestaurantDto> addRestaurant(RestaurantDto restaurant) async {
    try {
      final docRef = await _restaurantsCollection.add(restaurant.toJson());
      final newDoc = await docRef.get();
      return RestaurantDto.fromJson({
        ...newDoc.data() as Map<String, dynamic>,
        'id': newDoc.id,
      });
    } catch (e) {
      throw Exception('Failed to add restaurant: $e');
    }
  }

  @override
  Future<void> updateRestaurant(RestaurantDto restaurant) async {
    try {
      await _restaurantsCollection
          .doc(restaurant.id)
          .update(restaurant.toJson());
    } catch (e) {
      throw Exception('Failed to update restaurant: $e');
    }
  }

  @override
  Future<void> deleteRestaurant(String id) async {
    try {
      await _restaurantsCollection.doc(id).delete();
    } catch (e) {
      throw Exception('Failed to delete restaurant: $e');
    }
  }
}
