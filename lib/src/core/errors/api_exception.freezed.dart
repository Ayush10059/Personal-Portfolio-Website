// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ApiException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverException,
    required TResult Function() unAuthorized,
    required TResult Function() unAuthenticated,
    required TResult Function() network,
    required TResult Function(String message) timeOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverException,
    TResult? Function()? unAuthorized,
    TResult? Function()? unAuthenticated,
    TResult? Function()? network,
    TResult? Function(String message)? timeOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverException,
    TResult Function()? unAuthorized,
    TResult Function()? unAuthenticated,
    TResult Function()? network,
    TResult Function(String message)? timeOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerException value) serverException,
    required TResult Function(_UnAuthorized value) unAuthorized,
    required TResult Function(_UnAutheticated value) unAuthenticated,
    required TResult Function(_Network value) network,
    required TResult Function(_TimeOut value) timeOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerException value)? serverException,
    TResult? Function(_UnAuthorized value)? unAuthorized,
    TResult? Function(_UnAutheticated value)? unAuthenticated,
    TResult? Function(_Network value)? network,
    TResult? Function(_TimeOut value)? timeOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerException value)? serverException,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_UnAutheticated value)? unAuthenticated,
    TResult Function(_Network value)? network,
    TResult Function(_TimeOut value)? timeOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiExceptionCopyWith<$Res> {
  factory $ApiExceptionCopyWith(
          ApiException value, $Res Function(ApiException) then) =
      _$ApiExceptionCopyWithImpl<$Res, ApiException>;
}

/// @nodoc
class _$ApiExceptionCopyWithImpl<$Res, $Val extends ApiException>
    implements $ApiExceptionCopyWith<$Res> {
  _$ApiExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiException
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ServerExceptionImplCopyWith<$Res> {
  factory _$$ServerExceptionImplCopyWith(_$ServerExceptionImpl value,
          $Res Function(_$ServerExceptionImpl) then) =
      __$$ServerExceptionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ServerExceptionImplCopyWithImpl<$Res>
    extends _$ApiExceptionCopyWithImpl<$Res, _$ServerExceptionImpl>
    implements _$$ServerExceptionImplCopyWith<$Res> {
  __$$ServerExceptionImplCopyWithImpl(
      _$ServerExceptionImpl _value, $Res Function(_$ServerExceptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ServerExceptionImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ServerExceptionImpl implements _ServerException {
  const _$ServerExceptionImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ApiException.serverException(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerExceptionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ApiException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerExceptionImplCopyWith<_$ServerExceptionImpl> get copyWith =>
      __$$ServerExceptionImplCopyWithImpl<_$ServerExceptionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverException,
    required TResult Function() unAuthorized,
    required TResult Function() unAuthenticated,
    required TResult Function() network,
    required TResult Function(String message) timeOut,
  }) {
    return serverException(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverException,
    TResult? Function()? unAuthorized,
    TResult? Function()? unAuthenticated,
    TResult? Function()? network,
    TResult? Function(String message)? timeOut,
  }) {
    return serverException?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverException,
    TResult Function()? unAuthorized,
    TResult Function()? unAuthenticated,
    TResult Function()? network,
    TResult Function(String message)? timeOut,
    required TResult orElse(),
  }) {
    if (serverException != null) {
      return serverException(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerException value) serverException,
    required TResult Function(_UnAuthorized value) unAuthorized,
    required TResult Function(_UnAutheticated value) unAuthenticated,
    required TResult Function(_Network value) network,
    required TResult Function(_TimeOut value) timeOut,
  }) {
    return serverException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerException value)? serverException,
    TResult? Function(_UnAuthorized value)? unAuthorized,
    TResult? Function(_UnAutheticated value)? unAuthenticated,
    TResult? Function(_Network value)? network,
    TResult? Function(_TimeOut value)? timeOut,
  }) {
    return serverException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerException value)? serverException,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_UnAutheticated value)? unAuthenticated,
    TResult Function(_Network value)? network,
    TResult Function(_TimeOut value)? timeOut,
    required TResult orElse(),
  }) {
    if (serverException != null) {
      return serverException(this);
    }
    return orElse();
  }
}

abstract class _ServerException implements ApiException {
  const factory _ServerException({required final String message}) =
      _$ServerExceptionImpl;

  String get message;

