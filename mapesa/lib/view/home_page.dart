import 'package:flutter/material.dart';
import 'package:mapesa/view/settings.dart';
import 'package:mapesa/widgets/home_expense.dart';
import 'package:mapesa/widgets/home_income.dart';
import 'package:mapesa/widgets/home_profile_icon.dart';
import 'package:mapesa/widgets/home_transaction_history.dart';
import 'package:mapesa/widgets/title_widget.dart';
import 'package:page_transition/page_transition.dart';
import 'package:relative_scale/relative_scale.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';
import 'finance_pages/summary_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return Scaffold(
          body: SafeArea(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: Theme.of(context).backgroundColor,
                image: const DecorationImage(
                    image: AssetImage('assets/wp-1.jpg'),
                    opacity: 0.2,
                    scale: 1.0,
                    alignment: Alignment.bottomCenter,
                    fit: BoxFit.fitHeight),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: sx(45)),
                        child: const TitleWidget(),
                      ),
                      const HomeProfileIcon(), //Widget to display the app title
                      // GestureDetector(
                      //   onTap: () {
                      //     Navigator.push(
                      //         context,
                      //         PageTransition(
                      //             child: const Settings(),
                      //             type: PageTransitionType.rightToLeft));
                      //   },
                      //   child: Padding(
                      //     padding: EdgeInsets.only(right: sx(35)),
                      //     child: Icon(
                      //       Icons.settings,
                      //       color: Theme.of(context).primaryColor,
                      //       size: sx(48),
                      //     ),
                      //   ),
                      // )
                    ],
                  ),
                  SizedBox(
                    height: sx(35),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 1.25,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: sx(20),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [HomeIncome(), HomeExpense()],
                        ), //Row holding the income and expense balances
                        SizedBox(
                          height: sx(40),
                        ),
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      child: const SummaryPage(),
                                      type: PageTransitionType.leftToRight));
                            },
                            child: Container(
                              height: MediaQuery.of(context).size.height / 23,
                              width: MediaQuery.of(context).size.width / 2,
                              decoration: BoxDecoration(
                                  color: Theme.of(context).secondaryHeaderColor,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                        color: const Color.fromARGB(
                                            94, 158, 158, 158),
                                        spreadRadius: sx(2),
                                        blurRadius: sx(6),
                                        offset: Offset(sx(2.5), sx(3)))
                                  ]),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Get Your Summary',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: sx(25),
                                          fontFamily: 'Century Gothic',
                                        )),
                                    SizedBox(
                                      width: sx(20),
                                    ),
                                    WidgetAnimator(
                                      atRestEffect: WidgetRestingEffects.pulse(
                                          duration: const Duration(
                                              milliseconds: 2000),
                                          effectStrength: 1,
                                          curve: Curves.elasticInOut),
                                      child: Padding(
                                        padding: EdgeInsets.only(top: sx(7)),
                                        child: Icon(
                                          Icons.arrow_forward_ios,
                                          color: Colors.white,
                                          size: sx(17),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )),
                        SizedBox(
                          height: sx(30),
                        ),
                        const HomeTransactionHistory(), //A widget to dispay the transaction history
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
