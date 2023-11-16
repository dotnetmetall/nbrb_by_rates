import 'package:logging/logging.dart';

interface class ILogTarget {
  void captureRecorde(LogRecord record) {
    throw UnimplementedError();
  }
}