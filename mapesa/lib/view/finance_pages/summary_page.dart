import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:relative_scale/relative_scale.dart';

class SummaryPage extends StatefulWidget {
  const SummaryPage({super.key});

  @override
  State<SummaryPage> createState() => _SummaryPageState();
}

final colorList = [
  const Color(0xFF028A0F),
  const Color.fromARGB(255, 189, 22, 10),
  const Color.fromARGB(255, 43, 56, 233),
  const Color(0xFF603E22),
];

class _SummaryPageState extends State<SummaryPage> {
  Map<String, double> dataMap = {
    "Income": 4,
    "Expenses": 3.8,
    "Savings": 0.2,
    "Loans": 2,
  };

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, width, height, sx, sy) {
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
                Text(
                  "Monthly Summary",
                  style: TextStyle(
                      fontSize: sx(18),
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: sx(20),
                ),
                PieChart(
                  dataMap: dataMap,
                  animationDuration: const Duration(milliseconds: 1000),
                  chartLegendSpacing: sx(26),
                  chartRadius: MediaQuery.of(context).size.width / 2.8,
                  initialAngleInDegree: 180,
                  colorList: colorList,
                  chartType: ChartType.ring,
                  ringStrokeWidth: sx(20),
                  centerText: 'Summary',
                  legendOptions: const LegendOptions(
                    showLegendsInRow: true,
                    legendPosition: LegendPosition.bottom,
                    showLegends: true,
                    legendShape: BoxShape.circle,
                    legendTextStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  chartValuesOptions: const ChartValuesOptions(
                    showChartValueBackground: true,
                    showChartValues: true,
                    showChartValuesInPercentage: true,
                    showChartValuesOutside: false,
                    decimalPlaces: 1,
                  ),
                ),
                SizedBox(
                  height: sx(12),
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
                              blurRadius: sx(7),
                              offset: Offset(sx(2.5), sx(3)))
                        ]),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: sx(12),
                          ),
                          Text(
                            'Financial Management Tips',
                            style: TextStyle(
                              fontSize: sx(9),
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Century Gothic',
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: sx(12),
                          ),
                          Padding(
                            padding: EdgeInsets.all(sx(6)),
                            child: Text(
                              'Always save 25% of your income. Save first, spend later.',
                              style: TextStyle(
                                fontSize: sx(9),
                                fontFamily: 'Century Gothic',
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Text(
                            '~',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: sx(12)),
                          ),
                          Padding(
                            padding: EdgeInsets.all(sx(6)),
                            child: Text(
                              'Set financial goals to avoid overspending.',
                              style: TextStyle(
                                  fontSize: sx(9),
                                  fontFamily: 'Century Gothic',
                                  fontStyle: FontStyle.italic),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Text(
                            '~',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: sx(12)),
                          ),
                          Padding(
                            padding: EdgeInsets.all(sx(6)),
                            child: Text(
                              'Try and invest in some ventures which will earn you passive income.',
                              style: TextStyle(
                                fontSize: sx(9),
                                fontFamily: 'Century Gothic',
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Text(
                            '~',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: sx(12)),
                          ),
                          Padding(
                            padding: EdgeInsets.all(sx(6)),
                            child: Text(
                              'Always have a budget and stick to it.',
                              style: TextStyle(
                                  fontSize: sx(9),
                                  fontFamily: 'Century Gothic',
                                  fontStyle: FontStyle.italic),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Text(
                            '~',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: sx(12)),
                          ),
                          Padding(
                            padding: EdgeInsets.all(sx(6)),
                            child: Text(
                              'Never borrow money for pleasure or entertainment.',
                              style: TextStyle(
                                fontSize: sx(9),
                                fontFamily: 'Century Gothic',
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Text(
                            '~',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: sx(12)),
                          ),
                          Padding(
                            padding: EdgeInsets.all(sx(6)),
                            child: Text(
                              'Avoid debts at all costs.',
                              style: TextStyle(
                                  fontSize: sx(9),
                                  fontFamily: 'Century Gothic',
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Text(
                            '~',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: sx(12)),
                          ),
                          Padding(
                            padding: EdgeInsets.all(sx(6)),
                            child: Text(
                              'Cushion yourself against emergencies like sickness, accidents or job loss',
                              style: TextStyle(
                                fontSize: sx(9),
                                fontFamily: 'Century Gothic',
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            height: sx(20),
                          ),
                        ],
                      ),
                    )),
              ]),
            ),
          ),
        );
      },
    );
  }
}
