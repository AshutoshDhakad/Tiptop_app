import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String? buttonText; // Changed variable name to follow Dart naming conventions
  final VoidCallback functionApply;

  const CustomElevatedButton({
    Key? key,
    this.buttonText,
    required this.functionApply,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
        backgroundColor: WidgetStateProperty.all<Color>(Colors.black),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      onPressed: () {
        functionApply();
      },
      child: Text(
        buttonText ?? 'Button',
        style: const TextStyle(fontSize: 16),
      ),
    );
  }
}