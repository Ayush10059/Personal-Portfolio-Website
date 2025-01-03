// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppError {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverError,
    required TResult Function() unAuthorized,
    required TResult Function() unAuthenticated,
    required TResult Function() noInternet,
    required TResult Function(String message) timeOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverError,
    TResult? Function()? unAuthorized,
    TResult? Function()? unAuthenticated,
    TResult? Function()? noInternet,
    TResult? Function(String message)? timeOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverError,
    TResult Function()? unAuthorized,
    TResult Function()? unAuthenticated,
    TResult Function()? noInternet,
    TResult Function(String message)? timeOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_UnAuthorized value) unAuthorized,
    required TResult Function(_UnAuthenticated value) unAuthenticated,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_TimeOut value) timeOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_UnAuthorized value)? unAuthorized,
    TResult? Function(_UnAuthenticated value)? unAuthenticated,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_TimeOut value)? timeOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_TimeOut value)? timeOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppErrorCopyWith<$Res> {
  factory $AppErrorCopyWith(AppError value, $Res Function(AppError) then) =
      _$AppErrorCopyWithImpl<$Res, AppError>;
}

/// @nodoc
class _$AppErrorCopyWithImpl<$Res, $Val extends AppError>
    implements $AppErrorCopyWith<$Res> {
  _$AppErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ServerErrorImplCopyWith<$Res> {
  factory _$$ServerErrorImplCopyWith(
          _$ServerErrorImpl value, $Res Function(_$ServerErrorImpl) then) =
      __$$ServerErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ServerErrorImplCopyWithImpl<$Res>
    extends _$AppErrorCopyWithImpl<$Res, _$ServerErrorImpl>
    implements _$$ServerErrorImplCopyWith<$Res> {
  __$$ServerErrorImplCopyWithImpl(
      _$ServerErrorImpl _value, $Res Function(_$ServerErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ServerErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ServerErrorImpl implements _ServerError {
  const _$ServerErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'AppError.serverError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerErrorImplCopyWith<_$ServerErrorImpl> get copyWith =>
      __$$ServerErrorImplCopyWithImpl<_$ServerErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverError,
    required TResult Function() unAuthorized,
    required TResult Function() unAuthenticated,
    required TResult Function() noInternet,
    required TResult Function(String message) timeOut,
  }) {
    return serverError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverError,
    TResult? Function()? unAuthorized,
    TResult? Function()? unAuthenticated,
    TResult? Function()? noInternet,
    TResult? Function(String message)? timeOut,
  }) {
    return serverError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverError,
    TResult Function()? unAuthorized,
    TResult Function()? unAuthenticated,
    TResult Function()? noInternet,
    TResult Function(String message)? timeOut,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_UnAuthorized value) unAuthorized,
    required TResult Function(_UnAuthenticated value) unAuthenticated,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_TimeOut value) timeOut,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_UnAuthorized value)? unAuthorized,
    TResult? Function(_UnAuthenticated value)? unAuthenticated,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_TimeOut value)? timeOut,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_TimeOut value)? timeOut,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements AppError {
  const factory _ServerError({required final String message}) =
      _$ServerErrorImpl;

  String get message;

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServerErrorImplCopyWith<_$ServerErrorImpl> get copyWith =>
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
    extends _$AppErrorCopyWithImpl<$Res, _$UnAuthorizedImpl>
    implements _$$UnAuthorizedImplCopyWith<$Res> {
  __$$UnAuthorizedImplCopyWithImpl(
      _$UnAuthorizedImpl _value, $Res Function(_$UnAuthorizedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UnAuthorizedImpl implements _UnAuthorized {
  const _$UnAuthorizedImpl();

  @override
  String toString() {
    return 'AppError.unAuthorized()';
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
    required TResult Function(String message) serverError,
    required TResult Function() unAuthorized,
    required TResult Function() unAuthenticated,
    required TResult Function() noInternet,
    required TResult Function(String message) timeOut,
  }) {
    return unAuthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverError,
    TResult? Function()? unAuthorized,
    TResult? Function()? unAuthenticated,
    TResult? Function()? noInternet,
    TResult? Function(String message)? timeOut,
  }) {
    return unAuthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverError,
    TResult Function()? unAuthorized,
    TResult Function()? unAuthenticated,
    TResult Function()? noInternet,
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
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_UnAuthorized value) unAuthorized,
    required TResult Function(_UnAuthenticated value) unAuthenticated,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_TimeOut value) timeOut,
  }) {
    return unAuthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_UnAuthorized value)? unAuthorized,
    TResult? Function(_UnAuthenticated value)? unAuthenticated,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_TimeOut value)? timeOut,
  }) {
    return unAuthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_TimeOut value)? timeOut,
    required TResult orElse(),
  }) {
    if (unAuthorized != null) {
      return unAuthorized(this);
    }
    return orElse();
  }
}

abstract class _UnAuthorized implements AppError {
  const factory _UnAuthorized() = _$UnAuthorizedImpl;
}

