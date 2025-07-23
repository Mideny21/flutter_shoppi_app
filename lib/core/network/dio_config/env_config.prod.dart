import 'package:injectable/injectable.dart';
import 'package:shoppi/core/network/dio_config/env_config.dart';

@Environment('prod')
@LazySingleton(as: EnvConfig)
class ProdEnvConfig implements EnvConfig {
  @override
  String get baseUrl => "https://api.themoviedb.org/3/";

  @override
  int get connectionTimeout => 30000;

  @override
  Map<String, String> get defaultHeaders => {
    "Content-Type": "application/json",
    "Accept": "application/json",
  };

  @override
  bool get enableLogging => false;

  @override
  int get receiveTimeout => 30000;
}
