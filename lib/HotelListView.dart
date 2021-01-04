import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

import 'hotel_app_theme.dart';

class HotelListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(8.0)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.grey.withOpacity(0.6),
            offset: const Offset(4, 4),
            blurRadius: 8,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(16.0)),
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 2.0,
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7gAuw2fdrz45GRotSZd3cbO-c3KSH-laIlQ&usqp=CAU',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  color: HotelAppTheme.buildLightTheme().backgroundColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 16,
                              top: 8,
                              bottom: 8,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'hotelData.titleTxt',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 22,
                                  ),
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'hotelData.subTxt',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.grey.withOpacity(0.8)),
                                    ),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Icon(
                                      Icons.map,
                                      size: 12,
                                      color: HotelAppTheme.buildLightTheme()
                                          .primaryColor,
                                    ),
                                    Expanded(
                                      child: Text(
                                        '100 km to city',
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontSize: 14,
                                            color:
                                                Colors.grey.withOpacity(0.8)),
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
                                        color: HotelAppTheme.buildLightTheme()
                                            .primaryColor,
                                        borderColor:
                                            HotelAppTheme.buildLightTheme()
                                                .primaryColor,
                                      ),
                                      Text(
                                        ' 10 Reviews',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color:
                                                Colors.grey.withOpacity(0.8)),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 16, top: 8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              '10',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 22,
                              ),
                            ),
                            Text(
                              '/per night',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey.withOpacity(0.8)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
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
                      color: HotelAppTheme.buildLightTheme().primaryColor,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
