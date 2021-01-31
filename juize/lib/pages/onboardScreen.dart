import 'package:flutter/material.dart';
import 'package:juize/theme.dart';
import 'recipeScreen.dart';

class OnboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Stack(
        children: [
          Container(
            width: 420,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/onboarding_img.png')),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 700),
                Container(
                  width:
                      MediaQuery.of(context).size.width - (2 * defaultMargin),
                  height: 50,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RecipePage(),
                        ),
                      );
                    },
                    color: darkColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      "Let's Juize",
                      style: yellowText.copyWith(fontSize: 20),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 100),
                Text(
                  "Start up\nyour day",
                  style: onboardTextStyle.copyWith(fontSize: 48, height: 1.2),
                ),
                SizedBox(height: 20),
                Text(
                  "100+ smoothies recipes\nto smooth your day.",
                  style: onboardSmallTextStyle.copyWith(fontSize: 14, height: 1.2),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
