import 'package:flutter/material.dart';
import 'package:relative_scale/relative_scale.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
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
                Text(
                  "Settings",
                  style: TextStyle(
                      fontSize: sx(18),
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold),
                ),
              ]),
            ),
          ),
        );
      },
    );
  }
}
