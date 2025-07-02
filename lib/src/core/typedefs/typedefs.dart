import 'package:cv/src/core/errors/app_error.dart';
import 'package:fpdart/fpdart.dart';

typedef EitherResponse<T> = Future<Either<AppError, T>>;
