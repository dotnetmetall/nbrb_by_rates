import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  static final DateFormat _dateOnlyFormat = DateFormat('dd.MM.yy');

  String toDateOnlyString(){
    return _dateOnlyFormat.format(this);
  }
}