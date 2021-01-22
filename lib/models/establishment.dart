import 'dart:math';

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

  static get establishmentList {
    return [
      Establishment(
        id: Random().nextDouble().toString(),
        name: 'Trabuca Jardins',
        address: 'Rua Haddock Lobo, 870 - Cerqueira César, São Paulo - SP',
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7gAuw2fdrz45GRotSZd3cbO-c3KSH-laIlQ&usqp=CAU",
        date: DateTime.now(),
      )
    ];
  }
}
