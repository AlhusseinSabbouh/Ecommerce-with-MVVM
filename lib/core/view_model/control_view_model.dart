import 'package:ecommerce_with_mvvm/view/home%20pages/account_view.dart';
import 'package:ecommerce_with_mvvm/view/home%20pages/cart_view.dart';
import 'package:ecommerce_with_mvvm/view/home%20pages/home_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ControlViewModel extends GetxController {
  int _selectedNavigator = 0;

  Widget _currentScreen = HomeView();

  Widget get currentScreen => _currentScreen;

  int get selectedNavigator => _selectedNavigator;

  void changeSelectedNavigator(int navigatorIndex) {
    _selectedNavigator = navigatorIndex;
    switch (navigatorIndex) {
      case 0:
        {
          _currentScreen = HomeView();
          break;
        }
      case 1:
        {
          _currentScreen = CartView();
          break;
        }
      case 2:
        {
          _currentScreen = AccountView();
          break;
        }
    }

    update();
  }
}
