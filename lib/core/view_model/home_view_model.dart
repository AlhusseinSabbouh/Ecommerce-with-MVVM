import 'package:ecommerce_with_mvvm/core/services/home_services.dart';
import 'package:ecommerce_with_mvvm/model/category_model.dart';
import 'package:ecommerce_with_mvvm/model/product_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeViewModel extends GetxController {
  ValueNotifier<bool> loading = ValueNotifier<bool>(false);
  List<CategoryModel> _categories = [];
  List<CategoryModel> get categories => _categories;

  List<ProductModel> _products = [];
  List<ProductModel> get product => _products;

  int categoryLength = 0;
  int prodLength = 0;

  HomeViewModel() {
    getAllCategories();
    getAllBestSelling();
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

  getAllBestSelling() async {
    loading.value = true;

    List<ProductModel> prod =
        await HomeServices().fetchTheProductFromFirestore();
    _products.addAll(prod);
    prodLength = prod.length == null ? 0 : prod.length;

    loading.value = false;
  }
}
