import 'package:flutter/material.dart';
import 'package:tiptop_app/registration_screen.dart';

class CreateNewPassword extends StatefulWidget {
  @override
  _CreateNewPasswordState createState() => _CreateNewPasswordState();
}
class _CreateNewPasswordState extends State<CreateNewPassword> {
  bool PasswordObsecured = true;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(''),
        ),
        body: Container(
          padding: const EdgeInsets.only(top: 20, left: 16, right: 16,),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Create New Password",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only( top: 20),
                  child: Text(
                    "Please enter and confirm you new password."
                        "\nYou will need to login after you reset",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 40),
                  child: TextFormField(
                    obscureText: PasswordObsecured,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: const OutlineInputBorder(),
                      suffixIcon: IconButton(onPressed: () {
                        setState(() {
                          PasswordObsecured = !PasswordObsecured;
                        });
                      },
                        icon: Icon(
                            PasswordObsecured ?
                            Icons.visibility_off_outlined : Icons.visibility_outlined ),
                    ),
                  ),
                    // validator: (value) {
                    //   if (value == null || value.isEmpty) {
                    //     return 'enter your email';
                    //   }
                    //   return null;
                    // },
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 20),
                  child: TextFormField(
                    obscureText: PasswordObsecured,
                    decoration: InputDecoration(
                      labelText: 'Confirm Password',
                      border: const OutlineInputBorder(),
                      suffixIcon: IconButton(onPressed: () {
                        setState(() {
                          PasswordObsecured = !PasswordObsecured;
                        });
                      },
                        icon: Icon(
                            PasswordObsecured ?
                            Icons.visibility_off_outlined : Icons.visibility_outlined ),
                      ),
                    ),

                  ),
                ),

                  Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Container(
                    width: 340,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
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
                      onPressed: () {
                          showDialog(
                              context: context,
                              builder: (ctxt) => AlertDialog(
                                title:  Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 120,
                                      height: 120,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage('assets/images/right_tick.png', ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    const Center(
                                      child: Text.rich(
                                        const TextSpan(
                                          text: "Password Created",
                                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black ),
                                          children: <InlineSpan>[
                                            TextSpan(
                                              text: " \nYour password has been created",
                                              style: TextStyle(fontSize: 10,color: Colors.black),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(padding: const EdgeInsets.only(top: 20),
                                        child: Container(
                                            width: 380,
                                            height: 50,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(0)
                                            ),
                                            child: ElevatedButton(

                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.black,
                                              ),
                                              onPressed: () {  },
                                              child: const Text('Back to login',
                                                style: TextStyle(

                                                    color: Colors.white),),
                                            ),
                                        )
                                    )
                                  ],
                                ),
                              )
                          );
                          },

                      child: const Text(
                        "Reset Password",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}