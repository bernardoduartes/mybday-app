import 'package:flutter/material.dart';
import 'package:mybday_app/components/establishment/establishment_list.dart';
import 'package:mybday_app/models/establishment.dart';

class EstablishmentListController extends StatefulWidget {
  @override
  _EstablishmentListControllerState createState() =>
      _EstablishmentListControllerState();
}

class _EstablishmentListControllerState
    extends State<EstablishmentListController> {
  final _establishments = getEstablishmentList();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        EstablishmentList(_establishments),
      ],
    );
  }
}

List<Establishment> getEstablishmentList() {
  List<Establishment> list = new List<Establishment>();
  for (var i = 0; i < 20; i++) {
    list.add(Establishment(
      id: 't1',
      title: 'Novo Tênis de Corrida',
      value: 310.76,
      date: DateTime.now(),
    ));
  }

  return list;
}
