import 'package:ecommerce_with_mvvm/core/view_model/auth_view_model.dart';
import 'package:ecommerce_with_mvvm/view/auth/login_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HomeView extends GetView<AuthViewModel> {
  GetStorage token = GetStorage();
  FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Page")),
      body: Center(
          child: ElevatedButton(
        child: Text("LogOut"),
        onPressed: () {
          token.write("email", "false");
          _auth.signOut();

          Get.offAll(LogInView());
        },
      )),
    );
  }
}
