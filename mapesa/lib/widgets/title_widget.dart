import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'ma',
          style: TextStyle(
            color: Theme.of(context).secondaryHeaderColor,
            fontSize: 40,
            fontWeight: FontWeight.bold,
            fontFamily: 'Century Gothic',
            decoration: TextDecoration.underline,
            decorationStyle: TextDecorationStyle.solid,
            decorationThickness: 2,
          ),
        ),
        Text(
          'p',
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 55,
            fontWeight: FontWeight.normal,
            fontFamily: 'Century Gothic',
            decorationThickness: 2,
          ),
        ),
        Text(
          'esa',
          style: TextStyle(
            color: Theme.of(context).secondaryHeaderColor,
            fontSize: 40,
            fontWeight: FontWeight.bold,
            fontFamily: 'Century Gothic',
            decoration: TextDecoration.underline,
            decorationStyle: TextDecorationStyle.solid,
            decorationThickness: 2,
          ),
        ),
      ],
    );
  }
}
