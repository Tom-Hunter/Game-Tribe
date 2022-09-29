import 'package:flutter/material.dart';
import 'package:mapesa/view/finance_pages/expense_page.dart';
import 'package:mapesa/view/finance_pages/income_page.dart';
import 'package:mapesa/view/finance_pages/loans_page.dart';
import 'package:mapesa/view/finance_pages/savings_page.dart';
import 'package:page_transition/page_transition.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
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
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      size: 30,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: MediaQuery.of(context).size.width / 3.5,
              width: MediaQuery.of(context).size.width / 3.5,
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
                size: 90,
                color: Theme.of(context).backgroundColor,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Hunter',
              style: TextStyle(
                  fontSize: 30, color: Theme.of(context).primaryColor),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 1.6,
              width: MediaQuery.of(context).size.width / 1.2,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(94, 255, 255, 255),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                        blurRadius: 7,
                        offset: Offset(2, 3),
                        spreadRadius: 3,
                        color: Color.fromARGB(94, 158, 158, 158))
                  ]),
              child: ListView(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 15.0),
                    child: ListTile(
                      leading: Text(
                        'Full Name:',
                        style: TextStyle(
                            fontSize: 20, fontFamily: 'Century Gothic'),
                      ),
                      title: Text(
                        'Mathew Mutua Mwangi',
                        style: TextStyle(
                            fontSize: 20, fontFamily: 'Century Gothic'),
                      ),
                    ),
                  ),
                  const ListTile(
                    leading: Text(
                      'Telephone:',
                      style:
                          TextStyle(fontSize: 20, fontFamily: 'Century Gothic'),
                    ),
                    title: Text(
                      '+254712345678',
                      style:
                          TextStyle(fontSize: 20, fontFamily: 'Century Gothic'),
                    ),
                  ),
                  const ListTile(
                    leading: Text(
                      'Employer:',
                      style:
                          TextStyle(fontSize: 20, fontFamily: 'Century Gothic'),
                    ),
                    title: Text(
                      'TechWise Solutions',
                      style:
                          TextStyle(fontSize: 20, fontFamily: 'Century Gothic'),
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
                    child: const ListTile(
                      leading: Text(
                        'Income:',
                        style: TextStyle(
                            fontSize: 20, fontFamily: 'Century Gothic'),
                      ),
                      title: Text(
                        'KES. 120,000',
                        style: TextStyle(
                            fontSize: 20, fontFamily: 'Century Gothic'),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
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
                              type: PageTransitionType.leftToRight));
                    },
                    child: const ListTile(
                      leading: Text(
                        'Expense:',
                        style: TextStyle(
                            fontSize: 20, fontFamily: 'Century Gothic'),
                      ),
                      title: Text(
                        'KES. 100,000',
                        style: TextStyle(
                            fontSize: 20, fontFamily: 'Century Gothic'),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
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
                    child: const ListTile(
                      leading: Text(
                        'Savings:',
                        style: TextStyle(
                            fontSize: 20, fontFamily: 'Century Gothic'),
                      ),
                      title: Text(
                        'KES. 20,000',
                        style: TextStyle(
                            fontSize: 20, fontFamily: 'Century Gothic'),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
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
                    child: const ListTile(
                      leading: Text(
                        'Loans:',
                        style: TextStyle(
                            fontSize: 20, fontFamily: 'Century Gothic'),
                      ),
                      title: Text(
                        'KES. 30,000',
                        style: TextStyle(
                            fontSize: 20, fontFamily: 'Century Gothic'),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
            )
            // CircleAvatar(
            //   radius: MediaQuery.of(context).size.width / 6,
            //   backgroundColor: Theme.of(context).secondaryHeaderColor,
            // )
          ]),
        ),
      ),
    );
  }
}
