import 'package:flutter/foundation.dart';

class Establishment {
  final String id;
  final String name;
  final String address;
  final String image;
  final DateTime date;

  Establishment({
    @required this.id,
    @required this.name,
    @required this.address,
    @required this.image,
    @required this.date,
  });
}
