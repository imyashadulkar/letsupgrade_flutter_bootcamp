import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

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
            Text(
              "Yash Adulkar",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SizedBox(height: 5.0),
            Text("Flutter Trainer, Let'sUpgrade"),
            SizedBox(
              height: 10.0,
            ),
            ElevatedButton(
              onPressed: () {
                launchUrlString("https://letsupgrade.in");
              },
              child: Text(
                "Notes",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                  Colors.orange,
                ),
                padding: MaterialStatePropertyAll(
                  EdgeInsets.symmetric(
                    horizontal: 50,
                    vertical: 10,
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                launchUrlString(""); // drive link
              },
              child: Text(
                "Resume",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                  Colors.blue,
                ),
                padding: MaterialStatePropertyAll(
                  EdgeInsets.symmetric(
                    horizontal: 48,
                    vertical: 10,
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                launchUrlString("https://imyashadulkar.github.com");
              },
              child: Text(
                "Website",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                  Colors.black,
                ),
                padding: MaterialStatePropertyAll(
                  EdgeInsets.symmetric(
                    horizontal: 48,
                    vertical: 10,
                  ),
                ),
              ),
            ),
            Center(
              child: SizedBox(
                height: 70,
                width: 180,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        child: Image.asset(
                          "assets/facebook.png",
                          height: 20,
                          width: 20,
                        ),
                        onTap: () {
                          launchUrlString("https://facebook.com/");
                        },
                      ),
                      GestureDetector(
                        child: Image.asset(
                          "assets/github.png",
                          height: 20,
                          width: 20,
                        ),
                        onTap: () {
                          launchUrlString("https://github.com/imyashadulkar");
                        },
                      ),
                      InkWell(
                        child: Image.asset(
                          "assets/instagram.png",
                          height: 20,
                          width: 20,
                        ),
                        onTap: () {
                          launchUrlString("https://github.com/imyashadulkar");
                        },
                      ),
                      InkWell(
                        child: Image.asset(
                          "assets/twitter.png",
                          height: 20,
                          width: 20,
                        ),
                        onTap: () {
                          launchUrlString("https://github.com/imyashadulkar");
                        },
                      ),
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
