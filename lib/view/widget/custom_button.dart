import 'package:ecommerce_with_mvvm/constant.dart';
import 'package:ecommerce_with_mvvm/view/widget/custom_text.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function()? onPressed;

  CustomButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
      ),
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(mainColor),
              padding:
                  MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(20)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              )))
/*           style: ElevatedButton.styleFrom(
              primary: mainColor, padding: EdgeInsets.all(18)) */
          ,
          onPressed: onPressed,
          child: CustomText(
            text: text,
            fontSize: 15,
            color: Colors.white,
            alignment: Alignment.center,
          )),
    );
  }
}
