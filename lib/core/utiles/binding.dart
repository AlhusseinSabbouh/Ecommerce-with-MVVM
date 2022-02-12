import 'package:ecommerce_with_mvvm/core/view_model/auth_view_model.dart';
import 'package:get/get.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthViewModel(), fenix: true);
  }
}
