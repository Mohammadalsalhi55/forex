import 'package:flutter/material.dart';
import 'package:forex/componenet/button_widget.dart';
import 'package:forex/componenet/text_field_customer.dart';

class NumberCard extends StatefulWidget {
  const NumberCard({super.key});

  @override
  State<NumberCard> createState() => _NumberCardState();
}

class _NumberCardState extends State<NumberCard> {
  final cardNumberController = TextEditingController();
  final nameController = TextEditingController();
  final expiryController = TextEditingController();
  final cvvController = TextEditingController();

  bool isButtonEnabled = false;

  void checkFields() {
    setState(() {
      isButtonEnabled = cardNumberController.text.isNotEmpty &&
          nameController.text.isNotEmpty &&
          expiryController.text.isNotEmpty &&
          cvvController.text.isNotEmpty;
    });
  }

  @override
  void initState() {
    super.initState();
    cardNumberController.addListener(checkFields);
    nameController.addListener(checkFields);
    expiryController.addListener(checkFields);
    cvvController.addListener(checkFields);
  }

  @override
  void dispose() {
    cardNumberController.dispose();
    nameController.dispose();
    expiryController.dispose();
    cvvController.dispose();
    super.dispose();
  }

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
                value: 0.2,
                minHeight: 2,
                valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF613DE4)),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(bottom: size.height * 0.02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.06,
                  vertical: size.height * 0.015,
                ),
                child: Text(
                  "Add card",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: size.width * 0.065,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.06),
                child: Text(
                  "Enter your credit card info into the box below.",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: size.width * 0.038,
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.04), // قللنا
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.06),
                child: Text(
                  "Card Number",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: size.width * 0.04,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.06,
                  vertical: size.height * 0.008, // قللنا
                ),
                child: TextFieldCustomer(
                  svgLink: "assets/mastercard.svg",
                  hintText: "0000 0000 0000 0000",
                  keyboardType: TextInputType.number,
                  controller: cardNumberController,
                ),
              ),
              SizedBox(height: size.height * 0.025), // قللنا
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.06),
                child: Text(
                  "Name on Card",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: size.width * 0.04,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.06,
                  vertical: size.height * 0.008,
                ),
                child: TextFieldCustomer(
                  controller: nameController,
                  hintText: "NAME ON CARD",
                  keyboardType: TextInputType.text,
                ),
              ),
              SizedBox(height: size.height * 0.025),
              Row(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.07),
                    child: Text(
                      "Expiry Date",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: size.width * 0.04,
                      ),
                    ),
                  ),
                  SizedBox(width: size.width * 0.28), // قللنا
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.03),
                    child: Text(
                      "CVV",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: size.width * 0.04,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.06,
                        vertical: size.height * 0.008,
                      ),
                      child: TextFieldCustomer(
                        controller: expiryController,
                        hintText: "00/00",
                        keyboardType: TextInputType.datetime,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: EdgeInsets.only(right: size.width * 0.06),
                      child: TextFieldCustomer(
                        controller: cvvController,
                        hintText: "Ex: 0000",
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.19),
              Center(
                child: ButtonWidget(
                    text: 'Continue',
                    isEnabled: isButtonEnabled,
                    onTap: () {
                      String cardNumber = cardNumberController.text;
                      Navigator.pushNamed(
                        context,
                        '/verifycard',
                        arguments: cardNumber,
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
