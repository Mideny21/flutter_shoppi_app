import 'package:injectable/injectable.dart';
import 'env_config.dart';

@Environment('dev')
@LazySingleton(as: EnvConfig)
class DevEnvConfig implements EnvConfig {
  @override
  String get baseUrl => 'https://api-dev.example.com';

  @override
  int get connectTimeout => 30000;

  @override
  int get receiveTimeout => 30000;

  @override
  bool get enableLogging => true;

  @override
  Map<String, String> get defaultHeaders => {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
  };
}
