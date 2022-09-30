import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SavingsPage extends StatefulWidget {
  const SavingsPage({super.key});

  @override
  State<SavingsPage> createState() => _SavingsPageState();
}

class _SavingsPageState extends State<SavingsPage> {
  List _savings = [];

  @override
  void initState() {
    super.initState();
    readJson();
  }

  // Fetch content from the json file
  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('assets/savings_data.json');
    final data = await json.decode(response);
    setState(() {
      _savings = data["savings"];
    });
  }

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
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
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Savings",
                style: TextStyle(
                    fontSize: 30,
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 1.3,
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
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: ListView.builder(
                    itemCount: _savings.length,
                    itemBuilder: (BuildContext context, index) {
                      return ListTile(
                        title: Text(_savings[index]["name"]),
                        subtitle: Text(_savings[index]["date"]),
                        trailing: Text(_savings[index]["amount"]),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
