import 'dart:async';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class InternetConnectionHelper {
  static final InternetConnectionChecker _internetChecker =
      InternetConnectionChecker();

  static Future<bool> checkConnection() async {
    return await _internetChecker.hasConnection;
  }
}
