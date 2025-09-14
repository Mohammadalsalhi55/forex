import 'package:flutter/material.dart';
import 'package:forex/componenet/button_widget.dart';

class AddingCard extends StatelessWidget {
  const AddingCard({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
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
                    IconButton(
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                        size: 24,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.close,
                        color: Colors.black,
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
                backgroundColor: Colors.grey[300],
                valueColor:
                    const AlwaysStoppedAnimation<Color>(Color(0xFF613DE4)),
              ),
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            top: -50,
            right: -50,
            child: Image.asset(
              "assets/Group 39742.png",
              width: size.width * 0.4,
            ),
          ),
          Positioned(
            top: -50,
            left: -50,
            child: Image.asset(
              "assets/Group 39740.png",
              width: size.width * 0.5,
            ),
          ),
          Positioned(
            top: size.height * 0.28,
            left: -100,
            child: Image.asset(
              "assets/Vector 4.png",
              width: size.width * 0.9,
            ),
          ),
          Positioned(
            top: size.height * 0.45,
            left: -30,
            child: Image.asset(
              "assets/Vector 3.png",
              width: size.width * 0.45,
            ),
          ),
          Positioned(
            top: size.height * 0.75,
            left: -30,
            child: Image.asset(
              "assets/Vector 3.png",
              width: size.width * 0.45,
            ),
          ),
          Positioned(
            top: size.height * 0.63,
            right: -30,
            child: Image.asset(
              "assets/Group 39740.png",
              width: size.width * 0.4,
            ),
          ),
          Column(
            children: [
              SizedBox(height: size.height * 0.18),
              Center(
                child: Image.asset(
                  "assets/Adding card.png",
                  width: size.width * 0.65,
                ),
              ),
              SizedBox(height: size.height * 0.10),
              const Text(
                "Let’s add your card",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 18),
              const Text(
                "Experience the power of financial organization ",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.black87,
                ),
              ),
              const Text(
                "with our platform",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.black87,
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
