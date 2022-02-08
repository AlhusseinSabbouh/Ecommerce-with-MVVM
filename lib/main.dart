import 'package:ecommerce_with_mvvm/view/auth/login_view.dart';
import 'package:ecommerce_with_mvvm/view/auth/second_page.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [GetPage(name: SecondPage().route, page: () => SecondPage())],
      debugShowCheckedModeBanner: false,
      home: LogInView(),
    );
  }
}
