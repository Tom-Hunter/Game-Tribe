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
        padding: const EdgeInsets.only(left: 30),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.width / 12,
              width: MediaQuery.of(context).size.width / 12,
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: const [
                    BoxShadow(
                        blurRadius: 7,
                        offset: Offset(2, 3),
                        spreadRadius: 3,
                        color: Colors.grey)
                  ]),
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
