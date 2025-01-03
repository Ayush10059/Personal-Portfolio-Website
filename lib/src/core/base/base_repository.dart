import 'package:cv/src/core/errors/api_exception.dart';
import 'package:cv/src/core/errors/app_error.dart';
import 'package:cv/src/core/logger/logger.dart';
import 'package:cv/src/core/typedefs/typedefs.dart';
import 'package:fpdart/fpdart.dart';

/// {@template base_repository}
/// A [BaseRepository] class for handling network status and exceptions
/// {@endtemplate}
abstract class BaseRepository {
  const BaseRepository();

  ///
  /// [T] is Return type for [EitherResponse]
  ///
  /// [R] is response type from server that is params for [onSuccess] callback
  ///
  /// [onSuccess] callback returns the [T] and accept [R]
  ///
  EitherResponse<T> handleNetworkCall<R, T>({
    required Future<R> call,
    required T Function(R data) onSuccess,
  }) async {
    try {
      final data = await call;
      return right(onSuccess(data));
    } on ApiException catch (e) {
      logger.e(e);
      return left(
        e.when(
          serverException: (message) => AppError.serverError(message: message),
          unAuthorized: () => const AppError.unAuthorized(),
          network: () => const AppError.noInternet(),
          unAuthenticated: () => const AppError.unAuthenticated(),
          timeOut: (message) => AppError.timeOut(message: message),
        ),
      );
    }
  }
}
