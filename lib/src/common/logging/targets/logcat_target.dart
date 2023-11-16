import 'dart:developer';
import 'package:logging/src/log_record.dart';
import '../log_target.dart';

class LogcatTarget implements ILogTarget {
  @override
  void captureRecorde(LogRecord record) {
    log(
      record.message,
      name: record.loggerName,
      error: record.error,
      level: record.level.value,
      stackTrace: record.stackTrace,
    );
  }
}