  /// Create a copy of ApiException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServerExceptionImplCopyWith<_$ServerExceptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnAuthorizedImplCopyWith<$Res> {
  factory _$$UnAuthorizedImplCopyWith(
          _$UnAuthorizedImpl value, $Res Function(_$UnAuthorizedImpl) then) =
      __$$UnAuthorizedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnAuthorizedImplCopyWithImpl<$Res>
    extends _$ApiExceptionCopyWithImpl<$Res, _$UnAuthorizedImpl>
    implements _$$UnAuthorizedImplCopyWith<$Res> {
  __$$UnAuthorizedImplCopyWithImpl(
      _$UnAuthorizedImpl _value, $Res Function(_$UnAuthorizedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiException
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UnAuthorizedImpl implements _UnAuthorized {
  const _$UnAuthorizedImpl();

  @override
  String toString() {
    return 'ApiException.unAuthorized()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnAuthorizedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverException,
    required TResult Function() unAuthorized,
    required TResult Function() unAuthenticated,
    required TResult Function() network,
    required TResult Function(String message) timeOut,
  }) {
    return unAuthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverException,
    TResult? Function()? unAuthorized,
    TResult? Function()? unAuthenticated,
    TResult? Function()? network,
    TResult? Function(String message)? timeOut,
  }) {
    return unAuthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverException,
    TResult Function()? unAuthorized,
    TResult Function()? unAuthenticated,
    TResult Function()? network,
    TResult Function(String message)? timeOut,
    required TResult orElse(),
  }) {
    if (unAuthorized != null) {
      return unAuthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerException value) serverException,
    required TResult Function(_UnAuthorized value) unAuthorized,
    required TResult Function(_UnAutheticated value) unAuthenticated,
    required TResult Function(_Network value) network,
    required TResult Function(_TimeOut value) timeOut,
  }) {
    return unAuthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerException value)? serverException,
    TResult? Function(_UnAuthorized value)? unAuthorized,
    TResult? Function(_UnAutheticated value)? unAuthenticated,
    TResult? Function(_Network value)? network,
    TResult? Function(_TimeOut value)? timeOut,
  }) {
    return unAuthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerException value)? serverException,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_UnAutheticated value)? unAuthenticated,
    TResult Function(_Network value)? network,
    TResult Function(_TimeOut value)? timeOut,
    required TResult orElse(),
  }) {
    if (unAuthorized != null) {
      return unAuthorized(this);
    }
    return orElse();
  }
}

abstract class _UnAuthorized implements ApiException {
  const factory _UnAuthorized() = _$UnAuthorizedImpl;
}

/// @nodoc
abstract class _$$UnAutheticatedImplCopyWith<$Res> {
  factory _$$UnAutheticatedImplCopyWith(_$UnAutheticatedImpl value,
          $Res Function(_$UnAutheticatedImpl) then) =
      __$$UnAutheticatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnAutheticatedImplCopyWithImpl<$Res>
    extends _$ApiExceptionCopyWithImpl<$Res, _$UnAutheticatedImpl>
    implements _$$UnAutheticatedImplCopyWith<$Res> {
  __$$UnAutheticatedImplCopyWithImpl(
      _$UnAutheticatedImpl _value, $Res Function(_$UnAutheticatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiException
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UnAutheticatedImpl implements _UnAutheticated {
  const _$UnAutheticatedImpl();

  @override
  String toString() {
    return 'ApiException.unAuthenticated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnAutheticatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverException,
    required TResult Function() unAuthorized,
    required TResult Function() unAuthenticated,
    required TResult Function() network,
    required TResult Function(String message) timeOut,
  }) {
    return unAuthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverException,
    TResult? Function()? unAuthorized,
    TResult? Function()? unAuthenticated,
    TResult? Function()? network,
    TResult? Function(String message)? timeOut,
  }) {
    return unAuthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverException,
    TResult Function()? unAuthorized,
    TResult Function()? unAuthenticated,
    TResult Function()? network,
    TResult Function(String message)? timeOut,
    required TResult orElse(),
  }) {
    if (unAuthenticated != null) {
      return unAuthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerException value) serverException,
    required TResult Function(_UnAuthorized value) unAuthorized,
    required TResult Function(_UnAutheticated value) unAuthenticated,
    required TResult Function(_Network value) network,
    required TResult Function(_TimeOut value) timeOut,
  }) {
    return unAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerException value)? serverException,
    TResult? Function(_UnAuthorized value)? unAuthorized,
    TResult? Function(_UnAutheticated value)? unAuthenticated,
    TResult? Function(_Network value)? network,
    TResult? Function(_TimeOut value)? timeOut,
  }) {
    return unAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerException value)? serverException,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_UnAutheticated value)? unAuthenticated,
    TResult Function(_Network value)? network,
    TResult Function(_TimeOut value)? timeOut,
    required TResult orElse(),
  }) {
    if (unAuthenticated != null) {
      return unAuthenticated(this);
    }
    return orElse();
  }
}

abstract class _UnAutheticated implements ApiException {
  const factory _UnAutheticated() = _$UnAutheticatedImpl;
}

