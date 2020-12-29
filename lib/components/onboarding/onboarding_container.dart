import 'package:flutter/material.dart';
import 'package:mybday_app/constants/app_colors.dart';

class OnboardingContainer extends StatelessWidget {
  final String title;
  final String subTitle;
  final String imagePath;

  OnboardingContainer({this.title, this.subTitle, this.imagePath});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (ctx, constraints) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(30, 30, 30, 0),
              height: constraints.maxHeight * 0.60,
              child: Image.asset(
                imagePath,
                fit: BoxFit.scaleDown,
              ),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.01,
            ),
            Flexible(
              fit: FlexFit.tight,
              child: Container(
                height: constraints.maxHeight * 0.22,
                margin: EdgeInsets.fromLTRB(70, 5, 70, 0),
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 32 * MediaQuery.of(context).textScaleFactor,
                    color: slideTitle,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat Alternates',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.01,
            ),
            Flexible(
              fit: FlexFit.tight,
              child: Container(
                height: constraints.maxHeight * 0.12,
                margin: EdgeInsets.fromLTRB(60, 5, 60, 0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Flexible(
                    fit: FlexFit.tight,
                    child: Text(
                      subTitle,
                      textAlign: TextAlign.center,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        height: 1.5,
                        fontSize: 16,
                        color: slideDescription,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat Alternates',
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
