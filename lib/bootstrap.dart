import 'dart:async';

import 'package:cv/src/core/base/env.dart';
import 'package:cv/src/core/di/injector.dart';
import 'package:cv/src/core/helpers/bloc_observer_helper.dart';
import 'package:cv/src/core/logger/logger.dart';
import 'package:cv/src/pages/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_core/firebase_core.dart';

void bootstrap({
  required Function() createEnv,
}) async {
  /// Bloc state observer
  Bloc.observer = BlocObserverHelper();

  /// Flutter run time error display
  FlutterError.onError = (FlutterErrorDetails details) {
    logger.e(details.exceptionAsString(),
        error: details.exception, stackTrace: details.stack);
  };

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: Env.instance.apiKey,
      authDomain: Env.instance.authDomainKey,
      projectId: Env.instance.projectIdKey,
      storageBucket: Env.instance.storageBucketKey,
      messagingSenderId: Env.instance.messagingSenderIdKey, 
      appId: Env.instance.appIdKey,
      measurementId: Env.instance.measurementIdKey,
    ),
  );

  createEnv();

  /// Configure DI
  configureInjection();

  /// Runs error on own error zone
  Future.delayed(const Duration(milliseconds: 500), () => runApp(App()));
}