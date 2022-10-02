import 'package:flutter/material.dart';
import 'package:mapesa/view/finance_pages/income_page.dart';
import 'package:page_transition/page_transition.dart';
import 'package:relative_scale/relative_scale.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

class HomeIncome extends StatelessWidget {
  const HomeIncome({super.key});

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sx, sy) {
        return WidgetAnimator(
          incomingEffect: WidgetTransitionEffects.incomingSlideInFromLeft(
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
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      child: const IncomePage(),
                      type: PageTransitionType.leftToRight));
            },
            child: Container(
              height: MediaQuery.of(context).size.width / 3.2,
              width: MediaQuery.of(context).size.width / 3.2,
              decoration: BoxDecoration(
                  color: Theme.of(context).backgroundColor,
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: [
                    BoxShadow(
                        color: const Color.fromARGB(103, 44, 44, 46),
                        spreadRadius: sx(2),
                        blurRadius: sx(8),
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
                        Icons.arrow_downward_rounded,
                        color: const Color(0xFF028A0F),
                        size: sx(15),
                        shadows: [
                          BoxShadow(
                              color: const Color.fromARGB(103, 44, 44, 46),
                              spreadRadius: sx(2),
                              blurRadius: sx(6),
                              offset: Offset(sx(2), sx(3)))
                        ],
                      ),
                      Text('Income',
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
                  Text('120,000.32',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: sx(14),
                        fontFamily: 'Century Gothic',
                      )),
                ],
              )),
            ),
          ),
        );
      },
    );
  }
}
