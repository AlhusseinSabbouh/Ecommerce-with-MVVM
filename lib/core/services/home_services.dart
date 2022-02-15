import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_with_mvvm/model/category_model.dart';

class HomeServices {
  final CollectionReference _categoryCollectionRef =
      FirebaseFirestore.instance.collection('Categories');

  List<CategoryModel> _categories = [];

  Future<List<CategoryModel>> fetchTheCategoryFromFirestore() async {
    await _categoryCollectionRef.get().then((category) {
      for (int i = 0; i < category.docs.length; i++) {
        _categories.add(CategoryModel.fromJson(
            category.docs[i].data() as Map<String, dynamic>));
      }
    });
    return _categories;
  }
}
