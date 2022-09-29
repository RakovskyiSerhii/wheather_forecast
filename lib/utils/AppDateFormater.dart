import 'package:intl/intl.dart';

abstract class AppDateFormatter {
  static DateFormat apiDateFormat =
      DateFormat('yyyy-MM-ddTHH:mm:ssZ'); //2022-10-02T10:00:00Z

  static DateFormat appFormat = DateFormat('dd MMMM yyyy');
}
