import 'package:intl/intl.dart';

extension NumberExtension on num {
  String toFormattedString([String format = "###,###.####"]) {
    return NumberFormat(format).format(this);
  }
}