import 'package:flutter/material.dart';
import 'package:tiptop_app/verify_account.dart';
import 'package:tiptop_app/widets/custom_textfield.dart';


class ForgetPassword extends StatefulWidget {
  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}
class _ForgetPasswordState extends State<ForgetPassword> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  String _email = 'tfg';

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
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Forget Password",
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
                    "No worries! Enter your email address below and"
                        "\nwe will send you a code to reset password",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                    child: CustomTextfield(hintText: "Email",
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "please enter your Email";
                      }
                      return null;
                    },
                      onSaved: (value) => _email = value!,
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
                      onPressed: () => Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => VerifyAccount())),
                      child: const Text(
                        "Send Reset Instruction",
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