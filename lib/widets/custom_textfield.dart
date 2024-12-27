import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  String? hintText;
   CustomTextfield({super.key,this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(

      decoration:  InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
        labelText:  hintText =="Abc" ? "hintText" :"xyz",
        border: OutlineInputBorder(),
        // errorText: _validate ? "Value Can't Be Empty" : null,
      ),

    );
  }
}
