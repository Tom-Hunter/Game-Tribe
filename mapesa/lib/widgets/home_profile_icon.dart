import 'package:mapesa/view/profile_page.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter/material.dart';
import 'package:relative_scale/relative_scale.dart';

class HomeProfileIcon extends StatelessWidget {
  const HomeProfileIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sx, sy) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                PageTransition(
                    type: PageTransitionType.rightToLeft,
                    child: const ProfilePage()));
          },
          child: Padding(
            padding: EdgeInsets.only(right: sx(20), top: sx(10)),
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.width / 11,
                  width: MediaQuery.of(context).size.width / 11,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: sx(7),
                            offset: Offset(sx(2), sx(3)),
                            spreadRadius: sx(3),
                            color: Colors.grey)
                      ]),
                  child: Image.asset(
                    'assets/mapesa_user_icon.png',
                    scale: 1,
                    alignment: Alignment.center,
                  ),
                ),
                Text(
                  'Hunter',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: sx(8),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
