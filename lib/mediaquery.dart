import 'package:flutter/material.dart';

class ResponsiveUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final isMobile = screenSize.width < 600;
    final isTablet = screenSize.width >= 600 && screenSize.width < 1200;

    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive UI Example'),
      ),
      body: Center(
        child: isMobile
            ? Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: screenSize.width * 0.8,
              height: 100,
              color: Colors.blue,
              child: Center(child: Text('Mobile Layout', style: TextStyle(color: Colors.white))),
            ),
            SizedBox(height: 20),
            Container(
              width: screenSize.width * 0.8,
              height: 100,
              color: Colors.green,
              child: Center(child: Text('Another Mobile Widget', style: TextStyle(color: Colors.white))),
            ),
          ],
        )
            : Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: isTablet ? screenSize.width * 0.4 : screenSize.width * 0.3,
              height: 200,
              color: Colors.blue,
              child: Center(child: Text('Tablet/Desktop Layout', style: TextStyle(color: Colors.white))),
            ),
            SizedBox(width: 20),
            Container(
              width: isTablet ? screenSize.width * 0.4 : screenSize.width * 0.3,
              height: 200,
              color: Colors.green,
              child: Center(child: Text('Another Tablet/Desktop Widget', style: TextStyle(color: Colors.white))),
            ),
          ],
        ),
      ),
    );
  }
}