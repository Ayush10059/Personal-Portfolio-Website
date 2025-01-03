import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_exception.freezed.dart';

@freezed
class ApiException with _$ApiException implements Exception {
  // for server related errors
  const factory ApiException.serverException({
    required String message,
  }) = _ServerException;

  // for status code 403
  const factory ApiException.unAuthorized() = _UnAuthorized;

  // for status code 401
  const factory ApiException.unAuthenticated() = _UnAutheticated;

  // for socket exception from server
  const factory ApiException.network() = _Network;

  const factory ApiException.timeOut({required String message}) = _TimeOut;
}
