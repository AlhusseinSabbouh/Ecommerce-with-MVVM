import 'package:ecommerce_with_mvvm/view/widget/custom_text.dart';
import 'package:flutter/material.dart';

class CustonTextFormField extends StatelessWidget {
  final String text;
  final Function(String?)? onSaved;
  final String hintText;
  final String Function(String?)? validator;

  CustonTextFormField(
      {required this.text,
      required this.onSaved,
      required this.validator,
      required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CustomText(
            text: text,
            fontSize: 14,
            color: Colors.grey,
          ),
          TextFormField(
            decoration: InputDecoration(
                hintText: hintText,
                hintStyle: TextStyle(fontSize: 18),
                fillColor: Colors.white),
            onSaved: onSaved,
            validator: validator,
          )
        ],
      ),
    );
  }
}
