import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:relative_scale/relative_scale.dart';

class LoansPage extends StatefulWidget {
  const LoansPage({super.key});

  @override
  State<LoansPage> createState() => _LoansPageState();
}

class _LoansPageState extends State<LoansPage> {
  //List to hold the income list temporarily
  List _loans = [];

  @override
  void initState() {
    super.initState();
    //readJson function init
    readJson();
  }

  // Fetch content from the json file
  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('assets/loans_data.json');
    final data = await json.decode(response);
    setState(() {
      _loans = data["loans"];
    });
  }

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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: sx(25),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
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
                      ),
                    ],
                  ),
                  SizedBox(
                    height: sx(10),
                  ),
                  Text(
                    "Loans",
                    style: TextStyle(
                        fontSize: sx(18),
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: sx(20),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 1.3,
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
                      ],
                    ),
                    child: ListView.builder(
                      itemCount: _loans.length,
                      itemBuilder: (BuildContext context, index) {
                        return ListTile(
                          leading: Text(
                            _loans[index]["interest"],
                            style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: sx(9)),
                          ),
                          title: Text(
                            _loans[index]["name"],
                            style: TextStyle(fontSize: sx(10)),
                          ),
                          subtitle: Text(
                            _loans[index]["date"],
                            style: TextStyle(
                                fontStyle: FontStyle.italic, fontSize: sx(8)),
                          ),
                          trailing: Text(
                            _loans[index]["amount"],
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: sx(10)),
                          ),
                        ); //List Tile to display the loan details
                      },
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
