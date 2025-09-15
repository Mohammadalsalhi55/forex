import 'package:flutter/material.dart';
import 'package:forex/componenet/button_widget.dart';
import 'package:forex/componenet/text_field_customer.dart';

class SuccessfullyAdded extends StatelessWidget {
  const SuccessfullyAdded({super.key});

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
              const LinearProgressIndicator(
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
              vertical: size.height * 0.02,
            ),
            child: Container(
              height: size.height * 0.08,
              width: size.width * 1.0,
              color: Color(0xFF47C36F),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.check_circle_outline),
                    SizedBox(width: size.width * 0.02),
                    Text(
                      "Your card successfully added",
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.06,
              vertical: size.height * 0.02,
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
              vertical: size.height * 0.01,
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
