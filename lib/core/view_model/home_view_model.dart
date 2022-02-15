import 'package:ecommerce_with_mvvm/core/services/home_services.dart';
import 'package:ecommerce_with_mvvm/model/category_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeViewModel extends GetxController {
  List<CategoryModel> _categories = [];
  ValueNotifier<bool> loading = ValueNotifier<bool>(false);
  List<CategoryModel> get categories => _categories;
  int categoryLength = 0;

  HomeViewModel() {
    getAllCategories();
  }

  getAllCategories() async {
    loading.value = true;
    List<CategoryModel> cat =
        await HomeServices().fetchTheCategoryFromFirestore();
    _categories.addAll(cat);
    categoryLength = cat.length == null ? 0 : cat.length;

    loading.value = false;

    update();
  }
}
