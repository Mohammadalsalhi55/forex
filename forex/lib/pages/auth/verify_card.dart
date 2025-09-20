import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:forex/componenet/button_widget.dart';

class VerifyCard extends StatefulWidget {
  const VerifyCard({super.key});

  @override
  State<VerifyCard> createState() => _VerifyCardState();
}

class _VerifyCardState extends State<VerifyCard> {
  String otpCode = "";
  bool isOtpValid = false;

  void checkOtp(String code) {
    setState(() {
      otpCode = code;
      isOtpValid = otpCode.length == 6;
    });
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
              LinearProgressIndicator(
                value: 0.8,
                minHeight: 2,
                valueColor:
                    const AlwaysStoppedAnimation<Color>(Color(0xFF613DE4)),
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
                  "Verify your card",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: size.width * 0.065,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.06),
                child: Text(
                  "We send 6 digits code to your number",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: size.width * 0.038,
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.04),
              OtpTextField(
                textStyle: const TextStyle(
                  color: Color(0xFF613DE4),
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
                numberOfFields: 6,
                enabledBorderColor: const Color(0xFFCDD5E9),
                borderColor: const Color(0xFF613DE4),
                showFieldAsBox: false,
                onCodeChanged: (String code) => checkOtp(code),
                onSubmit: (String verificationCode) =>
                    checkOtp(verificationCode),
              ),
              SizedBox(height: size.height * 0.025),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Didn’t get a code?",
                    style: TextStyle(fontSize: size.width * 0.04),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "\u00A0Resend",
                      style: TextStyle(
                        color: const Color(0xFF613DE4),
                        fontWeight: FontWeight.w400,
                        fontSize: size.width * 0.04,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.45),
              Center(
                child: ButtonWidget(
                  text: 'Verify',
                  isEnabled: isOtpValid,
                  onTap: () {
                    Navigator.pushNamed(context, '/successfullyadded');
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
