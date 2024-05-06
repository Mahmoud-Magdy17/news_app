import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app_ui_setup/models/category_model.dart';
import 'package:news_app_ui_setup/widgets/category_item_widget.dart';

class CategoriesListView extends StatelessWidget {
  CategoriesListView({
    super.key,
  });
  List<CategoryElement> items = [
    CategoryElement(
      name: 'General',
      image: 'assets/General.png',
    ),
    CategoryElement(
      image: 'assets/technology.jpeg',
      name: 'Technology',
    ),
    CategoryElement(
      name: 'entertainment',
      image: 'assets/entertaiment.avif',
    ),
    CategoryElement(
      name: 'Health',
      image: 'assets/health.avif',
    ),
    CategoryElement(
      name: 'Science',
      image: 'assets/science.avif',
    ),
    CategoryElement(
      name: 'Sports',
      image: 'assets/sports.jpg',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.h,
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(
          width: 16.w,
        ),
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: ((context, index) => CategoryItem(
              image: items[index].image,
              name: items[index].name,
            )),
      ),
    );
  }
}
