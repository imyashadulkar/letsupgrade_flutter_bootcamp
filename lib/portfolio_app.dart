import 'package:flutter/material.dart';

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            CircleAvatar(
              radius: 70.0,
              backgroundImage: AssetImage('assets/Yash.jpg'),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text("I am Yash Adulkar. "),
            SizedBox(
              height: 5.0,
            ),
            Text("Today giving lec in Lets upgrade"),
            SizedBox(
              height: 10.0,
            ),
          ],
        ),
      ),
    );
  }
}
