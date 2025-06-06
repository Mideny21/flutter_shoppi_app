import 'package:injectable/injectable.dart';
import 'env_config.dart';

@Environment('dev')
@LazySingleton(as: EnvConfig)
class DevEnvConfig implements EnvConfig {
  @override
  String get baseUrl => 'http://192.168.8.25:3000/api/';

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
