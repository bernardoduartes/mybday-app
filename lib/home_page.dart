import 'dart:math';

import 'package:flutter/material.dart';

import 'components/establishment/establishment_list.dart';
import 'models/establishment.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Establishment> _establishment = [
    Establishment(
      id: Random().nextDouble().toString(),
      title: 'Compra ${Random().nextDouble().toString()}',
      value: Random().nextDouble(),
      date: DateTime.now(),
    ),
    Establishment(
      id: Random().nextDouble().toString(),
      title: 'Compra ${Random().nextDouble().toString()}',
      value: Random().nextDouble(),
      date: DateTime.now(),
    ),
    Establishment(
      id: Random().nextDouble().toString(),
      title: 'Compra ${Random().nextDouble().toString()}',
      value: Random().nextDouble(),
      date: DateTime.now(),
    ),
    Establishment(
      id: Random().nextDouble().toString(),
      title: 'Compra ${Random().nextDouble().toString()}',
      value: Random().nextDouble(),
      date: DateTime.now(),
    ),
    Establishment(
      id: Random().nextDouble().toString(),
      title: 'Compra ${Random().nextDouble().toString()}',
      value: Random().nextDouble(),
      date: DateTime.now(),
    ),
    Establishment(
      id: Random().nextDouble().toString(),
      title: 'Compra ${Random().nextDouble().toString()}',
      value: Random().nextDouble(),
      date: DateTime.now(),
    ),
    Establishment(
      id: Random().nextDouble().toString(),
      title: 'Compra ${Random().nextDouble().toString()}',
      value: Random().nextDouble(),
      date: DateTime.now(),
    ),
    Establishment(
      id: Random().nextDouble().toString(),
      title: 'Compra ${Random().nextDouble().toString()}',
      value: Random().nextDouble(),
      date: DateTime.now(),
    ),
    Establishment(
      id: Random().nextDouble().toString(),
      title: 'Compra ${Random().nextDouble().toString()}',
      value: Random().nextDouble(),
      date: DateTime.now(),
    ),
    Establishment(
      id: Random().nextDouble().toString(),
      title: 'Compra ${Random().nextDouble().toString()}',
      value: Random().nextDouble(),
      date: DateTime.now(),
    ),
    Establishment(
      id: Random().nextDouble().toString(),
      title: 'Compra ${Random().nextDouble().toString()}',
      value: Random().nextDouble(),
      date: DateTime.now(),
    ),
    Establishment(
      id: Random().nextDouble().toString(),
      title: 'Compra ${Random().nextDouble().toString()}',
      value: Random().nextDouble(),
      date: DateTime.now(),
    ),
    Establishment(
      id: Random().nextDouble().toString(),
      title: 'Compra ${Random().nextDouble().toString()}',
      value: Random().nextDouble(),
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
      title: title,
      value: value,
      date: selectedDate,
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
    final mediaQuery = MediaQuery.of(context);
    bool isLandscape = mediaQuery.orientation == Orientation.landscape;

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
              height: availableHeight * 0.05,
              child: Center(
                child: Text("filtro"),
              ),
            ),
            Container(
              height: availableHeight * 0.95,
              child: EstablishmentList(_establishment, _removeEstablishment),
            ),
          ],
        ),
      ),
    );
  }
}
