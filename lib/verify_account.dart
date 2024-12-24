import 'package:flutter/material.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:tiptop_app/create_new_password.dart';

class VerifyAccount extends StatefulWidget {
  @override
  _VerifyAccountState createState() => _VerifyAccountState();
}
class _VerifyAccountState extends State<VerifyAccount> {
  final _pinPutController = TextEditingController();
  final pinController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(''),
        ),
        body: Container(
          padding: const EdgeInsets.only(top: 20, left: 16, right: 16,),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Verify Account",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  "Code has been send to johxxxx@gmail.com"
                      "\nEnter the code to verify your account",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                  ),
                ),
              ),
          Padding(padding:  EdgeInsets.only(top: 20),
          child: PinPut(
            fieldsCount: 6,
            onSubmit: (String pin) {
              // Handle the submitted PIN
            },
            submittedFieldDecoration: BoxDecoration(
              border: Border.all(color: Colors.black), // Black border for submitted fields
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          ),

              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween, // Use spaceBetween to push items to edges
                  children: <Widget>[
                    Expanded( // Use Expanded to take up available space
                      child: Text.rich(
                        TextSpan(
                          text: "Didn't get the code?",
                          children: <InlineSpan>[
                            TextSpan(
                              text: ' Resend it',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.orange,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Icon(
                      Icons.access_time_filled_rounded,
                      color: Colors.grey,
                      size: 24.0,
                    ),
                    Text("45s")
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40),
                child: Container(
                  width: 340,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ElevatedButton(
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
                    ),
                    // onPressed: () => Navigator.of(context)
                    //     .push(MaterialPageRoute(builder: (context) => VerifyAccount())),
                    onPressed: () => Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => CreateNewPassword())),
                    child: const Text(
                      "Verify Account",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}