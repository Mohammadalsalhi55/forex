// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TextFieldCustomer extends StatelessWidget {
  String? svgLink;
  String hintText;
  TextEditingController controller;
  TextInputType? keyboardType;
  TextFieldCustomer({
    required this.hintText,
    required this.controller,
    super.key,
    this.svgLink,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: BorderSide(
            color: Color(0xFFD4D4D4),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: BorderSide(
            color: Color(0xFFD4D4D4),
            width: 2,
          ),
        ),
        hintText: hintText,
        hintStyle: TextStyle(color: Color(0xFFD4D4D4)),
        prefixIcon: svgLink != null
            ? Padding(
                padding: const EdgeInsets.all(12.0),
                child: SvgPicture.asset(
                  svgLink!,
                  width: 28,
                  height: 28,
                ),
              )
            : null,
      ),
      keyboardType: keyboardType,
    );
  }
}
