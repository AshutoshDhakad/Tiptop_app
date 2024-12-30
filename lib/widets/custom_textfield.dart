import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  String? hintText;
  String? Function(dynamic value)? validator;
  Function(dynamic value)? onSaved;

CustomTextfield({super.key,this.hintText, this.validator, this.onSaved });

  @override
  Widget build(BuildContext context) {
    return TextFormField(

      decoration:  InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
        labelText:  hintText,
        border: const OutlineInputBorder(),
      ),
      validator: validator
    );
  }
}
