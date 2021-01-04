import 'dart:math';

import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

import 'HotelListView.dart';
import 'components/establishment/establishment_list.dart';
import 'hotel_app_theme.dart';
import 'models/establishment.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Establishment> _establishment = [
    Establishment(
      id: Random().nextDouble().toString(),
      name: 'Trabuca Jardins',
      address: 'Rua Haddock Lobo, 870 - Cerqueira César, São Paulo - SP',
      image:
          "https://www.agitossp.com.br/wp-content/uploads/2019/02/index_strip_321327_0_full.jpg",
      date: DateTime.now(),
    ),
    Establishment(
      id: Random().nextDouble().toString(),
      name: 'Trabuca Jardins',
      address: 'Rua Haddock Lobo, 870 - Cerqueira César, São Paulo - SP',
      image:
          "https://www.agitossp.com.br/wp-content/uploads/2019/02/index_strip_321327_0_full.jpg",
      date: DateTime.now(),
    ),
    Establishment(
      id: Random().nextDouble().toString(),
      name: 'Trabuca Jardins',
      address: 'Rua Haddock Lobo, 870 - Cerqueira César, São Paulo - SP',
      image:
          "https://www.agitossp.com.br/wp-content/uploads/2019/02/index_strip_321327_0_full.jpg",
      date: DateTime.now(),
    ),
    Establishment(
      id: Random().nextDouble().toString(),
      name: 'Trabuca Jardins',
      address: 'Rua Haddock Lobo, 870 - Cerqueira César, São Paulo - SP',
      image:
          "https://www.agitossp.com.br/wp-content/uploads/2019/02/index_strip_321327_0_full.jpg",
      date: DateTime.now(),
    ),
  ];

  List<Establishment> get _recentTransactions {
    return _establishment.where((tr) {
      return tr.date.isAfter(DateTime.now().subtract(
        Duration(days: 7),
      ));
    }).toList();
  }

  _addEstablishment(String title, double value, DateTime selectedDate) {
    final newEstablishment = Establishment(
      id: Random().nextDouble().toString(),
      name: 'Trabuca Jardins',
      address: 'Rua Haddock Lobo, 870 - Cerqueira César, São Paulo - SP',
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7gAuw2fdrz45GRotSZd3cbO-c3KSH-laIlQ&usqp=CAU",
      date: DateTime.now(),
    );

    setState(() {
      _establishment.add(newEstablishment);
    });

    Navigator.of(context).pop();
  }

  _removeEstablishment(String id) {
    print('_removeEstablishment');
  }

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      title: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Mybday APP',
            style: TextStyle(
              fontSize: 20 * MediaQuery.of(context).textScaleFactor,
            ),
          ),
        ],
      ),
    );

    final availableHeight = MediaQuery.of(context).size.height -
        appBar.preferredSize.height -
        MediaQuery.of(context).padding.top;

    return Scaffold(
      appBar: appBar,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              color: Colors.blue,
              height: availableHeight * 0.08,
              child: Text('filtro'),
            ),
            //HotelListView(),
            Container(
              height: availableHeight * 0.92,
              child: EstablishmentList(_establishment, _removeEstablishment),
              //  child: HotelListView(),
            ),
          ],
        ),
      ),
    );
  }
}
