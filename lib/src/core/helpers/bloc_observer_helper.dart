import 'package:cv/src/core/logger/logger.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocObserverHelper extends BlocObserver {
  @override
  Future<void> onChange(BlocBase bloc, Change change) async {
    super.onChange(bloc, change);
    logger.i('onChange(${bloc.runtimeType}, $change)');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    logger.e('onError(${bloc.runtimeType}, $error, $stackTrace)');
    super.onError(bloc, error, stackTrace);
  }
}
