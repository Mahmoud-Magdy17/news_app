import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/widgets/news_listview_builder.dart';

class CategoryView extends StatelessWidget {
  CategoryView({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: CustomScrollView(
        slivers: [
          NewsListViewBuilder(category: category,)
        ],
      )
    );
  }
}