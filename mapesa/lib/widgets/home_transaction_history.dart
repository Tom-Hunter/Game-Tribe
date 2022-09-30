import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeTransactionHistory extends StatefulWidget {
  const HomeTransactionHistory({super.key});

  @override
  State<HomeTransactionHistory> createState() => _HomeTransactionHistoryState();
}

class _HomeTransactionHistoryState extends State<HomeTransactionHistory> {
  List _transactions = [];

  @override
  void initState() {
    super.initState();
    readJson();
  }

  // Fetch content from the json file
  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('assets/transaction_data.json');
    final data = await json.decode(response);
    setState(() {
      _transactions = data["transactions"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Transaction History',
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
            child: ListView.builder(
                itemCount: _transactions.length,
                itemBuilder: (BuildContext context, index) {
                  return ListTile(
                    leading: Text(
                      _transactions[index]["type"],
                      style: TextStyle(color: Theme.of(context).primaryColor),
                    ),
                    title: Text(_transactions[index]["name"]),
                    subtitle: Text(_transactions[index]["date"]),
                    trailing: Text(_transactions[index]["amount"]),
                  );
                })),
      ],
    );
  }
}
