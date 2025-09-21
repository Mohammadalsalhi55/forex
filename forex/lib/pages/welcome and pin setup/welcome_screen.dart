import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:forex/componenet/button_widget.dart';
import 'package:forex/componenet/my_drawer.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.background,
          title: Padding(
            padding: EdgeInsets.only(
                top: size.height * 0.02, left: size.width * 0.65),
            child: Text(
              "skip",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.background,
        drawer: MyDrawer(),
        body: Stack(children: [
          Positioned(
            top: -100,
            right: -50,
            child: Image.asset(
              isDark ? "assets/Vector 3 (1).png" : "assets/Group 39742.png",
              width: size.width * 0.4,
            ),
          ),
          Positioned(
            top: -50,
            left: -50,
            child: Image.asset(
              isDark ? "assets/Vector 1.png" : "assets/Group 39740.png",
              width: size.width * 0.5,
            ),
          ),
          Positioned(
            top: size.height * 0.28,
            left: -100,
            child: Image.asset(
              isDark ? "assets/Vector 4 (1).png" : "assets/Vector 4.png",
              width: size.width * 0.9,
            ),
          ),
          Positioned(
            top: size.height * 0.45,
            left: -30,
            child: Image.asset(
              isDark ? "assets/Vector 3 (2).png" : "assets/Vector 3.png",
              width: size.width * 0.45,
            ),
          ),
          Positioned(
            top: size.height * 0.75,
            left: -30,
            child: Image.asset(
              isDark ? "assets/Group 39745.png" : "assets/Vector 3.png",
              width: size.width * 0.45,
            ),
          ),
          Positioned(
            top: size.height * 0.63,
            right: -30,
            child: Image.asset(
              isDark ? "assets/Vector 1 (1).png" : "assets/Group 39740.png",
              width: size.width * 0.4,
            ),
          ),
          Positioned(
            top: size.height * 0.12,
            left: size.width * 0.170,
            child: SvgPicture.asset(
              isDark
                  ? "assets/Welcome Screen.svg"
                  : "assets/Welcome Screen light.svg",
              width: size.width * 0.70,
            ),
          ),
          Positioned(
            top: size.height * 0.59,
            left: size.width * 0.1,
            child: SizedBox(
              width: size.width * 0.8,
              child: Text(
                "Your account has been\nsuccessfully created!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
            ),
          ),
          Positioned(
            top: size.height * 0.80,
            left: size.width * 0.1,
            child: SizedBox(
              width: size.width * 0.8,
              child: ButtonWidget(
                text: 'Get Started',
                icon: Icons.add,
                onTap: () {
                  Navigator.pushNamed(context, "/addingcard");
                },
              ),
            ),
          ),
        ]));
  }
}
