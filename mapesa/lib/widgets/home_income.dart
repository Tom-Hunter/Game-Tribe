import 'package:flutter/material.dart';

class HomeIncome extends StatelessWidget {
  const HomeIncome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width / 3.2,
      width: MediaQuery.of(context).size.width / 3.2,
      decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
          borderRadius: BorderRadius.circular(100),
          boxShadow: const [
            BoxShadow(
                color: Color.fromARGB(103, 44, 44, 46),
                spreadRadius: 4,
                blurRadius: 6,
                offset: Offset(2.5, 3))
          ]),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(
            Icons.arrow_downward_rounded,
            color: Color(0xFF028A0F),
            size: 26,
            shadows: [
              BoxShadow(
                  color: Color.fromARGB(103, 44, 44, 46),
                  spreadRadius: 2,
                  blurRadius: 6,
                  offset: Offset(2.5, 3))
            ],
          ),
          Text('Income',
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 18,
                fontFamily: 'Century Gothic',
              )),
          Text('5971.32',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                fontFamily: 'Century Gothic',
              )),
        ],
      )),
    );
  }
}