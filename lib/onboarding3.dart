import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tiptop_app/select_language.dart';


class OnBoarding3 extends StatefulWidget {
  @override
  _OnBoarding3State createState() => _OnBoarding3State();
}

class _OnBoarding3State extends State<OnBoarding3> {
  final PageController _pageController = PageController(initialPage: 1);
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            width: 400,
            height: 380,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/img_5.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          Container(
            color: Colors.black.withOpacity(0.1),
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
                  child: Image.asset('assets/images/img_6.png',scale: 3,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10, left: 20),
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Daily tip ',
                        style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.bold, fontSize: 25),
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
                      style: TextStyle(fontFamily: 'Roboto',
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      'print and typesetting industry',
                      style: TextStyle(fontFamily: 'Roboto',
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),


              const SizedBox(
                height: 30,
              ),

              Padding(
                padding: const EdgeInsets.only(top: 120, left: 12),
                child: Container(
                  width: 340,
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: ElevatedButton(
                    style: ButtonStyle(
                        foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                        backgroundColor: WidgetStateProperty.all<Color>(Colors.black),
                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),

                            )
                        )
                    ),
                    onPressed: () => Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) =>  SelectLanguage())),
                    child: Text(
                        "Get Started".toUpperCase(),
                        style:  const TextStyle(fontSize: 14,fontFamily: 'Roboto',)
                    ),
                  ),
                ),
              ),
                ]
                )

              ],
            ),
          );

  }
}