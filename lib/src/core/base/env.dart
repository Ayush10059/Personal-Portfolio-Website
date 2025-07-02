abstract class EnvVars {
  String get apiKey;
  String get authDomainKey;
  String get projectIdKey;
  String get storageBucketKey;
  String get messagingSenderIdKey;
  String get appIdKey;
  String get measurementIdKey;
  String get mongoDbConnectionString;
  String get mongoDbName;
}

class Env implements EnvVars {
  Env._();

  static Env? _instance;
  late EnvVars _env;

  /// Returns an instance using the default [Env].
  static Env get instance {
    _instance ??= Env._();
    return _instance!;
  }

  void createEnv(EnvVars incomingEnv) => _env = incomingEnv;

  @override
  String get apiKey => _env.apiKey;

  @override
  String get authDomainKey => _env.authDomainKey;

  @override
  String get projectIdKey => _env.projectIdKey;

  @override
  String get storageBucketKey => _env.storageBucketKey;

  @override
  String get messagingSenderIdKey => _env.messagingSenderIdKey;

  @override
  String get appIdKey => _env.appIdKey;

  @override
  String get measurementIdKey => _env.measurementIdKey;

  @override
  String get mongoDbConnectionString => _env.mongoDbConnectionString;

  @override
  String get mongoDbName => _env.mongoDbName;
}
