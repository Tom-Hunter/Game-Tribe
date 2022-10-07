import 'package:flutter/material.dart';
import 'package:mapesa/view/finance_pages/expense_page.dart';
import 'package:page_transition/page_transition.dart';
import 'package:relative_scale/relative_scale.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

class HomeExpense extends StatelessWidget {
  const HomeExpense({super.key});

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sx, sy) {
        return WidgetAnimator(
          incomingEffect: WidgetTransitionEffects.incomingSlideInFromRight(
            delay: const Duration(milliseconds: 1000),
            curve: Curves.easeInCubic,
            duration: const Duration(milliseconds: 1000),
          ),
          atRestEffect: WidgetRestingEffects.size(
            delay: const Duration(milliseconds: 3000),
            effectStrength: 1,
            duration: const Duration(milliseconds: 400),
            numberOfPlays: 1,
          ),
          child: Container(
            height: MediaQuery.of(context).size.width / 3.2,
            width: MediaQuery.of(context).size.width / 3.2,
            decoration: BoxDecoration(
                color: Theme.of(context).backgroundColor,
                borderRadius: BorderRadius.circular(100),
                boxShadow: [
                  BoxShadow(
                      color: const Color.fromARGB(103, 44, 44, 46),
                      spreadRadius: sx(4),
                      blurRadius: sx(6),
                      offset: Offset(sx(2.5), sx(3)))
                ]),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Material(
                child: InkWell(
                  highlightColor: Theme.of(context).primaryColor,
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            child: const ExpensePage(),
                            type: PageTransitionType.rightToLeft));
                  },
                  child: Ink(
                    height: MediaQuery.of(context).size.width / 3.2,
                    width: MediaQuery.of(context).size.width / 3.2,
                    decoration: BoxDecoration(
                        color: Theme.of(context).backgroundColor,
                        borderRadius: BorderRadius.circular(100),
                        boxShadow: [
                          BoxShadow(
                              color: const Color.fromARGB(103, 44, 44, 46),
                              spreadRadius: sx(4),
                              blurRadius: sx(6),
                              offset: Offset(sx(2.5), sx(3)))
                        ]),
                    child: Center(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.arrow_upward,
                              color: const Color.fromARGB(255, 189, 22, 10),
                              size: sx(15),
                              shadows: [
                                BoxShadow(
                                    color:
                                        const Color.fromARGB(103, 44, 44, 46),
                                    spreadRadius: sx(2),
                                    blurRadius: sx(6),
                                    offset: Offset(sx(2), sx(3)))
                              ],
                            ),
                            Text('Expenses',
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: sx(10),
                                  fontFamily: 'Century Gothic',
                                )),
                          ],
                        ),
                        SizedBox(
                          height: sx(2),
                        ),
                        Text('107,500.05',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: sx(14),
                              fontFamily: 'Century Gothic',
                            )),
                      ],
                    )),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
