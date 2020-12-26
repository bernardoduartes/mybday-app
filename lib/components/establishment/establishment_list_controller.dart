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
  return [
    Establishment(
      id: 't1',
      title: 'Novo Tênis de Corrida',
      value: 310.76,
      date: DateTime.now(),
    ),
    Establishment(
      id: 't2',
      title: 'Conta de Luz',
      value: 211.30,
      date: DateTime.now(),
    ),
    Establishment(
      id: 't2',
      title: 'Conta de Luz',
      value: 211.30,
      date: DateTime.now(),
    ),
    Establishment(
      id: 't2',
      title: 'Conta de Luz',
      value: 211.30,
      date: DateTime.now(),
    ),
    Establishment(
      id: 't2',
      title: 'Conta de Luz',
      value: 211.30,
      date: DateTime.now(),
    ),
    Establishment(
      id: 't2',
      title: 'Conta de Luz',
      value: 211.30,
      date: DateTime.now(),
    ),
    Establishment(
      id: 't2',
      title: 'Conta de Luz',
      value: 211.30,
      date: DateTime.now(),
    ),
    Establishment(
      id: 't2',
      title: 'Conta de Luz',
      value: 211.30,
      date: DateTime.now(),
    ),
    Establishment(
      id: 't2',
      title: 'Conta de Luz',
      value: 211.30,
      date: DateTime.now(),
    ),
    Establishment(
      id: 't2',
      title: 'Conta de Luz',
      value: 211.30,
      date: DateTime.now(),
    ),
  ];
}
