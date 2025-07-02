import 'package:cv/src/core/base/env.dart';
import 'package:cv/src/core/constants/env_keys.dart';
import 'package:envied/envied.dart';

part 'dev_env.g.dart';

@Envied(name: EnvKeys.devEnv, path: EnvKeys.devEnvPath)
class DevelopmentEnv extends EnvVars {
  @override
  @EnviedField(varName: EnvKeys.apiKey, obfuscate: true)
  String apiKey = _DevelopmentEnv.apiKey;

  @override
  @EnviedField(varName: EnvKeys.authDomainKey, obfuscate: true)
  String authDomainKey = _DevelopmentEnv.authDomainKey;

  @override
  @EnviedField(varName: EnvKeys.projectIdKey, obfuscate: true)
  String projectIdKey = _DevelopmentEnv.projectIdKey;

  @override
  @EnviedField(varName: EnvKeys.storageBucketKey, obfuscate: true)
  String storageBucketKey = _DevelopmentEnv.storageBucketKey;

  @override
  @EnviedField(varName: EnvKeys.messagingSenderIdKey, obfuscate: true)
  String messagingSenderIdKey = _DevelopmentEnv.messagingSenderIdKey;

  @override
  @EnviedField(varName: EnvKeys.appIdKey, obfuscate: true)
  String appIdKey = _DevelopmentEnv.appIdKey;

  @override
  @EnviedField(varName: EnvKeys.measurementIdKey, obfuscate: true)
  String measurementIdKey = _DevelopmentEnv.measurementIdKey;

  @override
  @EnviedField(varName: EnvKeys.mongoDbConnectionString, obfuscate: true)
  String mongoDbConnectionString = _DevelopmentEnv.mongoDbConnectionString;

  @override
  @EnviedField(varName: EnvKeys.mongoDbName, obfuscate: true)
  String mongoDbName = _DevelopmentEnv.mongoDbName;
}
