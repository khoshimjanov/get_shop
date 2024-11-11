import 'package:intl/intl.dart';

String convertTime(String timestamp) {
  DateTime parsedDate = DateTime.parse(timestamp);

  String formattedDate = DateFormat('yyyy.MM.dd').format(parsedDate);

  return formattedDate;
}
