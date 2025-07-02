import 'package:cv/src/core/errors/api_exception.dart';
import 'package:cv/src/core/helpers/internet_connection_helper.dart';
import 'package:dio/dio.dart';

/// [BaseRemoteSource] for handling network requests for dio client
abstract class BaseRemoteSource {
  BaseRemoteSource(this._dio);

  final Dio _dio;

  /// [T] is return type from network request
  ///
  /// [request] callback returns [Response] and accepts [Dio] instance
  ///
  /// [onResponse] callback returns [T] and accepts [dynamic] data from [Response]
  ///
  /// throws [ApiException]

  Future<T> networkRequest<T>({
    required Future<Response> Function(Dio dio) request,
    required T Function(dynamic data) onResponse,
  }) async {
    if (await InternetConnectionHelper.checkConnection()) {
      try {
        final response = await request(_dio);
        if (response.statusCode! == 200) {
          return onResponse(response.data ?? {});
        } else {
          throw ApiException.serverException(
              message:
                  response.data['message'] ?? 'UnExpected Error Occurred!');
        }
      } catch (e) {
        throw const ApiException.serverException(
            message: 'UnExpected Error Occurred!');
      }
    } else {
      throw const ApiException.network();
    }
  }
}
