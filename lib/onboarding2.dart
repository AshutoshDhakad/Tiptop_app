import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'onboarding3.dart';


class OnBoarding2 extends StatefulWidget {
  @override
  _OnBoarding2State createState() => _OnBoarding2State();
}

class _OnBoarding2State extends State<OnBoarding2> {
  final PageController _pageController = PageController();
  int _currentPage =1;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Background Image
          Container(
            width: 400,
            height: 380,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/img_4.png'),
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 50),
                  child: SizedBox(
                    height: 400,
                    width: 300,
                    child: Image.asset('assets/images/img_3.png', scale: 3,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10, left: 20),
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Display ',
                          style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20),
                        ),
                        TextSpan(
                          text: 'Live Games',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        TextSpan(
                          text: ' as\na list',
                          style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 30, left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start, // Aligns text to the start
                    children: [
                      Text(
                        'Loren Ipsum is simply dummy text of the',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        'print and typesetting industry',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(

                child: Padding(padding: EdgeInsets.only(top:80, right: 260),
                  child: Positioned(
                    width: 34,
                    height: 34,
                    child: Center(
                      child: SmoothPageIndicator( controller: _pageController,
                        count: 3, // Number of pages
                        effect: const WormEffect(
                          activeDotColor: Colors.black,
                          dotColor: Colors.grey,
                          dotHeight: 8,
                          dotWidth: 8,
                        ),
                      ),
                    ),
                  ),
                ),

                ),
                Padding(padding: const EdgeInsets.only(left: 10),
                  child: TextButton(
                    style: ButtonStyle(
                      foregroundColor: WidgetStateProperty.all<Color>(Colors.black),
                    ),
                    onPressed: () { },
                    child: const Text('Skip'),
                  ),
                ),

                Padding(padding: const EdgeInsets.only(left: 300, ),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.black,
                    child: IconButton(
                      icon: const Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                      onPressed: () => Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) =>  OnBoarding3())),
                    ),
                  ),
                )

              ],
            ),
          ),
        ],
      ),
    );
  }
}