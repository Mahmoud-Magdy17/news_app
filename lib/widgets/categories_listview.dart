
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app_ui_setup/widgets/category_item_widget.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.h,
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(width: 16.w,),
        scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: ((context, index) =>
              CategoryItem(image: 'assets/technology.jpeg'))),
    );
  }
}
