import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:relative_scale/relative_scale.dart';

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
    return RelativeBuilder(
      builder: (context, height, width, sx, sy) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: sx(30)),
                  child: Text('Transaction History',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: sx(12),
                        fontFamily: 'Century Gothic',
                      )),
                ),
              ],
            ),
            SizedBox(
              height: sx(10),
            ),
            Container(
                height: MediaQuery.of(context).size.height / 2.2,
                width: MediaQuery.of(context).size.width / 1.2,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(94, 255, 255, 255),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: const Color.fromARGB(94, 158, 158, 158),
                          spreadRadius: sx(2),
                          blurRadius: sx(6),
                          offset: Offset(sx(2.5), sx(3)))
                    ]),
                child: ListView.builder(
                    itemCount: _transactions.length,
                    itemBuilder: (BuildContext context, index) {
                      return ListTile(
                        leading: Text(
                          _transactions[index]["type"],
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: sx(9)),
                        ),
                        title: Text(_transactions[index]["name"],
                            style: TextStyle(fontSize: sx(10))),
                        subtitle: Text(_transactions[index]["date"],
                            style: TextStyle(
                                fontStyle: FontStyle.italic, fontSize: sx(8))),
                        trailing: Text(
                          _transactions[index]["amount"],
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: sx(10)),
                        ),
                      );
                    })),
          ],
        );
      },
    );
  }
}
