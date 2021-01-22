import 'dart:math';

import 'package:flutter/material.dart';

import 'components/establishment/establishment_list.dart';
import 'models/establishment.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  _addEstablishment(double pixels) {
    fetchFive();
  }

  fetchFive() {
    for (int i = 0; i < 5; i++) {
      final newEstablishment = Establishment(
        id: Random().nextDouble().toString(),
        name: 'Trabuca Jardins',
        address: 'Rua Haddock Lobo, 870 - Cerqueira César, São Paulo - SP',
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7gAuw2fdrz45GRotSZd3cbO-c3KSH-laIlQ&usqp=CAU",
        date: DateTime.now(),
      );

      setState(() {
        Establishment.establishmentList.add(newEstablishment);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      title: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'mybday',
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
              child: EstablishmentList(
                  Establishment.establishmentList, _addEstablishment),
              //  child: HotelListView(),
              //child: Dogs(),
            ),
          ],
        ),
      ),
    );
  }
}
