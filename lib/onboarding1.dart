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
            height: screenHeight * 0.50,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/img_1.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Overlay
          Container(
            color: Colors.black.withOpacity(0.1),
          ),
          // Content
             Padding(
              padding: const EdgeInsets.all(20.0),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: screenHeight * 0.55,
                    width: screenWidth * 0.83,
                    child: Image.asset('assets/images/img_2.png'),
                  ),
                  const SizedBox(height: 1),
                   Row(
                    children: [
                      Text(
                        "Choose Favorite",
                        style: TextStyle( fontFamily: 'poppins',
                          fontSize: screenWidth * 0.06,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 4),
                      Text(
                        "Leagues,",
                        style: TextStyle( fontFamily: 'poppins',
                          fontWeight: FontWeight.bold,
                          fontSize: screenWidth * 0.06,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 3),
                  Text(
                    "Sports Categories & Teams",
                    style: TextStyle( fontFamily: 'poppins',
                      fontSize: screenWidth * 0.06,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Loren Ipsum is simply dummy text of the',
                    style: TextStyle( fontFamily: 'poppins',
                      color: Colors.black,
                      fontSize: screenWidth * 0.03,
                    ),
                  ),
                  Text(
                    'print and typesetting industry',
                    style: TextStyle( fontFamily: 'poppins',
                      color: Colors.black,
                      fontSize: screenWidth * 0.03,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only( top: 140, ),
                  child: Row(
                    children: [
                      Column(
                        children: [
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
                          TextButton(
                            style: ButtonStyle(
                              foregroundColor: WidgetStateProperty.all<Color>(Colors.black),
                            ),
                            onPressed: () => Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => SelectLanguage()),
                            ),
                            child: const Text('Skip'
                              , style: TextStyle( fontFamily: 'poppins',),)
                            ,
                          ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(left: 210),
                      child: Align(
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

                              MaterialPageRoute(builder: (context) => OnBoarding2()
                              ),
                            ),
                          ),
                        ),
                      ),
                      ),
                    ],
                  ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}