import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

class LoggerService {
  static Logger _logger = Logger();

  static bool _releaseLoggingEnabled = false;

  static void init({bool enableReleaseLogging = false}) {
    _releaseLoggingEnabled = enableReleaseLogging;

    _logger = Logger(
      printer: PrettyPrinter(),
      filter: _CustomFilter(),
    );
  }

  static void logError(String message,
      [dynamic error, StackTrace? stackTrace]) {
    _logger.e(message, error, stackTrace);
  }

  static void logInfo(String message) {
    _logger.i(message);
  }

  static void logWarning(String message) {
    _logger.w(message);
  }

  static void logDebug(String message) {
    _logger.d(message);
  }
}

class _CustomFilter extends LogFilter {
  @override
  bool shouldLog(LogEvent event) {
    if (kDebugMode) {
      return true;
    }

    if (kReleaseMode) {
      return LoggerService._releaseLoggingEnabled;
    }

    return false;
  }
}
