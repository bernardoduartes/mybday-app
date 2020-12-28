import 'package:flutter/material.dart';
import 'package:mybday_app/constants/app_colors.dart';

class OnboardingIndicator extends StatelessWidget {
  final bool _isActive;

  OnboardingIndicator(this._isActive);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: 10,
      margin: EdgeInsets.only(left: 5, right: 5),
      child: DecoratedBox(
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: _isActive ? colorActive : colorInactive,
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          ),
          border: Border.all(
            color: Colors.black26,
            width: 1.0,
          ),
        ),
      ),
    );
  }
}
