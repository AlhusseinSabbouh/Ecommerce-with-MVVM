import 'package:ecommerce_with_mvvm/constant.dart';
import 'package:ecommerce_with_mvvm/core/view_model/login_view_model.dart';
import 'package:ecommerce_with_mvvm/view/auth/second_page.dart';
import 'package:ecommerce_with_mvvm/view/widget/custom_button.dart';
import 'package:ecommerce_with_mvvm/view/widget/custom_social_buttom.dart';
import 'package:ecommerce_with_mvvm/view/widget/custom_text.dart';
import 'package:ecommerce_with_mvvm/view/widget/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LogInView extends GetWidget<LogInViewModel> {
  final String route = '/login';

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
          child: Form(
            key: _formKey,
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
                    onSaved: (value) {
                      controller.email = value!;
                    },
                    validator: (value) {
                      if (value == null) print("error");
                      return "";
                    }),
                SizedBox(
                  height: 30,
                ),
                CustonTextFormField(
                    hintText: "*********",
                    text: "password",
                    onSaved: (value) {
                      controller.password = value!;
                    },
                    validator: (value) {
                      if (value == null) print("error");
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
                CustomButton(
                    text: "SIGN IN",
                    onPressed: () {
                      _formKey.currentState?.save();
                      print("password is " + controller.password);
                      print("email is " + controller.email);
                      print(_formKey.currentState!.validate());
                      if (!_formKey.currentState!.validate()) {
                        controller.SignInWithEmailAndPasswordMethod();
                      }
                    }),
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
                    onPressed: () {
                      print("he pressed log in with google");
                      controller.googleSignInMethod();
                    },
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
        ),
      ]),
    );
  }
}
