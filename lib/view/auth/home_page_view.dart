import 'package:ecommerce_with_mvvm/constant.dart';
import 'package:ecommerce_with_mvvm/view/widget/custom_button.dart';
import 'package:ecommerce_with_mvvm/view/widget/custom_social_buttom.dart';
import 'package:ecommerce_with_mvvm/view/widget/custom_text.dart';
import 'package:ecommerce_with_mvvm/view/widget/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: "Welcome,",
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
                CustomText(
                  text: "Sing in",
                  fontSize: 18,
                  color: mainColor,
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            CustomText(
                text: "Sign in to continue",
                fontSize: 14,
                color: Colors.grey.shade800),
            SizedBox(
              height: 35,
            ),
            CustonTextFormField(
                text: "Email",
                hintText: "iamdavid@gmail.com",
                onSaved: (value) {},
                validator: (value) {
                  return "";
                }),
            SizedBox(
              height: 30,
            ),
            CustonTextFormField(
                hintText: "*********",
                text: "password",
                onSaved: (value) {},
                validator: (value) {
                  return "";
                }),
            SizedBox(
              height: 20,
            ),
            CustomText(
              text: "Forget password",
              fontSize: 14,
              alignment: Alignment.topRight,
            ),
            SizedBox(
              height: 20,
            ),
            CustomButton(text: "SIGN IN", onPressed: () {}),
            SizedBox(
              height: 30,
            ),
            CustomText(
              text: "-OR-",
              fontSize: 20,
              alignment: Alignment.center,
            ),
            CustonSocialButtom(
                image: "googleIcon.png",
                onPressed: () {},
                text: "Sign in with google"),
            SizedBox(
              height: 10,
            ),
            CustonSocialButtom(
                image: "facbookIcon.png",
                onPressed: () {},
                text: "Sign with facebook")
          ],
        ),
      ),
    );
  }
}
