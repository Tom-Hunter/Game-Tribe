import 'package:flutter/material.dart';
import 'package:mapesa/view/settings.dart';
import 'package:mapesa/widgets/home_expense.dart';
import 'package:mapesa/widgets/home_income.dart';
import 'package:mapesa/widgets/home_profile_icon.dart';
import 'package:mapesa/widgets/home_transaction_history.dart';
import 'package:mapesa/widgets/title_widget.dart';
import 'package:page_transition/page_transition.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
              const HomeProfileIcon(),
              const TitleWidget(), //Widget to display the app title
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: const Settings(),
                          type: PageTransitionType.rightToLeft));
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Icon(
                    Icons.settings,
                    color: Theme.of(context).primaryColor,
                    size: 30,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 1.195,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [HomeIncome(), HomeExpense()],
                ), //Row holding the income and expense balances
                const SizedBox(
                  height: 30,
                ),
                const HomeTransactionHistory(), //A widget to dispay the transaction history
              ],
            ),
          ),
        ],
      ),
    );
  }
}
