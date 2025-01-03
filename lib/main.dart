import 'dart:async';

import 'package:cv/bootstrap.dart';
import 'package:cv/src/core/envs/dev_env.dart';
import 'package:cv/src/core/logger/logger.dart';
import 'src/core/base/env.dart';

/// Bootstraps project with early initialization
/// with [DevelopmentEnv()] Environment configurations
void main() => runZonedGuarded(() {
      bootstrap(
        createEnv: () => Env.instance.createEnv(DevelopmentEnv()),
      );
    }, (Object error, StackTrace stackTrace) => logger.i(error.toString()));