/// @nodoc
abstract class _$$UnAuthenticatedImplCopyWith<$Res> {
  factory _$$UnAuthenticatedImplCopyWith(_$UnAuthenticatedImpl value,
          $Res Function(_$UnAuthenticatedImpl) then) =
      __$$UnAuthenticatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnAuthenticatedImplCopyWithImpl<$Res>
    extends _$AppErrorCopyWithImpl<$Res, _$UnAuthenticatedImpl>
    implements _$$UnAuthenticatedImplCopyWith<$Res> {
  __$$UnAuthenticatedImplCopyWithImpl(
      _$UnAuthenticatedImpl _value, $Res Function(_$UnAuthenticatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UnAuthenticatedImpl implements _UnAuthenticated {
  const _$UnAuthenticatedImpl();

  @override
  String toString() {
    return 'AppError.unAuthenticated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnAuthenticatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverError,
    required TResult Function() unAuthorized,
    required TResult Function() unAuthenticated,
    required TResult Function() noInternet,
    required TResult Function(String message) timeOut,
  }) {
    return unAuthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverError,
    TResult? Function()? unAuthorized,
    TResult? Function()? unAuthenticated,
    TResult? Function()? noInternet,
    TResult? Function(String message)? timeOut,
  }) {
    return unAuthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverError,
    TResult Function()? unAuthorized,
    TResult Function()? unAuthenticated,
    TResult Function()? noInternet,
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
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_UnAuthorized value) unAuthorized,
    required TResult Function(_UnAuthenticated value) unAuthenticated,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_TimeOut value) timeOut,
  }) {
    return unAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_UnAuthorized value)? unAuthorized,
    TResult? Function(_UnAuthenticated value)? unAuthenticated,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_TimeOut value)? timeOut,
  }) {
    return unAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_TimeOut value)? timeOut,
    required TResult orElse(),
  }) {
    if (unAuthenticated != null) {
      return unAuthenticated(this);
    }
    return orElse();
  }
}

abstract class _UnAuthenticated implements AppError {
  const factory _UnAuthenticated() = _$UnAuthenticatedImpl;
}

/// @nodoc
abstract class _$$NoInternetImplCopyWith<$Res> {
  factory _$$NoInternetImplCopyWith(
          _$NoInternetImpl value, $Res Function(_$NoInternetImpl) then) =
      __$$NoInternetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoInternetImplCopyWithImpl<$Res>
    extends _$AppErrorCopyWithImpl<$Res, _$NoInternetImpl>
    implements _$$NoInternetImplCopyWith<$Res> {
  __$$NoInternetImplCopyWithImpl(
      _$NoInternetImpl _value, $Res Function(_$NoInternetImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NoInternetImpl implements _NoInternet {
  const _$NoInternetImpl();

  @override
  String toString() {
    return 'AppError.noInternet()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoInternetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverError,
    required TResult Function() unAuthorized,
    required TResult Function() unAuthenticated,
    required TResult Function() noInternet,
    required TResult Function(String message) timeOut,
  }) {
    return noInternet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverError,
    TResult? Function()? unAuthorized,
    TResult? Function()? unAuthenticated,
    TResult? Function()? noInternet,
    TResult? Function(String message)? timeOut,
  }) {
    return noInternet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverError,
    TResult Function()? unAuthorized,
    TResult Function()? unAuthenticated,
    TResult Function()? noInternet,
    TResult Function(String message)? timeOut,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_UnAuthorized value) unAuthorized,
    required TResult Function(_UnAuthenticated value) unAuthenticated,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_TimeOut value) timeOut,
  }) {
    return noInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_UnAuthorized value)? unAuthorized,
    TResult? Function(_UnAuthenticated value)? unAuthenticated,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_TimeOut value)? timeOut,
  }) {
    return noInternet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_TimeOut value)? timeOut,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(this);
    }
    return orElse();
  }
}

abstract class _NoInternet implements AppError {
  const factory _NoInternet() = _$NoInternetImpl;
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
    extends _$AppErrorCopyWithImpl<$Res, _$TimeOutImpl>
    implements _$$TimeOutImplCopyWith<$Res> {
  __$$TimeOutImplCopyWithImpl(
      _$TimeOutImpl _value, $Res Function(_$TimeOutImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppError
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
    return 'AppError.timeOut(message: $message)';
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

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeOutImplCopyWith<_$TimeOutImpl> get copyWith =>
      __$$TimeOutImplCopyWithImpl<_$TimeOutImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverError,
    required TResult Function() unAuthorized,
    required TResult Function() unAuthenticated,
    required TResult Function() noInternet,
    required TResult Function(String message) timeOut,
  }) {
    return timeOut(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverError,
    TResult? Function()? unAuthorized,
    TResult? Function()? unAuthenticated,
    TResult? Function()? noInternet,
    TResult? Function(String message)? timeOut,
  }) {
    return timeOut?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverError,
    TResult Function()? unAuthorized,
    TResult Function()? unAuthenticated,
    TResult Function()? noInternet,
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
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_UnAuthorized value) unAuthorized,
    required TResult Function(_UnAuthenticated value) unAuthenticated,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_TimeOut value) timeOut,
  }) {
    return timeOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_UnAuthorized value)? unAuthorized,
    TResult? Function(_UnAuthenticated value)? unAuthenticated,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_TimeOut value)? timeOut,
  }) {
    return timeOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_TimeOut value)? timeOut,
    required TResult orElse(),
  }) {
    if (timeOut != null) {
      return timeOut(this);
    }
    return orElse();
  }
}

abstract class _TimeOut implements AppError {
  const factory _TimeOut({required final String message}) = _$TimeOutImpl;

  String get message;

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimeOutImplCopyWith<_$TimeOutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
