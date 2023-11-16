import 'package:logging/logging.dart';
import 'targets/logcat_target.dart';

final _targets = [LogcatTarget()];

void configureLogger() {
  Logger.root.onRecord.listen((event) {
    for (var target in _targets) {
      target.captureRecorde(event);
    }
  });
}
