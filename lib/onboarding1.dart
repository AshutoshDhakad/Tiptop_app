import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tiptop_app/onboarding2.dart';
import 'package:tiptop_app/select_language.dart';

class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Background Image
          Container(
            width: screenWidth,
            height: screenHeight * 0.4,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/img_1.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Overlay
          Container(
            color: Colors.black.withOpacity(0.2),
          ),
          // Content
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: screenHeight * 0.8,
                    width: screenWidth * 0.8,
                    child: Image.asset('assets/images/img_2.png'),
                  ),
                  const SizedBox(height: 10),
                   Row(
                    children: [
                      Text(
                        "Choose Favorite",
                        style: TextStyle(
                          fontSize: screenWidth * 0.05,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 4),
                      Text(
                        "Leagues",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    "Sports Categories & Teams",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    'Loren Ipsum is simply dummy text of the',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                  const Text(
                    'print and typesetting industry',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(height: 80),
                  Center(
                    child: SmoothPageIndicator(
                      controller: _pageController,
                      count: 3,
                      effect: const ExpandingDotsEffect(
                        activeDotColor: Colors.black,
                        dotColor: Colors.grey,
                        dotHeight: 8,
                        dotWidth: 8,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextButton(
                    style: ButtonStyle(
                      foregroundColor: WidgetStateProperty.all<Color>(Colors.black),
                    ),
                    onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SelectLanguage()),
                    ),
                    child: const Text('Skip'),
                  ),
                  const SizedBox(
                      height: 20),
                  Align(
                    alignment: Alignment.centerRight,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.black,
                      child: IconButton(
                        icon: const Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                        onPressed: () => Navigator.of(context).push(

                          MaterialPageRoute(builder: (context) => OnBoarding2()),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}