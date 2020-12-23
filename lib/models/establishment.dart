import 'package:flutter/foundation.dart';

class Establishment {
  final String id;
  final String title;
  final double value;
  final DateTime date;

  Establishment({
    @required this.id,
    @required this.title,
    @required this.value,
    @required this.date,
  });
}
