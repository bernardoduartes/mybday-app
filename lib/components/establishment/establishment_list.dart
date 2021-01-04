import 'package:flutter/material.dart';
import 'package:mybday_app/components/establishment/establishment_card.dart';
import 'package:mybday_app/models/establishment.dart';

class EstablishmentList extends StatelessWidget {
  final List<Establishment> establishments;
  final void Function(String) onPressed;

  EstablishmentList(
    this.establishments,
    this.onPressed,
  );

  @override
  Widget build(BuildContext context) {
    return establishments.isEmpty
        ? LayoutBuilder(
            builder: (ctx, constraints) {
              return Column(
                children: <Widget>[
                  SizedBox(height: 20),
                  Text(
                    'Nenhuma Transação Cadastrada!',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: constraints.maxHeight * 0.6,
                    child: Image.asset(
                      'assets/images/waiting.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              );
            },
          )
        : ListView.builder(
            itemCount: establishments.length,
            itemBuilder: (ctx, index) {
              return Container(
                height: 328,
                child: EstablishmentCard(
                  establishment: establishments[index],
                ),
              );
            },
          );
  }
}
