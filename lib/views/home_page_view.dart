import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app_ui_setup/widgets/categories_listview.dart';
import 'package:news_app_ui_setup/widgets/news_item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Row(
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
      body: Column(
        children: [
          CategoriesListView(),
          SizedBox(height: 16,),
          NewsItem(image:'https://unsplash.com/photos/two-white-vases-with-red-flowers-in-them-7T12an8w_hQ' ,title:  'dskfjdkfj fksdajfklds wekwl weew wejjrle eekewk sdfkl', discription: 'Hello'),
        ],
      ),
    );
  }
}
