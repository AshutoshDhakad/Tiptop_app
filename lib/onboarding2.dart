import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tiptop_app/select_language.dart';
import 'onboarding3.dart';


class OnBoarding2 extends StatefulWidget {
  @override
  _OnBoarding2State createState() => _OnBoarding2State();
}

class _OnBoarding2State extends State<OnBoarding2> {
  final PageController _pageController = PageController(initialPage: 1);
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            children: [
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
              Column(
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
                            style: TextStyle(fontWeight: FontWeight.normal, fontSize: 25, fontFamily: 'DMSans',),
                          ),
                          TextSpan(
                            text: 'Live Games',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, fontFamily: 'DMSans'),
                          ),
                          TextSpan(
                            text: ' as\na list',
                            style: TextStyle(fontFamily: 'DMSans',fontWeight: FontWeight.normal, fontSize: 25),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10, left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start, // Aligns text to the start
                      children: [
                        Text(
                          'Loren Ipsum is simply dummy text of the',
                          style: TextStyle(fontFamily: 'DMSans',
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          'print and typesetting industry',
                          style: TextStyle(fontFamily: 'DMSans',
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(padding: const EdgeInsets.only(top:140, left: 10),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Positioned(
                              width: 34,
                              height: 34,
                              child: Center(
                                child: SmoothPageIndicator( controller: _pageController,
                                  count: 3, // Number of pages
                                  effect: const ExpandingDotsEffect(
                                    activeDotColor: Colors.black,
                                    dotColor: Colors.grey,
                                    dotHeight: 8,
                                    dotWidth: 8,
                                  ),
                                ),
                              ),
                            ),
                            Padding(padding: const EdgeInsets.only(left: 10),
                              child: TextButton(
                                style: ButtonStyle(
                                  foregroundColor: WidgetStateProperty.all<Color>(Colors.black),
                                ),
                                onPressed: () => Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) =>  SelectLanguage())),
                                child: const Text('Skip',
                                  style: TextStyle(fontFamily: 'DMSans'),),
                              ),
                            ),
                          ],
                        ),
                        Padding(padding: const EdgeInsets.only(left: 220,),
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
            ],
          ),
        ],
      ),
    );
  }
}