import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/widgets/categories_listview.dart';
// import 'package:news_app_ui_setup/widgets/news_list_view_builder.dart';
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
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: CategoriesListView(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 32,
              ),
            ),
            NewsListViewBuilder(category: 'general',),
            
          ],
        ),
      ),
    );
  }
}
