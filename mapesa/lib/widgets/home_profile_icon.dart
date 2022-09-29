import 'package:mapesa/view/home_page.dart';
import 'package:mapesa/view/profile_page.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter/material.dart';

class HomeProfileIcon extends StatelessWidget {
  const HomeProfileIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            PageTransition(
                type: PageTransitionType.leftToRight,
                child: const ProfilePage()));
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          children: [
            CircleAvatar(
              backgroundColor: Theme.of(context).primaryColor,
              radius: 15,
              child: Icon(
                Icons.person,
                color: Theme.of(context).backgroundColor,
                size: 20,
              ),
            ),
            Text(
              'Hunter',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
