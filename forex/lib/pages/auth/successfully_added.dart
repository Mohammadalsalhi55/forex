import 'package:flutter/material.dart';
import 'package:forex/componenet/button_widget.dart';
import 'package:forex/componenet/text_field_customer.dart';

class SuccessfullyAdded extends StatelessWidget {
  const SuccessfullyAdded({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Theme.of(context).colorScheme.inversePrimary,
                        size: 24,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
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
              const LinearProgressIndicator(
                backgroundColor: Colors.black,
                value: 1,
                minHeight: 2,
                valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF613DE4)),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.03,
              vertical: size.height * 0.015,
            ),
            child: Container(
              height: size.height * 0.07,
              width: size.width,
              color: const Color(0xFF47C36F),
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(Icons.check_circle_outline),
                    SizedBox(width: size.width * 0.02),
                    const Text("Your card successfully added"),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.06,
              vertical: size.height * 0.015,
            ),
            child: Text(
              "Card list",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: size.width * 0.065,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.06,
              vertical: size.height * 0.008,
            ),
            child: TextFieldCustomer(
              svgLink: "assets/mastercard.svg",
              hintText: "**** **** **** **34",
              keyboardType: TextInputType.number,
              controller: TextEditingController(),
              enabled: false,
            ),
          ),
          SizedBox(height: size.height * 0.45),
          Padding(
            padding: EdgeInsets.only(
                left: size.width * 0.06, bottom: size.height * 0.02),
            child: ButtonWidget(
              text: 'Add your card',
              icon: Icons.add,
              onTap: () {
                Navigator.pushNamed(context, "/cardnumber");
              },
            ),
          ),
        ],
      ),
    );
  }
}
