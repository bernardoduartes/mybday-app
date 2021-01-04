import 'package:flutter/material.dart';
import 'package:mybday_app/constants/app_colors.dart';

class SlideDots extends StatelessWidget {
  final bool _isActive;

  SlideDots(this._isActive);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8,
      width: 8,
      margin: EdgeInsets.only(left: 6, right: 6),
      child: DecoratedBox(
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: _isActive ? colorActive : colorInactive,
          borderRadius: BorderRadius.all(
            Radius.circular(16.0),
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
