import 'package:injectable/injectable.dart';
import 'package:shoppi/core/network/dio_config/env_config.dart';

@Environment('dev')
@LazySingleton(as: EnvConfig)
class DevEnvConfig implements EnvConfig {
  @override
  // String get baseUrl => "http://192.168.0.32:3000/api/";
  String get baseUrl => "http://192.168.173.186:3000/api/";

  @override
  int get connectionTimeout => 30000;

  @override
  Map<String, String> get defaultHeaders => {
    "Content-Type": "application/json",
    "Accept": "application/json",
  };

  @override
  bool get enableLogging => true;

  @override
  int get receiveTimeout => 30000;
}
