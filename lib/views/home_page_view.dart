import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/widgets/categories_listview.dart';
// import 'package:news_app_ui_setup/widgets/news_list_view_builder.dart';
import 'package:news_app_ui_setup/widgets/news_listview.dart';
import 'package:news_app_ui_setup/widgets/news_listview_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
       title: const Row( 
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("News"),
            Text(
              "Cloud",
              style: TextStyle(
                color: Colors.orange,
              ),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: CategoriesListView(),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 32,
              ),
            ),
            NewsListViewBuilder(),
            
          ],
        ),
      ),
    );
  }
}
