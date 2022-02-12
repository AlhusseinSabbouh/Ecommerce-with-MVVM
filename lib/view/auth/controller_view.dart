import 'package:ecommerce_with_mvvm/core/view_model/login_view_model.dart';
import 'package:ecommerce_with_mvvm/view/auth/login_view.dart';
import 'package:ecommerce_with_mvvm/view/home_view.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class ControllerView extends GetView<LogInViewModel> {
  GetStorage token = GetStorage();
  @override
  Widget build(BuildContext context) {
    print(token.read("email"));
    return Obx(() {
      return (controller.user == null) ? LogInView() : HomeView();
    });
  }
}
