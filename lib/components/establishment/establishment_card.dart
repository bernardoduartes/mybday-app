import 'package:flutter/material.dart';
import 'package:mybday_app/models/establishment.dart';

class EstablishmentCard extends StatelessWidget {
  final Establishment establishment;

  EstablishmentCard({this.establishment});

  @override
  Widget build(BuildContext context) {
    return Card(
      //clipBehavior: Clip.antiAliasWithSaveLayer,
      elevation: 2.0,
      color: Colors.white,
      margin: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(4.0),
              ),
              child: Image(
                height: 164,
                fit: BoxFit.fitWidth,
                image: NetworkImage(establishment.image),
              ),
            ),
          ),
/*
          ListTile(
            leading: ClipOval(
              child: Image.network(
                establishment.image,
                fit: BoxFit.cover,
                width: 50,
                height: 50,
              ),
            ),
            title: Text(
              establishment.name,
              style: Theme.of(context).textTheme.headline6,
            ),
            subtitle: Text(
              establishment.address,
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),*/
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ClipOval(
                      child: Image(
                        height: 32.0,
                        width: 32.0,
                        fit: BoxFit.cover,
                        image: NetworkImage(establishment.image),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            establishment.name,
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          SizedBox(height: 5),
                          Text(
                            establishment.address,
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 5),
                Text(
                  "Japonesa # rodízio",
                  style: Theme.of(context).textTheme.subtitle1,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/*

              return Card(
                elevation: 5,
                margin: EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 5,
                ),
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    child: Padding(
                      padding: const EdgeInsets.all(6),
                      child: FittedBox(
                        child: Text('R\$${tr.value}'),
                      ),
                    ),
                  ),
                  title: Text(
                    tr.title,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  subtitle: Text(
                    DateFormat('d MMM y').format(tr.date),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    color: Theme.of(context).errorColor,
                    onPressed: () => onPressed(tr.id),
                  ),
                ),
              );
              */
