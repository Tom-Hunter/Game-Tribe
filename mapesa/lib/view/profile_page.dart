import 'package:flutter/material.dart';
import 'package:mapesa/view/finance_pages/expense_page.dart';
import 'package:mapesa/view/finance_pages/income_page.dart';
import 'package:mapesa/view/finance_pages/loans_page.dart';
import 'package:mapesa/view/finance_pages/savings_page.dart';
import 'package:mapesa/view/finance_pages/summary_page.dart';
import 'package:page_transition/page_transition.dart';
import 'package:relative_scale/relative_scale.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sx, sy) {
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
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                SizedBox(
                  height: sx(25),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Padding(
                        padding: EdgeInsets.only(left: sx(16)),
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          size: sx(20),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: sx(10),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: sx(30)),
                      child: Container(
                        height: MediaQuery.of(context).size.width / 3.5,
                        width: MediaQuery.of(context).size.width / 3.5,
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
                    ),
                  ],
                ),
                SizedBox(
                  height: sx(10),
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: sx(50)),
                      child: Text(
                        'Hunter',
                        style: TextStyle(
                            fontSize: sx(14),
                            color: Theme.of(context).primaryColor),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: sx(10),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 1.6,
                  width: MediaQuery.of(context).size.width / 1.2,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(94, 255, 255, 255),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: sx(7),
                            offset: Offset(sx(2), sx(3)),
                            spreadRadius: sx(3),
                            color: const Color.fromARGB(94, 158, 158, 158))
                      ]),
                  child: ListView(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: sx(5)),
                        child: ListTile(
                          leading: Text(
                            'Full Name:',
                            style: TextStyle(
                                fontSize: sx(12), fontFamily: 'Century Gothic'),
                          ),
                          title: Text(
                            'Mathew Mutua Mwangi',
                            style: TextStyle(
                                fontSize: sx(12),
                                fontFamily: 'Century Gothic',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      ListTile(
                        leading: Text(
                          'Telephone:',
                          style: TextStyle(
                              fontSize: sx(12), fontFamily: 'Century Gothic'),
                        ),
                        title: Text(
                          '+254712345678',
                          style: TextStyle(
                              fontSize: sx(12),
                              fontFamily: 'Century Gothic',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      ListTile(
                        leading: Text(
                          'Employer:',
                          style: TextStyle(
                            fontSize: sx(12),
                            fontFamily: 'Century Gothic',
                          ),
                        ),
                        title: Text(
                          'TechWise Solutions',
                          style: TextStyle(
                              fontSize: sx(12),
                              fontFamily: 'Century Gothic',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  child: const SummaryPage(),
                                  type: PageTransitionType.leftToRight));
                        },
                        child: ListTile(
                          leading: Text(
                            'Financial Summary',
                            style: TextStyle(
                                fontSize: sx(12), fontFamily: 'Century Gothic'),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            size: sx(16),
                          ),
                        ),
                      ),
                      const Divider(),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  child: const IncomePage(),
                                  type: PageTransitionType.leftToRight));
                        },
                        child: ListTile(
                          leading: Text(
                            'Income:',
                            style: TextStyle(
                                fontSize: sx(12), fontFamily: 'Century Gothic'),
                          ),
                          title: Text(
                            'KES. 1,560,000',
                            style: TextStyle(
                              fontSize: sx(12),
                              fontFamily: 'Century Gothic',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            size: sx(16),
                          ),
                        ),
                      ),
                      const Divider(),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  child: const ExpensePage(),
                                  type: PageTransitionType.bottomToTop));
                        },
                        child: ListTile(
                          leading: Text(
                            'Expense:',
                            style: TextStyle(
                                fontSize: sx(12), fontFamily: 'Century Gothic'),
                          ),
                          title: Text(
                            'KES. 107,500',
                            style: TextStyle(
                              fontSize: sx(12),
                              fontFamily: 'Century Gothic',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            size: sx(16),
                          ),
                        ),
                      ),
                      const Divider(),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  child: const SavingsPage(),
                                  type: PageTransitionType.leftToRight));
                        },
                        child: ListTile(
                          leading: Text(
                            'Savings:',
                            style: TextStyle(
                                fontSize: sx(12), fontFamily: 'Century Gothic'),
                          ),
                          title: Text(
                            'KES. 18,000',
                            style: TextStyle(
                              fontSize: sx(12),
                              fontFamily: 'Century Gothic',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            size: sx(16),
                          ),
                        ),
                      ),
                      const Divider(),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  child: const LoansPage(),
                                  type: PageTransitionType.leftToRight));
                        },
                        child: ListTile(
                          leading: Text(
                            'Loans:',
                            style: TextStyle(
                                fontSize: sx(12), fontFamily: 'Century Gothic'),
                          ),
                          title: Text(
                            'KES. 1,050,000',
                            style: TextStyle(
                              fontSize: sx(12),
                              fontFamily: 'Century Gothic',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            size: sx(16),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ),
        );
      },
    );
  }
}
