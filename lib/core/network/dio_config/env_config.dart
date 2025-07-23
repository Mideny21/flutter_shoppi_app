class EnvConfig {
  final String baseUrl;
  final int connectionTimeout;
  final int receiveTimeout;
  final bool enableLogging;
  final Map<String, String> defaultHeaders;

  const EnvConfig({
    required this.baseUrl,
    this.connectionTimeout = 30000,
    this.receiveTimeout = 30000,
    this.enableLogging = false,
    this.defaultHeaders = const {},
  });
}
