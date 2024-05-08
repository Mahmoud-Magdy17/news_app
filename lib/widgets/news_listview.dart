import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app_ui_setup/widgets/news_item_widget.dart';

class NewsListView extends StatelessWidget {
  NewsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(

      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (contect, index) {
        return const NewsItem(
          image:
              'https://unsplash.com/photos/two-white-vases-with-red-flowers-in-them-7T12an8w_hQ',
          title: 'dskfjdkfj fksdajfklds wekwl weew wejjrle eekewk sdfkl',
          discription: 'Hello',
        );
      },
      separatorBuilder: (context, index) => SizedBox(height: 32.h),
      itemCount: 10,
    );
  }
}
