import 'package:flutter/material.dart';

class CustomElevatedbutton extends StatelessWidget {
  String? Text;

  CustomElevatedbutton({super.key, this.Text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        foregroundColor: WidgetStateProperty.all<Color>(
            Colors.white),
        backgroundColor: WidgetStateProperty.all<Color>(
            Colors.black),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),  onPressed: () {}, child: null, // Empty onPressed action


      // onPressed: () => Navigator.of(context)
      //    .push(MaterialPageRoute(builder: (context) => CreateNewPassword())),
      // child: const Text(
      //   "Verify Account",
      //   style: TextStyle(fontSize: 16),
      // ),
    );
  }
}
