import 'package:logger/logger.dart';

class AppLogger {
  static final AppLogger _instance = AppLogger._internal();
  factory AppLogger() => _instance;
  AppLogger._internal();

  final logger = Logger(
    printer: PrettyPrinter(
      methodCount: 2, // Number of method calls to be displayed
      errorMethodCount: 8, // Number of method calls if stacktrace is provided
      lineLength: 120, // Width of the output
      colors: true, // Colorful log messages
      printEmojis: true, // Print an emoji for each log message
      // Should each log print contain a timestamp
      dateTimeFormat: DateTimeFormat.onlyTimeAndSinceStart,
    ),
    // You can customize the default level filter (defaults to all in debug mode)
    level: Level.debug,
  );

  void v(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    logger.t("🔍 $message", error: error, stackTrace: stackTrace);
  }

  void d(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    logger.d("🐛 $message", error: error, stackTrace: stackTrace);
  }

  void i(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    logger.i("💡 $message", error: error, stackTrace: stackTrace);
  }

  void w(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    logger.w("⚠️ $message", error: error, stackTrace: stackTrace);
  }

  void e(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    logger.e("❌ $message", error: error, stackTrace: stackTrace);
  }

  void wtf(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    logger.f("💥 $message", error: error, stackTrace: stackTrace);
  }
}

// Create a global instance for easy access throughout the app
final log = AppLogger();
