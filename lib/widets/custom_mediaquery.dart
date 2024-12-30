import 'package:flutter/material.dart';

class CustomMediaQuery extends StatelessWidget {
  final Widget child;

  const CustomMediaQuery({super.key, required this.child});


  double customWidth(BuildContext context, double fraction) {
    double screenWidth = MediaQuery.of(context).size.width;
    return screenWidth * fraction;
  }

  double customHeight(BuildContext context, double fraction) {
    double screenHeight = MediaQuery.of(context).size.height;
    return screenHeight * fraction;
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {

        return child;
      },
    );
  }
}
