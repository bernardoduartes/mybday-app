import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'components/establishment/establishment_list_controller.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Mybday APP'),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: Card(
                color: Colors.blue,
                child: Text('Filter'),
                elevation: 5,
              ),
            ),
            EstablishmentListController(),
          ],
        ),
      ),
    );
  }
}
