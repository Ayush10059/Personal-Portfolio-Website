import 'package:auto_route/auto_route.dart';
import 'package:cv/src/core/constants/constants.dart';
import 'package:cv/src/core/di/injector.dart';
import 'package:cv/src/core/extensions/context_extension.dart';
import 'package:cv/src/core/routes/app_router.dart';
import 'package:cv/src/features/restaurant/data/models/restaurant_dto.dart';
import 'package:cv/src/features/restaurant/presentation/cubits/restaurant_cubit/restaurant_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

@RoutePage()
class RestaurantListScreen extends StatelessWidget {
  const RestaurantListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<RestaurantCubit>()..fetchRestaurants(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Restaurants'),
          centerTitle: true,
          elevation: 0,
          actions: [
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () => context.router.push(const AddRestaurantRoute()),
            ),
          ],
        ),
        body: const _RestaurantListView(),
      ),
    );
  }
}

class _RestaurantListView extends StatelessWidget {
  const _RestaurantListView();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RestaurantCubit, RestaurantState>(
      listener: (context, state) {
        state.status.maybeWhen(
          orElse: () {},
          error: (message) {
            context.showSnackbar(
              title: 'Error',
              message: message ?? 'Failed to load restaurants',
              error: true,
            );
          },
          success: (message) {
            context.showSnackbar(
              title: 'Success',
              message: message ?? 'Restaurant deleted successfully',
            );
          },
        );
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Sorting and Filtering Controls
              // _buildSortControls(context),
              verticalSpaceMedium,

              // Restaurant List
              Expanded(
                child: state.restaurants.isEmpty
                    ? const Center(child: Text('No restaurants found'))
                    : ListView.builder(
                        itemCount: state.restaurants.length,
                        itemBuilder: (context, index) {
                          final restaurant = state.restaurants[index];
                          return _RestaurantCard(restaurant: restaurant);
                        },
                      ),
              ),
            ],
          ),
        );
      },
    );
  }

  // Widget _buildSortControls(BuildContext context) {
  //   return Row(
  //     children: [
  //       Expanded(
  //         child: DropdownButtonFormField<String>(
  //           value: 'name',
  //           items: const [
  //             DropdownMenuItem(value: 'name', child: Text('Sort by Name')),
  //             DropdownMenuItem(value: 'rating', child: Text('Sort by Rating')),
  //           ],
  //           onChanged: (value) {
  //             context.read<RestaurantCubit>().sortRestaurants(by: value!);
  //           },
  //           decoration: InputDecoration(
  //             border: OutlineInputBorder(
  //               borderRadius: BorderRadius.circular(10),
  //             ),
  //             contentPadding: const EdgeInsets.symmetric(horizontal: 16),
  //           ),
  //         ),
  //       ),
  //       horizontalSpaceSmall,
  //       IconButton(
  //         icon: const Icon(Icons.refresh),
  //         onPressed: () => context.read<RestaurantCubit>().getRestaurants(),
  //       ),
  //     ],
  //   );
  // }
}

class _RestaurantCard extends StatelessWidget {
  final RestaurantDto restaurant;

  const _RestaurantCard({required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    restaurant.name,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                _buildRatingBar(context),
              ],
            ),
            verticalSpaceSmall,
            Text(
              restaurant.cuisineType,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[600],
              ),
            ),
            verticalSpaceSmall,
            Text(
              restaurant.location,
              style: const TextStyle(fontSize: 14),
            ),
            verticalSpaceMedium,
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: const Icon(Icons.edit, color: kPrimary),
                  onPressed: () {},
                  // onPressed: () =>  _navigateToEdit(context),
                ),
                IconButton(
                  icon: const Icon(Icons.delete, color: Colors.red),
                  onPressed: () => _confirmDelete(context),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRatingBar(BuildContext context) {
    return RatingBar.builder(
      initialRating: restaurant.rating,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemSize: 20,
      itemBuilder: (context, _) => const Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (rating) {
        // context.read<RestaurantCubit>().rateRestaurant(
        //       restaurant.id,
        //       rating,
        //     );
      },
      ignoreGestures: false, // Set to true if you want to disable user rating
    );
  }

  // void _navigateToEdit(BuildContext context) {
  //   context.router.push(
  //     AddRestaurantRoute(restaurant: restaurant),
  //   );
  // }

  void _confirmDelete(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delete Restaurant'),
        content: const Text('Are you sure you want to delete this restaurant?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              context.read<RestaurantCubit>().deleteRestaurant(restaurant.id);
              Navigator.pop(context);
            },
            child: const Text(
              'Delete',
              style: TextStyle(color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}