/// @nodoc
abstract class _$$NetworkImplCopyWith<$Res> {
  factory _$$NetworkImplCopyWith(
          _$NetworkImpl value, $Res Function(_$NetworkImpl) then) =
      __$$NetworkImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NetworkImplCopyWithImpl<$Res>
    extends _$ApiExceptionCopyWithImpl<$Res, _$NetworkImpl>
    implements _$$NetworkImplCopyWith<$Res> {
  __$$NetworkImplCopyWithImpl(
      _$NetworkImpl _value, $Res Function(_$NetworkImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiException
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NetworkImpl implements _Network {
  const _$NetworkImpl();

  @override
  String toString() {
    return 'ApiException.network()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NetworkImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverException,
    required TResult Function() unAuthorized,
    required TResult Function() unAuthenticated,
    required TResult Function() network,
    required TResult Function(String message) timeOut,
  }) {
    return network();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverException,
    TResult? Function()? unAuthorized,
    TResult? Function()? unAuthenticated,
    TResult? Function()? network,
    TResult? Function(String message)? timeOut,
  }) {
    return network?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverException,
    TResult Function()? unAuthorized,
    TResult Function()? unAuthenticated,
    TResult Function()? network,
    TResult Function(String message)? timeOut,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerException value) serverException,
    required TResult Function(_UnAuthorized value) unAuthorized,
    required TResult Function(_UnAutheticated value) unAuthenticated,
    required TResult Function(_Network value) network,
    required TResult Function(_TimeOut value) timeOut,
  }) {
    return network(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerException value)? serverException,
    TResult? Function(_UnAuthorized value)? unAuthorized,
    TResult? Function(_UnAutheticated value)? unAuthenticated,
    TResult? Function(_Network value)? network,
    TResult? Function(_TimeOut value)? timeOut,
  }) {
    return network?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerException value)? serverException,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_UnAutheticated value)? unAuthenticated,
    TResult Function(_Network value)? network,
    TResult Function(_TimeOut value)? timeOut,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(this);
    }
    return orElse();
  }
}

abstract class _Network implements ApiException {
  const factory _Network() = _$NetworkImpl;
}

/// @nodoc
abstract class _$$TimeOutImplCopyWith<$Res> {
  factory _$$TimeOutImplCopyWith(
          _$TimeOutImpl value, $Res Function(_$TimeOutImpl) then) =
      __$$TimeOutImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$TimeOutImplCopyWithImpl<$Res>
    extends _$ApiExceptionCopyWithImpl<$Res, _$TimeOutImpl>
    implements _$$TimeOutImplCopyWith<$Res> {
  __$$TimeOutImplCopyWithImpl(
      _$TimeOutImpl _value, $Res Function(_$TimeOutImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$TimeOutImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TimeOutImpl implements _TimeOut {
  const _$TimeOutImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ApiException.timeOut(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeOutImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ApiException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeOutImplCopyWith<_$TimeOutImpl> get copyWith =>
      __$$TimeOutImplCopyWithImpl<_$TimeOutImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverException,
    required TResult Function() unAuthorized,
    required TResult Function() unAuthenticated,
    required TResult Function() network,
    required TResult Function(String message) timeOut,
  }) {
    return timeOut(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverException,
    TResult? Function()? unAuthorized,
    TResult? Function()? unAuthenticated,
    TResult? Function()? network,
    TResult? Function(String message)? timeOut,
  }) {
    return timeOut?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverException,
    TResult Function()? unAuthorized,
    TResult Function()? unAuthenticated,
    TResult Function()? network,
    TResult Function(String message)? timeOut,
    required TResult orElse(),
  }) {
    if (timeOut != null) {
      return timeOut(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerException value) serverException,
    required TResult Function(_UnAuthorized value) unAuthorized,
    required TResult Function(_UnAutheticated value) unAuthenticated,
    required TResult Function(_Network value) network,
    required TResult Function(_TimeOut value) timeOut,
  }) {
    return timeOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerException value)? serverException,
    TResult? Function(_UnAuthorized value)? unAuthorized,
    TResult? Function(_UnAutheticated value)? unAuthenticated,
    TResult? Function(_Network value)? network,
    TResult? Function(_TimeOut value)? timeOut,
  }) {
    return timeOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerException value)? serverException,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_UnAutheticated value)? unAuthenticated,
    TResult Function(_Network value)? network,
    TResult Function(_TimeOut value)? timeOut,
    required TResult orElse(),
  }) {
    if (timeOut != null) {
      return timeOut(this);
    }
    return orElse();
  }
}

abstract class _TimeOut implements ApiException {
  const factory _TimeOut({required final String message}) = _$TimeOutImpl;

  String get message;

  /// Create a copy of ApiException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimeOutImplCopyWith<_$TimeOutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
