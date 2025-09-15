// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TextFieldCustomer extends StatelessWidget {
  String? svgLink;
  String? hintText;
  TextEditingController controller;
  TextInputType? keyboardType;
  bool enabled;
  TextFieldCustomer({
    this.hintText,
    required this.controller,
    super.key,
    this.svgLink,
    this.keyboardType,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      enabled: enabled,
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: BorderSide(
            color: Color(0xFFD4D4D4),
          ),
        ),
        hintText: hintText,
        hintStyle: TextStyle(
          color: enabled
              ? Color(0xFFD4D4D4)
              : Theme.of(context).colorScheme.inversePrimary,
        ),
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
