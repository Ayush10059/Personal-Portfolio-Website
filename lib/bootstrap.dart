import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cv/src/core/base/env.dart';
import 'package:cv/src/core/di/injector.dart';
import 'package:cv/src/core/helpers/bloc_observer_helper.dart';
import 'package:cv/src/core/logger/logger.dart';
import 'package:cv/src/app/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

Future<void> bootstrap({
  required FutureOr<void> Function() createEnv,
}) async {
  // 1. Initialize Flutter binding
  WidgetsFlutterBinding.ensureInitialized();

  // 2. Setup error handling
  FlutterError.onError = (FlutterErrorDetails details) {
    logger.e(details.exceptionAsString(),
        error: details.exception, stackTrace: details.stack);
  };

  await createEnv();

  await _initializeFirebase();

  configureInjection();

  Bloc.observer = BlocObserverHelper();

  runApp(App());
}

Future<void> _initializeFirebase() async {
  try {
    if (kIsWeb) {
      // Additional web-specific initialization if needed
      await _initializeFirebaseWeb();
    } else {
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
    }
    logger.i('Firebase initialized successfully');

    // Verify Firebase services are properly initialized
    await _verifyFirebaseServices();
  } catch (e, stack) {
    logger.e('Failed to initialize Firebase', error: e, stackTrace: stack);
    // Consider adding a fallback or retry mechanism here
    rethrow;
  }
}

Future<void> _initializeFirebaseWeb() async {
  try {
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
  } catch (e) {
    logger.e('Web-specific Firebase initialization failed', error: e);
    rethrow;
  }
}

Future<void> _verifyFirebaseServices() async {
  try {
    // Add basic verification that Firebase services are working
    // For example, try a simple Firestore operation
    final firestore = FirebaseFirestore.instance;
    await firestore.collection('test_connection').limit(1).get();
  } catch (e) {
    logger.w('Firebase services verification failed', error: e);
    // This is non-critical, so we don't rethrow
  }
}
