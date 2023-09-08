import 'package:intl/intl.dart';

String dateToMonthDate(DateTime date) {
  return DateFormat('dd MMM yyyy').format(date);
}
