import 'package:intl/intl.dart';

extension FormatDate on DateTime {
  String format(String format) => DateFormat(format).format(this);
}
