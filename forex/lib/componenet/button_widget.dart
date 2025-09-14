// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  String text;
  IconData? icon;
  void Function()? onTap;
  final bool isEnabled;
  ButtonWidget({
    required this.text,
    this.icon,
    this.onTap,
    super.key,
    this.isEnabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: isEnabled ? onTap : null,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: isEnabled ? const Color(0xFF613DE4) : Color(0xFFF5F7FC)),
        width: 358,
        height: 40,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Colors.white,
                size: 20,
              ),
              const SizedBox(
                width: 8,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 18.0),
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: isEnabled ? Colors.white : const Color(0xFFD4D4D4),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
