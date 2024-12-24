import 'package:flutter/material.dart';
import 'package:tiptop_app/Loginpage.dart';

class SelectLanguage extends StatefulWidget {
  @override
  _SelectLanguageState createState() => _SelectLanguageState();
}

class _SelectLanguageState extends State<SelectLanguage> {
  final PageController _pageController = PageController();
  int? selectedLanguageIndex;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 300,
                decoration: const BoxDecoration(
                  color: Color(0xffF4F8FB),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(90),
                    bottomLeft: Radius.circular(90),
                  ),
                ),
              ),
              Expanded(child: Container()),
              Container(
                height: 300,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage('assets/images/img_8.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          const Positioned(
            top: 150,
            left: 15,
            child: Column(children: [
              Text(
                "Choose",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ]),
          ),
          const Positioned(
            top: 200,
            left: 15,
            child: Column(
              children: [
                Text(
                  "Your Language",
                  style: TextStyle(color: Colors.black, fontSize: 30),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 250),
            child: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: <Widget>[
                buildLanguageCard(0, "HI!\nI'm Sam", "English"),
                buildLanguageCard(1, "Hola!\nSoy Sam", "Spanish"),
                buildLanguageCard(2, "HI!\nI'm Sam", "English"),
                buildLanguageCard(3, "HI!\nI'm Sam", "English"),
              ],
            ),
          ),
          if (selectedLanguageIndex != null)
            Padding(
              padding: const EdgeInsets.only(top: 730, left: 12),
              child: Container(
                width: 340,
                height: 45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10)),
                child: ElevatedButton(
                  style: ButtonStyle(
                    foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                    backgroundColor: WidgetStateProperty.all<Color>(Colors.black),
                    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  onPressed: () => Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => LoginPage())),
                  child: const Text(
                    "Done",
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget buildLanguageCard(int index, String greeting, String language) {
    bool isSelected = selectedLanguageIndex == index;

    return InkWell(
      onTap: () {
        setState(() {
          selectedLanguageIndex = index;
        });
      },
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: isSelected ? Colors.black : Colors.transparent,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text.rich(
            TextSpan(
              text: greeting,
              style: const TextStyle(fontSize: 16, color: Colors.black),
              children: <InlineSpan>[
                TextSpan(
                  text: " \n\n\n\n $language",
                  style: const TextStyle(fontSize: 14, color: Colors.orange),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}