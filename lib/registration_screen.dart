import 'package:flutter/material.dart';
import 'package:tiptop_app/widets/custom_textfield.dart';

import 'forget_password.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}
class _RegistrationScreenState extends State<RegistrationScreen> {
  final _formKey = GlobalKey<FormState>();

  String _email = '';
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      appBar: AppBar(
        title: const Text('', style: TextStyle(color: Colors.white),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Row(
                  children: [
                    Text(
                      "Let's Register Account",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      " ",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Text(
                  "Hello user, you have a greateful journey",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),

                child: Material(
                  elevation: 1,
                  child: CustomTextfield(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: TextFormField(
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                    labelText: 'Enter email id',
                    border: OutlineInputBorder(),
                    // errorText: _validate ? "Value Can't Be Empty" : null,
                  ),

                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                  onSaved: (value) => _email = value!,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: TextFormField(
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                    labelText: 'Dob(Optional)',
                    border: OutlineInputBorder(),
                    // errorText: _validate ? "Value Can't Be Empty" : null,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: TextFormField(
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                    labelText: 'Password',
                    border: const OutlineInputBorder(),

                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscureText ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Password cannot be empty";
                    } else if (value.length < 6) {
                      return "Password length should be atleast 6";
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: TextFormField(
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                    labelText: 'Confirm Password',
                    border: const OutlineInputBorder(),

                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscureText ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Password cannot be empty";
                    } else if (value.length < 6) {
                      return "Password length should be atleast 6";
                    }
                    return null;
                  },
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(Icons.check_box_outline_blank),
                    Expanded(
                      child: Text.rich(
                        TextSpan(
                          text: " By continuing, you agree to our",
                          children: <InlineSpan>[
                            TextSpan(
                              text: ' Terms of service ',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 14,
                                color: Colors.lightBlueAccent,
                              ),
                            ),
                            TextSpan(
                              text: 'and'
                            ),
                            TextSpan(
                              text: ' privacy policy',
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                fontSize: 14,
                                color: Colors.lightBlueAccent
                              )
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  width: 380,
                  height: 50,
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
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
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
                                        text: "Sign in Successful !",
                                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black ),
                                        children: <InlineSpan>[
                                          TextSpan(
                                            text: " \n You,re logged in. Let's get Started!",
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
                                            onPressed: () {

                                            },
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.black,
                                            ),
                                            child: const Text('Continue',
                                              style: TextStyle(
                                                  color: Colors.white),),
                                          )
                                      )
                                  )
                                ],
                              ),
                            )
                        );}
                    },
                    child: const Text(
                        "Create Account",
                        style:  TextStyle(fontSize: 14)
                    ),
                  ),
                ),
              ),
              const Padding(padding: EdgeInsets.only(top: 15,left: 45),
                child: Text(
                  "____________  or sign in with  ____________",
                  style: TextStyle(color:
                  Colors.black, fontSize: 12),),
              ),
             Padding(padding: const EdgeInsets.only(top: 10, left: 55),
              child: Row(
               children: [
                Container(
                 width: 50,
                 height: 50,
                 decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/google-logo.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              Padding(padding: const EdgeInsets.only( left: 20),
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/facebook-logo.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(padding: const EdgeInsets.only(left: 20),

                child: Card(

                  elevation: 3,
                  child: Container(

                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/Apple-logo.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
               ]
              ),
             ),

              Padding(padding: const EdgeInsets.only(top: 10, left: 50,),
                child:  Row(
                    children: [
                      const Center(
                        child: Text("Already have an account?",
                          style: TextStyle(fontSize: 14,
                          fontWeight: FontWeight.bold),),

                      ),
                      TextButton(
                        onPressed: () => Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) => RegistrationScreen())),

                        child: const Text('Register',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              fontSize: 14,
                              color: Colors.orange),),
                      )
                    ]
                 ),
                ),
               ]
              ),
             ),
            ),
          );
  }

}