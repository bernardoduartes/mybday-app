import 'package:flutter/material.dart';
import 'package:mybday_app/models/establishment.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

import '../../hotel_app_theme.dart';

class EstablishmentCard extends StatelessWidget {
  final Establishment establishment;

  EstablishmentCard({this.establishment});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      elevation: 2.0,
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: [
          ClipRRect(
            /*
            borderRadius: const BorderRadius.all(
              Radius.circular(6.0),
            ),
            */
            child: Stack(
              children: [
                Container(
                  height: 164,
                  width: MediaQuery.of(context).size.width,
                  child: AspectRatio(
                    aspectRatio: 2.0,
                    child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7gAuw2fdrz45GRotSZd3cbO-c3KSH-laIlQ&usqp=CAU',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(32.0),
                      ),
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.favorite_border,
                          // color: HotelAppTheme.buildLightTheme().primaryColor,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
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
                        height: 42.0,
                        width: 42.0,
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
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'hotelData.subTxt',
                style: TextStyle(
                    fontSize: 14, color: Colors.grey.withOpacity(0.8)),
              ),
              const SizedBox(
                width: 4,
              ),
              Icon(
                Icons.map,
                size: 12,
                color: HotelAppTheme.buildLightTheme().primaryColor,
              ),
              Expanded(
                child: Text(
                  '100 km to city',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: 14, color: Colors.grey.withOpacity(0.8)),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Row(
              children: <Widget>[
                SmoothStarRating(
                  allowHalfRating: true,
                  starCount: 5,
                  rating: 10.0,
                  size: 20,
                  color: HotelAppTheme.buildLightTheme().primaryColor,
                  borderColor: HotelAppTheme.buildLightTheme().primaryColor,
                ),
                Text(
                  ' 10 Reviews',
                  style: TextStyle(
                      fontSize: 14, color: Colors.grey.withOpacity(0.8)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

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
