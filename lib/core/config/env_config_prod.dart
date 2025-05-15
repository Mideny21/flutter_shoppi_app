import 'package:injectable/injectable.dart';
import 'env_config.dart';

@Environment('prod')
@LazySingleton(as: EnvConfig)
class ProdEnvConfig implements EnvConfig {
  @override
  String get baseUrl => 'https://api.example.com';

  @override
  int get connectTimeout => 30000;

  @override
  int get receiveTimeout => 30000;

  @override
  bool get enableLogging => false;

  @override
  Map<String, String> get defaultHeaders => {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
  };
}
