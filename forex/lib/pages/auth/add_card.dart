import 'package:flutter/material.dart';
import 'package:forex/componenet/button_widget.dart';
import 'package:forex/componenet/my_drawer.dart';

class AddingCard extends StatelessWidget {
  const AddingCard({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: AppBar(
          backgroundColor: Theme.of(context).colorScheme.background,
          automaticallyImplyLeading: false,
          elevation: 0,
          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Builder(
                      builder: (context) {
                        return IconButton(
                          icon: Icon(
                            Icons.menu,
                            color: Theme.of(context).colorScheme.inversePrimary,
                          ),
                          onPressed: () {
                            Scaffold.of(context).openDrawer();
                          },
                        );
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.close,
                        color: Theme.of(context).colorScheme.inversePrimary,
                        size: 24,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              LinearProgressIndicator(
                value: 0.1,
                minHeight: 2,
                backgroundColor: Theme.of(context).colorScheme.secondary,
                valueColor:
                    const AlwaysStoppedAnimation<Color>(Color(0xFF613DE4)),
              ),
            ],
          ),
        ),
      ),
      drawer: MyDrawer(),
      body: Stack(
        children: [
          Positioned(
            top: -50,
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
          Column(
            children: [
              SizedBox(height: size.height * 0.16),
              Center(
                child: Image.asset(
                  isDark
                      ? "assets/Adding card dark.png"
                      : "assets/Adding card.png",
                  width: size.width * 0.65,
                ),
              ),
              SizedBox(height: size.height * 0.08),
              Text(
                "Let’s add your card",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                "Experience the power of financial organization ",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              Text(
                "with our platform",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              SizedBox(height: size.height * 0.05),
              ButtonWidget(
                text: 'Add your card',
                icon: Icons.add,
                onTap: () {
                  Navigator.pushNamed(context, "/cardnumber");
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
