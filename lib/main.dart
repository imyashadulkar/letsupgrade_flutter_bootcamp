import 'package:flutter/material.dart';
import 'package:letsupgrade_flutter_bootcamp/portfolio_app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PortfolioApp(),
    );
  }
}
