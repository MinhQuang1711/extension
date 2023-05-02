import 'package:intl/intl.dart';

extension DateExtension on DateTime {
  String toDateFormat() {
    return DateFormat('dd/MM/yyyy').format(this);
  }
}
