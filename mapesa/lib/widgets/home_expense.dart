import 'package:flutter/material.dart';
import 'package:mapesa/view/finance_pages/expense_page.dart';
import 'package:page_transition/page_transition.dart';

class HomeExpense extends StatelessWidget {
  const HomeExpense({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            PageTransition(
                child: const ExpensePage(),
                type: PageTransitionType.rightToLeft));
      },
      child: Container(
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
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.arrow_upward,
                  color: Color.fromARGB(255, 189, 22, 10),
                  size: 26,
                  shadows: [
                    BoxShadow(
                        color: Color.fromARGB(103, 44, 44, 46),
                        spreadRadius: 2,
                        blurRadius: 6,
                        offset: Offset(2.5, 3))
                  ],
                ),
                Text('Expenses',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 18,
                      fontFamily: 'Century Gothic',
                    )),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            const Text('107,500.05',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                  fontFamily: 'Century Gothic',
                )),
          ],
        )),
      ),
    );
  }
}
