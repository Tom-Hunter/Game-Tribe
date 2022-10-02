import 'package:flutter/material.dart';
import 'package:mapesa/view/app_onboarding.dart';
import 'package:mapesa/view/home_page.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.remove();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mapesa',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: const Color(0xFF2C2C2E),
          backgroundColor: Colors.white,
          // const Color(0xFFD4D0C6),
          secondaryHeaderColor: const Color(0xFF603E22),
          colorScheme:
              ColorScheme.fromSeed(seedColor: const Color(0xFF603E22))),
      home: const MyHomePage(title: 'Mapesa'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: OnboardingScreen(),
      ),
    );
  }
}
