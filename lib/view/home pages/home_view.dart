import 'package:ecommerce_with_mvvm/constant.dart';
import 'package:ecommerce_with_mvvm/view/widget/custom_text.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  List<String> categoryName = <String>['smen', 's', 's', 's', 's', 's'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Padding(
          padding: EdgeInsets.only(top: 100, left: 20, right: 20),
          child: Column(
            children: [
              _seachTextFormField(),
              SizedBox(
                height: 20,
              ),
              CustomText(text: "categories", fontSize: 14),
              SizedBox(
                height: 20,
              ),
              _categoryList(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(text: "Best Selling", fontSize: 18),
                  CustomText(text: "See all", fontSize: 14)
                ],
              ),
              SizedBox(
                height: 20,
              ),
              _bestSellingList()
            ],
          ),
        ),
      ]),
    );
  }

  Widget _seachTextFormField() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: Colors.grey.shade200),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(
            Icons.search,
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  Widget _categoryList() {
    return Container(
      height: 100,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  width: 60,
                  height: 60,
                  child: Image.asset(
                    'assets/images/MenShoes.png',
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(90),
                      color: Colors.grey.shade400),
                ),
                CustomText(text: categoryName[index], fontSize: 15)
              ],
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              width: 20,
            );
          },
          itemCount: categoryName.length),
    );
  }

  Widget _bestSellingList() {
    return Container(
      height: 290,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
      ),
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(color: Colors.grey.shade200),
              width: 170,
              child: Column(
                children: [
                  SizedBox(
                    height: 4,
                  ),
                  Image.asset(
                    'assets/images/watch.png',
                    height: 200,
                    width: 220,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: CustomText(
                      text: "BeoPlay Speaker sdsd dsfsf",
                      fontSize: 22,
                    ),
                  ),
                  Expanded(
                    child: CustomText(
                      text: "Tag hour fdfdg dfsf dsf",
                      fontSize: 20,
                      color: Colors.grey.shade500,
                    ),
                  ),
                  CustomText(
                    text: "\$750",
                    fontSize: 20,
                    color: mainColor,
                  ),
                ],
              ),
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              width: 20,
            );
          },
          itemCount: categoryName.length),
    );
  }
}
