import 'package:flutter/material.dart';
import 'package:relative_scale/relative_scale.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sx, sy) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'ma',
              style: TextStyle(
                color: Theme.of(context).secondaryHeaderColor,
                fontSize: sx(22),
                fontWeight: FontWeight.bold,
                fontFamily: 'Century Gothic',
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.solid,
                decorationThickness: sx(1),
              ),
            ),
            Text(
              'p',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: sx(34),
                fontWeight: FontWeight.normal,
                fontFamily: 'Century Gothic',
                decorationThickness: sx(1),
              ),
            ),
            Text(
              'esa',
              style: TextStyle(
                color: Theme.of(context).secondaryHeaderColor,
                fontSize: sx(22),
                fontWeight: FontWeight.bold,
                fontFamily: 'Century Gothic',
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.solid,
                decorationThickness: sx(1),
              ),
            ),
          ],
        );
      },
    );
  }
}
