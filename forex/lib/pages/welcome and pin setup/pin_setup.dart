import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:forex/componenet/button_widget.dart';

class PinSetup extends StatefulWidget {
  const PinSetup({super.key});

  @override
  State<PinSetup> createState() => _PinSetupState();
}

class _PinSetupState extends State<PinSetup> {
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
              const LinearProgressIndicator(
                value: 0.7,
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
                  "Create passcode",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: size.width * 0.065,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.06),
                child: Text(
                  "This info needs to be accurate with your ID document.",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: size.width * 0.038,
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.04),
              OtpTextField(
                numberOfFields: 6,
                enabledBorderColor: const Color(0xFFCDD5E9),
                borderColor: const Color(0xFF613DE4),
                disabledBorderColor: const Color(0xFF613DE4),
                showFieldAsBox: false,
                textStyle: const TextStyle(
                  color: Color(0xFF613DE4),
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
                onCodeChanged: (String code) => checkOtp(code),
                onSubmit: (String verificationCode) =>
                    checkOtp(verificationCode),
              ),
              SizedBox(height: size.height * 0.50),
              Center(
                child: ButtonWidget(
                  text: 'Create',
                  isEnabled: isOtpValid,
                  onTap: () {
                    Navigator.pushNamed(context, '/verifycard');
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
