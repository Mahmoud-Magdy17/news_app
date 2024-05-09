import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/widgets/news_item_widget.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: 10,
        (context, index) {
          return const NewsItem(
            image:
                'https://unsplash.com/photos/two-white-vases-with-red-flowers-in-them-7T12an8w_hQ',
            title: 'dskfjdkfj fksdajfklds wekwl weew wejjrle eekewk sdfkl',
            discription: 'Hello',
          );
        },
      ),
    );
  }
}
