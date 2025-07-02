import 'package:auto_route/auto_route.dart';
import 'package:cv/src/core/constants/constants.dart';
import 'package:cv/src/core/di/injector.dart';
import 'package:cv/src/core/extensions/context_extension.dart';
import 'package:cv/src/core/form/field.dart';
import 'package:cv/src/features/dashboard/presentation/widgets/widgets.dart';
import 'package:cv/src/features/restaurant/presentation/cubits/add_restaurant_form_cubit/add_restaurant_form_cubit.dart';
import 'package:cv/src/features/restaurant/presentation/cubits/restaurant_cubit/restaurant_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class AddRestaurantScreen extends StatelessWidget {
  const AddRestaurantScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<RestaurantCubit>(
          create: (_) => getIt<RestaurantCubit>(),
        ),
        BlocProvider<AddRestaurantFormCubit>(
          create: (_) => getIt<AddRestaurantFormCubit>(),
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Add Restaurant'),
          centerTitle: true,
          elevation: 0,
        ),
        body: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 600),
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: BlocListener<RestaurantCubit, RestaurantState>(
              listener: (context, state) {
                state.status.maybeWhen(
                  orElse: () {},
                  error: (message) {
                    context.showSnackbar(
                      title: 'Add Restaurant',
                      message: message ?? 'Error adding restaurant',
                      error: true,
                    );
                  },
                  success: (message) {
                    context.showSnackbar(
                      title: 'Success',
                      message: 'Restaurant added successfully',
                    );
                    context.router.maybePop();
                  },
                );
              },
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Restaurant Name Field
                    _buildFieldHeader('Restaurant Name'),
                    verticalSpaceTiny,
                    const _NameField(),
                    verticalSpaceMedium,

                    // Cuisine Type Field
                    _buildFieldHeader('Cuisine Type'),
                    verticalSpaceTiny,
                    const _CuisineTypeField(),
                    verticalSpaceMedium,

                    // Location Field
                    _buildFieldHeader('Location'),
                    verticalSpaceTiny,
                    const _LocationField(),
                    verticalSpaceMedium,

                    // Rating Field
                    _buildFieldHeader('Rating (1-5)'),
                    verticalSpaceTiny,
                    const _RatingField(),
                    verticalSpaceMedium,

                    verticalSpaceLarge,

                    // Submit Button
                    BlocBuilder<AddRestaurantFormCubit, AddRestaurantFormState>(
                      builder: (context, formState) => CustomButton(
                        label: 'Add Restaurant',
                        icon: Icons.add_circle_sharp,
                        isDisabled: !formState.isValid,
                        onPressed: () {
                          context.read<RestaurantCubit>().addRestaurant(
                                context
                                    .read<AddRestaurantFormCubit>()
                                    .restaurantDto,
                              );
                        },
                        bgColor:
                            formState.isValid ? kPrimary : Colors.grey[300]!,
                        foregroundColor:
                            formState.isValid ? kWhite : Colors.grey[600]!,
                        shadowColor: formState.isValid
                            ? kPrimaryMedium
                            : Colors.grey[500]!,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFieldHeader(String text) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: Colors.black87,
      ),
    );
  }
}

// Name Field Widget
class _NameField extends StatelessWidget {
  const _NameField();

  @override
  Widget build(BuildContext context) {
    return BlocSelector<AddRestaurantFormCubit, AddRestaurantFormState,
        Field<String>>(
      selector: (state) => state.name,
      builder: (context, state) => TextFormField(
        decoration: InputDecoration(
          hintText: 'Enter restaurant name',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 14,
          ),
          errorText: state.hasError ? state.errorMessage : null,
        ),
        style: const TextStyle(fontSize: 16),
        textInputAction: TextInputAction.next,
        onChanged: context.read<AddRestaurantFormCubit>().onNameChange,
      ),
    );
  }
}

// Cuisine Type Field Widget
class _CuisineTypeField extends StatelessWidget {
  const _CuisineTypeField();

  @override
  Widget build(BuildContext context) {
    return BlocSelector<AddRestaurantFormCubit, AddRestaurantFormState,
        Field<String>>(
      selector: (state) => state.cuisineType,
      builder: (context, state) => TextFormField(
        decoration: InputDecoration(
          hintText: 'e.g., Italian, Mexican, Chinese',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 14,
          ),
          errorText: state.hasError ? state.errorMessage : null,
        ),
        style: const TextStyle(fontSize: 16),
        textInputAction: TextInputAction.next,
        onChanged: context.read<AddRestaurantFormCubit>().onCuisineTypeChange,
      ),
    );
  }
}

// Location Field Widget
class _LocationField extends StatelessWidget {
  const _LocationField();

  @override
  Widget build(BuildContext context) {
    return BlocSelector<AddRestaurantFormCubit, AddRestaurantFormState,
        Field<String>>(
      selector: (state) => state.location,
      builder: (context, state) => TextFormField(
        decoration: InputDecoration(
          hintText: 'Enter restaurant address',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 14,
          ),
          errorText: state.hasError ? state.errorMessage : null,
        ),
        style: const TextStyle(fontSize: 16),
        textInputAction: TextInputAction.next,
        onChanged: context.read<AddRestaurantFormCubit>().onLocationChange,
      ),
    );
  }
}

// Rating Field Widget
class _RatingField extends StatelessWidget {
  const _RatingField();

  @override
  Widget build(BuildContext context) {
    return BlocSelector<AddRestaurantFormCubit, AddRestaurantFormState,
        Field<String>>(
      selector: (state) => state.rating,
      builder: (context, state) => TextFormField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          hintText: 'Enter rating (1-5)',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 14,
          ),
          errorText: state.hasError ? state.errorMessage : null,
        ),
        style: const TextStyle(fontSize: 16),
        textInputAction: TextInputAction.next,
        onChanged: context.read<AddRestaurantFormCubit>().onRatingChange,
      ),
    );
  }
}
