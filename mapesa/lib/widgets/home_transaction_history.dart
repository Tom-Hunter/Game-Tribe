import 'package:flutter/material.dart';

class HomeTransactionHistory extends StatelessWidget {
  const HomeTransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Transaction History:',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  fontFamily: 'Century Gothic',
                )),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
            height: MediaQuery.of(context).size.height / 1.9,
            width: MediaQuery.of(context).size.width / 1.2,
            decoration: BoxDecoration(
                color: const Color.fromARGB(94, 255, 255, 255),
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                      color: Color.fromARGB(94, 158, 158, 158),
                      spreadRadius: 2,
                      blurRadius: 6,
                      offset: Offset(2.5, 3))
                ]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
            ))
      ],
    );
  }
}
