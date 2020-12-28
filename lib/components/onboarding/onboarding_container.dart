import 'package:flutter/material.dart';

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
              height: constraints.maxHeight * 0.60,
              child: Image.asset(
                imagePath,
                fit: BoxFit.scaleDown,
              ),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.03,
            ),
            Flexible(
              fit: FlexFit.tight,
              child: Container(
                height: constraints.maxHeight * 0.22,
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 31,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.03,
            ),
            Container(
              height: constraints.maxHeight * 0.12,
              width: MediaQuery.of(context).size.width,
              child: Text(
                subTitle,
                textAlign: TextAlign.center,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
